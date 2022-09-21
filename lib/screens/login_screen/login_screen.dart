import 'package:flutter/material.dart';
import 'package:oddo_app/components/button.dart';

import '../../components/form.dart';
import '../../components/signin_google_button.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("images/logo/logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  MyTextFormField(
                    hintText: "Email",
                    icon: Icons.person,
                    iconColor: Colors.grey.shade800,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyTextFormField(
                    hintText: "Password",
                    icon: Icons.lock_open_outlined,
                    iconColor: Colors.grey.shade800,
                    obscureText: true,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              MyButton(
                bordercolor: Colors.transparent,
                color: Colors.white,
                name: 'Login',
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => HomePage()));
                },
                subSolor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              SignupGoogleButton(
                color: Colors.black,
                name: 'Sign in with google',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => HomePage(),
                    ),
                  );
                },
                subSolor: Colors.white,
                bordercolor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
