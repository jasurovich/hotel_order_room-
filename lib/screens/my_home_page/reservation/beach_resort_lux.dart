import 'package:flutter/material.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class RoomOptionPage extends StatelessWidget {
  const RoomOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Beach Resort Lux",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getWidth(28.0),
              color: blackColor),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: getHeight(26.0)),
            Ink(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  getWidth(10.0),
                ),
              ),
              height: getHeight(486.0),
              width: getWidth(338.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ink(
                    width: getWidth(338.0),
                    height: getHeight(184.62),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/room1.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(getWidth(10.0)),
                        topRight: Radius.circular(getWidth(10.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getWidth(20.0),
                      vertical: getHeight(19.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Standard King Room",
                              style: TextStyle(
                                  fontSize: getWidth(22.0),
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                            Image.asset(
                              "assets/images/info.png",
                              height: getHeight(19.38),
                              width: getHeight(19.38),
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.money,
                            size: getWidth(20.0),
                            color: Colors.grey,
                          ),
                          title: Text(
                            "Refundable",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: getWidth(14.0),
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
