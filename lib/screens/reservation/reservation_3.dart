import 'package:flutter/material.dart';
import 'package:map/core/components/buttons/main_button.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class ReservationCompleate extends StatelessWidget {
  const ReservationCompleate({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: getHeight(35.0), bottom: getHeight(35.0)),
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/Stepper3.png",
                    width: getWidth(155.0),
                    height: getHeight(36.0),
                  ),
                ),
              ),
              Ink(
                width: getWidth(338.0),
                height: getHeight(201.0),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/back.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(
                    getWidth(10.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(15.0),
                    vertical: getHeight(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.transparent,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Beach Resort Lux",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: getWidth(22.0),
                                color: Colors.white),
                          ),
                          Ink(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: getWidth(12.0),
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: getWidth(15.0),
                                )
                              ],
                            ),
                            width: getWidth(50.0),
                            height: getHeight(25.0),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(
                                getWidth(20.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getHeight(33.0)),
              SizedBox(
                height: getHeight(120.0),
                width: getWidth(337.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2 people",
                      style: TextStyle(
                          fontSize: getWidth(16.0),
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      "Standart King Room",
                      style: TextStyle(
                          fontSize: getWidth(16.0),
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      "2 nights",
                      style: TextStyle(
                          fontSize: getWidth(16.0),
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      "Jan 18 2022 to Jan 20 2022",
                      style: TextStyle(
                          fontSize: getWidth(16.0),
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getHeight(20.0)),
                child: SizedBox(
                  width: getWidth(337.0),
                  child: const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$1480 USD",
                      style: TextStyle(
                        fontSize: getWidth(36.0),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      child: Image.asset(
                        "assets/images/info.png",
                        width: getWidth(37.0),
                        height: getHeight(37.0),
                      ),
                    )
                  ],
                ),
              ),
              RoundedButton(text: "Compleate", press: () {})
            ],
          ),
        ),
      ),
    );
  }
}
