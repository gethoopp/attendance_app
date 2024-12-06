import 'package:attendance_app/extension/string_validate.dart';
import 'package:attendance_app/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05, top: size.height * 0.2),
                  child: Text.rich(
                    TextSpan(
                        text: ' Welcome Back (logo) \n ',
                        style: GoogleFonts.outfit(
                            fontSize: 25, fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                              text: 'to ',
                              style: GoogleFonts.outfit(
                                  fontSize: 25, fontWeight: FontWeight.w800)),
                          TextSpan(
                              text: 'HR Attendee',
                              style: GoogleFonts.outfit(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: const Color.fromARGB(255, 7, 76, 196)))
                        ]),
                  ),
                ),
              ]),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.06, top: size.height * 0.02),
                    child: Text(
                      'Hello There, Login to Continue',
                      style: GoogleFonts.outfit(color: Colors.grey),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: Column(
                  children: [
                    buttonLogin(size,
                        text: 'Email',
                        obs: false,
                        controll: emailContoller,
                        validator: (text) => text.validateEmail,
                        onChanged: (value) {
                          setState(() {
                            emailContoller.text = value;
                          });
                          return value;
                        }),
                    const SizedBox(height: 20),
                    buttonLogin(size,
                        text: 'Password',
                        obs: true,
                        controll: passContoller,
                        validator: (text) => text.validatePassword,
                        onChanged: (value) {
                          setState(() {
                            passContoller.text = value;
                          });
                          return value;
                        }
                        
                        )
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: size.width * 0.1, top: size.height * 0.02),
                  child: Text(
                    'Forgot Password ?',
                    style: GoogleFonts.outfit(color: Colors.blue),
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              buttonLoginTap(
                  size,
                  text: 'Login',
                  colorbtn: Colors.blue,
                  Colors.blue,
                  textColor: Colors.white),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.02),
                child: Text(
                  'Or continue with social account',
                  style: GoogleFonts.outfit(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.03),
                child: buttonLoginTap(
                    size,
                    text: 'Google',
                    colorbtn: Colors.transparent,
                    null,
                    textColor: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Didn't have account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Register',
                      style: GoogleFonts.outfit(color: Colors.blue),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
