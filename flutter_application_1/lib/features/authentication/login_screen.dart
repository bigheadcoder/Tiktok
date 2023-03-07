import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/gaps.dart';
import 'package:flutter_application_1/constants/sizes.dart';
import 'package:flutter_application_1/features/authentication/widget/auth_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onSignUpTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: const [
              Gaps.v80,
              Text(
                "Log up the TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              Text(
                "Manage your account, check notifcations, comment on videos, and more.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              Authbutton(
                  icon: FaIcon(FontAwesomeIcons.user),
                  text: "Use email and password"),
              Gaps.v16,
              Authbutton(
                  icon: FaIcon(FontAwesomeIcons.apple),
                  text: "Continue with Apple"),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade50,
          elevation: 2, //선만들기
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                ),
                Gaps.h5,
                GestureDetector(
                  onTap: () => _onSignUpTap(context),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
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
