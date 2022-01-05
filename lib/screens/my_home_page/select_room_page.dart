import 'package:flutter/material.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class SelectRoomPage extends StatelessWidget {
  const SelectRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: getHeight(335.0),
            width: getWidth(375.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: getHeight(255.0),
                      width: getWidth(375.0),
                      child: Image.asset(
                        "assets/images/back1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getWidth(18.0),
                          vertical: getHeight(40.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: getWidth(25.0),
                          ),
                          Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: getWidth(25.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: getHeight(80.0),
                      width: getWidth(125.0),
                      child: Image.asset(
                        "assets/images/royal_back.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(80.0),
                      width: getWidth(125.0),
                      child: Image.asset(
                        "assets/images/back.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(80.0),
                      width: getWidth(125.0),
                      child: Image.asset(
                        "assets/images/room1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(25.0),
              left: getWidth(17.0),
              right: getWidth(19.0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beach Resort Lux",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getWidth(28.0),
                  ),
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
          )
        ],
      ),
    );
  }
}
