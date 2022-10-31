import 'package:flutter/material.dart';

import 'widgets/button.widget.dart';
import 'widgets/login_text.widget.dart';
import 'widgets/tinder_logo.widget.dart';

class TinderLoginPage extends StatelessWidget {
  const TinderLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(25),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerRight,
              colors: [
                Color(0XFFEC7163),
                Color(0XFFEB5E6B),
                Color(0XFFE94B76),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              TinderLogoWidget(),
              SizedBox(
                height: 80,
              ),
              LoginTextWidget(),
              SizedBox(
                height: 30,
              ),
              ButtonWidget(
                text: 'SIGN IN WITH APPLE',
                assetIcon: 'assets/images/apple_icon.svg',
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'SIGN IN WITH FACEBOOK',
                assetIcon: 'assets/images/facebook_icon.svg',
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'SIGN IN WITH PHONE NUMBER',
                assetIcon: 'assets/images/mobile_icon.svg',
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Trouble Signing In?',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Britanica', fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
