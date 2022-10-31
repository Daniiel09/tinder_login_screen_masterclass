import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        text: 'By tapping Create Account or Sign In, you agree to our ',
        style: TextStyle(
          fontFamily: 'Britanica',
          color: Colors.white,
          fontSize: 15,
        ),
        children: [
          TextSpan(
            text: 'Terms.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' Learn how we process your data in our ',
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ' end '),
          TextSpan(
            text: 'Cookies Policy.',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
