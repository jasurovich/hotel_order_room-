import 'package:flutter/material.dart';
import 'package:map/core/components/buttons/main_button.dart';
import 'package:map/core/components/inputs/input.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/providers/credit_card_save.dart';
import 'package:map/responsive/size_config.dart';
import 'package:provider/provider.dart';

class ReservationCardInfo extends StatelessWidget {
  const ReservationCardInfo({Key? key}) : super(key: key);

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
      body: SizedBox(
        height: getHeight(812.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: getHeight(35.0), bottom: getHeight(35.0)),
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/Stepper2.png",
                    width: getWidth(155.0),
                    height: getHeight(36.0),
                  ),
                ),
              ),
              Stack(
                children: [
                  Ink(
                    width: getWidth(339.0),
                    height: getHeight(198.0),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(
                        getWidth(10.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Ink(
                      width: getWidth(200.0),
                      height: getHeight(198.0),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(getWidth(50.0)),
                            bottomRight: Radius.circular(getWidth(50.0))),
                      ),
                    ),
                  ),
                  Positioned(
                    right: getWidth(15.0),
                    top: getHeight(20.0),
                    child: Image.asset(
                      "assets/images/visa.png",
                      width: getWidth(75.08),
                      height: getHeight(24.08),
                    ),
                  ),
                  Positioned(
                    left: getWidth(20.0),
                    top: getHeight(20.0),
                    child: Image.asset(
                      "assets/images/chip.png",
                      width: getWidth(42.0),
                      height: getHeight(30.0),
                    ),
                  ),
                  Positioned(
                    left: getWidth(20.0),
                    top: getHeight(110.0),
                    child: Text(
                      "1234 5678 9123 4567",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getWidth(24.0),
                      ),
                    ),
                  ),
                  Positioned(
                    left: getWidth(20.0),
                    top: getHeight(150.0),
                    child: Text(
                      "JOHN DOE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getWidth(24.0),
                      ),
                    ),
                  ),
                  Positioned(
                    right: getWidth(15.0),
                    top: getHeight(150.0),
                    child: Text(
                      "00/00",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getWidth(24.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(26.58)),
              RoundedInputField(hintText: "Card Number", onChanged: (v) {}),
              SizedBox(
                width: getWidth(336.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getWidth(161.0),
                      child: RoundedInputField(
                          hintText: "Expiry", onChanged: (v) {}),
                    ),
                    SizedBox(
                      width: getWidth(161.0),
                      child:
                          RoundedInputField(hintText: "CVV", onChanged: (v) {}),
                    ),
                  ],
                ),
              ),
              RoundedInputField(hintText: "Name", onChanged: (v) {}),
              CheckboxListTile(
                checkColor: Colors.grey,
                activeColor: Colors.transparent,
                title: Text(
                  "Save this credit card",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: getWidth(14.0),
                      fontWeight: FontWeight.w400),
                ),
                value: context.watch<CreditCardSave>().isSaved,
                onChanged: (newValue) {
                  context.read<CreditCardSave>().changeValue();
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: getHeight(20.0),),
              RoundedButton(text: "Go to Confirmation", press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
