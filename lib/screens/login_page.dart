// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sized_box_for_whitespace

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/signin_button.dart';
import 'package:flutter_ui/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: FadeInDown(
                    duration: Duration(milliseconds: 600),
                    child: Image.asset(
                      "assets/images/loginimg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Hello",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      "Sign Into your account",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 40, right: 40, left: 40),
                    child: MyTextField(
                      context: context,
                      hintText: "Email...",
                      icon: Icons.mail,
                      isPass: false,
                    ),
                  ),
                ),
                FadeInDown(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 40, left: 40),
                    child: MyTextField(
                      context: context,
                      hintText: "Password...",
                      icon: Icons.password,
                      isPass: true,
                    ),
                  ),
                ),
                FadeInDown(
                  child: Container(
                    padding: EdgeInsets.only(right: 15, top: 15),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Color.fromARGB(255, 219, 21, 54),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeInDown(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SignInButton()
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
