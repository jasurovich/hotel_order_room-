import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map/core/components/bottom_bar/buttons/main_button.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class RoomOptionPage extends StatelessWidget {
  const RoomOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Beach Resort Lux",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getWidth(28.0),
              color: blackColor),
        ),
      ),
      body: SizedBox(
        height: getHeight(812.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, __) {
            return Column(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            SizedBox(
                              height: getHeight(18.0),
                            ),
                            SizedBox(
                              width: getWidth(207.0),
                              height: getHeight(115.25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _roomInfoSections(
                                      "refundable", "Refundable"),
                                  _roomInfoSections(
                                      "breakfast", "Breakfact included"),
                                  _roomInfoSections("wifi", "Wi-Fi"),
                                  _roomInfoSections(
                                      "conditioner", "Air Conditioner"),
                                  _roomInfoSections("bath", "Bath"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getHeight(31.0),
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "\$ 1480",
                                      style: TextStyle(
                                        color: blackColor,
                                        fontSize: getWidth(22.0),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "2 nights",
                                      style: TextStyle(
                                          fontSize: getWidth(14.0),
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    width: getWidth(185.0),
                                    child: RoundedButton(
                                        text: "Select", press: () {}))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }

  Row _roomInfoSections(String icon, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: getWidth(20.0),
          child: SvgPicture.asset(
            "assets/icons/roomInfoIcons/$icon.svg",
            color: Colors.grey,
            height: getHeight(14.0),
            width: getWidth(14.0),
          ),
        ),
        SizedBox(
          width: getWidth(16.5),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: getWidth(14.0),
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
