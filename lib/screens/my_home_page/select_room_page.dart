import 'package:flutter/material.dart';
import 'package:map/responsive/size_config.dart';

class SelectRoomPage extends StatelessWidget {
  const SelectRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        
                      ),
                      child: Row(children: [],),
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
        ],
      ),
    );
  }
}
