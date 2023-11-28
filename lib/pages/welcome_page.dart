import 'package:chat_bae/constants/colors_const.dart';
import 'package:chat_bae/pages/login_page.dart';
import 'package:chat_bae/pages/register_page.dart';
import 'package:chat_bae/widgets/logo.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [AppColors.dark, AppColors.darkest],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChatBaeLogo(size: 120),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Welcome in Chat Bae",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  color: AppColors.light,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 4.0, bottom: 36.0),
              child: Text(
                "Connect to people around the world and make friends, find your bae. Exchange photos,videos and more securely.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.light,
                ),
              ),
            ),
            SizedBox(
              width: 240.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.darkest,
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: AppColors.light,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 240.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  AppColors.light,
                )),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: AppColors.darkest,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
