import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kcal_app/presentation/screens/home_screen.dart';
import 'package:kcal_app/presentation/widgets/Kcal_text_input_feild.dart';
import 'package:kcal_app/presentation/widgets/kcal_button.dart';

class SignUpScreen extends StatelessWidget {
  static const String route = '/sign_up';
  SignUpScreen({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey();

  String email = '';
  String userName = '';
  String password = '';
  String confirmPassword = '';
  String auth = '';

  bool isSignup() {
    if (auth == 'signup') {
      return true;
    } else {
      return false;
    }
  }

  Future<void> _submit(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      _formKey.currentState!.save();
      if (isSignup()) {
        try {
          await _auth.createUserWithEmailAndPassword(
              email: email, password: password);
          Navigator.pushReplacementNamed(context, HomeScreen.route);
        } catch (e) {
          //print(e);
        }
      } else {
        try {
          await _auth.signInWithEmailAndPassword(
              email: email, password: password);
          Navigator.pushReplacementNamed(context, HomeScreen.route);
        } catch (e) {
          //print(e);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    auth = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 44.h,
              left: 90.w,
              right: 90.w,
            ),
            child: SvgPicture.asset(
              'assets/images/kcal.svg',
              fit: BoxFit.cover,
              height: 34.h,
              width: 68.w,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            isSignup() ? 'Sign In' : 'Login',
            style: TextStyle(
              fontFamily: 'Signika',
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff91C788),
            ),
          ),
          Form(
            key: _formKey,
            child: Expanded(
              child: ListView(
                children: [
                  if (isSignup() == true)
                    KcalTextInputFeild(
                      obscureText: false,
                      title: 'Name',
                      onSave: (value) {
                        userName = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty || value.length < 4) {
                          return 'please unput the username';
                        }
                        return null;
                      },
                    ),
                  KcalTextInputFeild(
                    obscureText: false,
                    title: 'E-Mail',
                    onSave: (value) {
                      email = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                  ),
                  KcalTextInputFeild(
                    obscureText: true,
                    title: 'Password',
                    onSave: (value) {
                      password = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty || value.length < 6) {
                        return 'the password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  if (isSignup() == true)
                    KcalTextInputFeild(
                      obscureText: true,
                      title: 'confirm password',
                      onSave: (value) {
                        confirmPassword = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty || confirmPassword != password) {
                          return 'password and confirm password must be match.';
                        }
                        return null;
                      },
                    ),
                  SizedBox(height: 40.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w),
                    child: KcalButton(
                        title: 'Get Started',
                        onPressed: () async {
                          await _submit(context);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
