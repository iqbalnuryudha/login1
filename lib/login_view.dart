import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/register_view.dart';
import 'package:login/theme.dart';
import 'package:login/widgets/custom_checkbox.dart';
import 'package:login/widgets/primary_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Image.asset(
                    'assets/images/ars.png',
                    width: 250,
                    height: 100,
                  )
                ],
              ),
              SizedBox(height: 48,),
              Form(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: heading6.copyWith(color: textGrey),
                              border: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ),
                      ),
                      SizedBox(height: 32,),
                      Container(
                        decoration: BoxDecoration(
                            color: textWhiteGrey,
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: TextFormField(
                          obscureText: !passwordVisible,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: heading6.copyWith(color: textGrey),
                              suffixIcon: IconButton(
                                color: textGrey,
                                splashRadius: 1,
                                icon: Icon(passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                                onPressed: togglePassword,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none
                              )
                          ),
                        ),
                      )
                    ],
                  )
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                  SizedBox(width: 12,),
                  Text('Remember me', style: regular16pt,)
                ],
              ),
              SizedBox(height: 32,),
              CustomPrimaryButton(
                buttonColor: primaryBlue,
                textValue: 'Login',
                textColor: Colors.white,
              ),
              SizedBox(height: 15,),
              Center(
                child: Text(
                  'Or',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
              SizedBox(height: 15,),
              CustomPrimaryButton(
                buttonColor: colorLight,
                textValue: 'Login with Google',
                textColor: textBlack,
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Belum punya akun? ',
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()
                          )
                      );
                    },
                    child: Text(
                      'Register',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}