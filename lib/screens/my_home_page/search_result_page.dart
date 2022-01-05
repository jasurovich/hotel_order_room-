import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class ResultSearchPage extends StatelessWidget {
  const ResultSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: getHeight(30.0),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            width: getWidth(375.0),
            height: getHeight(55.0),
            child: Text(
              "Honolulu, USA - 2 guests - Jan 18 to Jan 23",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: getWidth(16.0),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(4.0),
          ),
          Container(
            height: getHeight(50.0),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor, width: .2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(18.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Filter.svg",
                        color: greyColor,
                        height: getHeight(16.0),
                        width: getWidth(16.02),
                      ),
                      SizedBox(
                        width: getWidth(8.0),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Filter",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: getWidth(16.0),
                              color: greytext2),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Map",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: getWidth(16.0),
                          color: greytext2),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: getWidth(375.0),
            height: getHeight(236.0),
            child: Padding(
              padding:
                  EdgeInsets.only(top: getHeight(38.0), left: getWidth(19.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Near the beaches",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: getWidth(22.0),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(12.0),
                  ),
                  SizedBox(
                    width: getWidth(375.0),
                    height: getHeight(117.0),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, __) {
                        return SizedBox(
                          height: getHeight(117.0),
                          width: getWidth(197.0),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(right: getWidth(15.0)),
                                  child: Container(
                                    width: getWidth(180.0),
                                    height: getHeight(108.58),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(getWidth(15.0)),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/royal_back.png",
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getHeight(75.0),
                                          left: getWidth(15.0)),
                                      child: Text(
                                        "Beach Resort Lux",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: getWidth(16.0),
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: getWidth(10.0),
                                child: Container(
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
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, __) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: getHeight(18.0),
                  ),
                  child: Column(
                    children: [
                      Ink(
                        width: getWidth(338.0),
                        height: getHeight(201.0),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/back1.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getWidth(10.0),
                            ),
                            topRight: Radius.circular(
                              getWidth(10.0),
                            ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Hotel Venice Royal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: getWidth(22.0),
                                        color: Colors.white),
                                  ),
                                  Ink(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                      Ink(
                        width: getWidth(338.0),
                        height: getHeight(88.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
                                getWidth(10.0),
                              ),
                              bottomRight: Radius.circular(
                                getWidth(10.0),
                              )),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: getHeight(5.0),
                              left: getWidth(15.0),
                              right: getWidth(17.0),
                              bottom: getHeight(13.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "San Marco, 0.1 miles from center",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: getWidth(16.0),
                                    color: greyColor),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Standard double room",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: getWidth(14.0),
                                        ),
                                      ),
                                      Text(
                                        "No prepayment",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: getWidth(14.0),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "\$ 830",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: getWidth(24.0),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
