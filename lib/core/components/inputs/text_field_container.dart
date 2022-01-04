import 'package:flutter/material.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        bottom: getHeight(18.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(20.0),
      ),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}