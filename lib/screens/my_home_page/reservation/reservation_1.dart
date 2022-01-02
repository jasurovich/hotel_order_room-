import 'package:flutter/material.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class ReservationInfo extends StatelessWidget {
  const ReservationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Reservation",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getWidth(28.0),
              color: blackColor),
        ),
      ),
    );
  }
}
