import 'package:flutter/material.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/components/bottom_bar/buttons/main_button.dart';
import 'package:map/responsive/size_config.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Ink(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/back.png"),
                    fit: BoxFit.cover),
              ),
              width: getWidth(375.0),
              height: getHeight(236.0),
              child: Padding(
                padding: EdgeInsets.only(
                  top: getHeight(37.0),
                  left: getWidth(42.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Special Deals",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: getWidth(32.0)),
                    ),
                    SizedBox(
                      height: getHeight(6.0),
                    ),
                    Text(
                      "Nov 12 - 24",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w700,
                          fontSize: getWidth(18.0)),
                    ),
                    SizedBox(
                      height: getHeight(19.0),
                    ),
                    RoundedButton(text: "Search a room", press: () {})
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getHeight(455.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, index) {
                  return Container(
                    color: index == 2 ?  Colors.orange[50]:Colors.transparent,
                    alignment: Alignment.center,
                    height: getHeight(122.5),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(28.0)),
                      child: ListTile(
                        title: Text(
                          "Please rate your stay at Venice Royal, Venice, Italy.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: getWidth(18.0)),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 12.0,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 3,
              ),
            )
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
