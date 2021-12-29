import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: getHeight(7.0)),
            _profileInfo(),
            SizedBox(height: getHeight(29.0)),
            _profileMenuOptions("favourite", "Your favourites"),
            _profileMenuOptions("payment", "Payment"),
            _profileMenuOptions("help", "Help"),
            _profileMenuOptions("promotions", "Promotions"),
            _profileMenuOptions("settings", "Settings")
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }

  Container _profileInfo() {
    return Container(
            color: Colors.white,
            height: getHeight(82.0),
            width: getWidth(375.0),
            alignment: Alignment.centerLeft,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
                radius: getWidth(30.0),
              ),
              title: Text(
                "Samantha Doe",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: getWidth(22.0),
                ),
              ),
            ),
          );
  }

  Padding _profileMenuOptions(String icon, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(5.0)),
      child: ListTile(
        leading: SvgPicture.asset(
          "assets/icons/profileIcons/$icon.svg",
          color: primaryColor,
          height: getHeight(21.0),
          width: getWidth(27.0),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: getWidth(20.0)),
        ),
      ),
    );
  }
}
