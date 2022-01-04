import 'package:flutter/material.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: getHeight(70.0),
      width: getWidth(350.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(getWidth(10.0)),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: getWidth(22.0)),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
    );
  }
}
