import 'package:flutter/material.dart';
import 'package:map/core/components/buttons/main_button.dart';
import 'package:map/core/components/inputs/input.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class ReservationInfo extends StatelessWidget {
  const ReservationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: getHeight(812.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getHeight(35.0), bottom: getHeight(35.0)),
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/Stepper.png",
                      width: getWidth(155.0),
                      height: getHeight(36.0),
                    ),
                  ),
                ),
                RoundedInputField(hintText: "First Name", onChanged: (v) {}),
                RoundedInputField(hintText: "Last Name", onChanged: (v) {}),
                RoundedInputField(hintText: "Email Address", onChanged: (v) {}),
                RoundedInputField(hintText: "Address", onChanged: (v) {}),
                RoundedInputField(hintText: "Post Code", onChanged: (v) {}),
                RoundedInputField(hintText: "Country", onChanged: (v) {}),
                RoundedInputField(hintText: "Mobile Phone", onChanged: (v) {}),
                SizedBox(
                  height: getHeight(40.0),
                ),
                RoundedButton(text: "Go to Payment", press: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
