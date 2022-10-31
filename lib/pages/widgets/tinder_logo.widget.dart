import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TinderLogoWidget extends StatelessWidget {
  const TinderLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const assetName = 'assets/images/tinder_logo.svg';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          assetName,
          color: Colors.white,
          width: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          'tinder',
          style: TextStyle(
            fontFamily: 'Britania',
            fontSize: 60,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
