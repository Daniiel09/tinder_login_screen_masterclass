import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWidget extends StatefulWidget {
  final String text;
  final String assetIcon;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.assetIcon,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: InkWell(
          onTap: () {},
          highlightColor: Colors.grey,
          splashColor: Colors.grey,
          child: Container(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SvgPicture.asset(
                  widget.assetIcon,
                  height: 20,
                ),
                Expanded(
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Britanica',
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
