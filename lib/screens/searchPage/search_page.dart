import 'package:flutter/material.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: getHeight(812.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(50.0),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: getHeight(50.0), width: getWidth(338)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(),
                      contentPadding: EdgeInsets.only(
                          left: getWidth(12.0), right: getWidth(18.0)),
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search for a city, area, or a hotel",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: getWidth(16.0),
                          color: greyText),
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: greyColor,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: getHeight(33.0)),
                Ink(
                  width: getWidth(375.0),
                  height: getHeight(302.0),
                  color: Colors.orange.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getHeight(30.0),
                          left: getWidth(21.0),
                        ),
                        child: Text(
                          "Recomended",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getWidth(22.0),
                              color: blackColor),
                        ),
                      ),
                      SizedBox(height: getHeight(18.0)),
                      SizedBox(
                        height: getHeight(185.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (_, __) {
                            return Padding(
                              padding: EdgeInsets.only(left: getWidth(20.0)),
                              child: Ink(
                                width: getWidth(265.0),
                                height: getHeight(185.0),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/room1.png"),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.circular(getWidth(20.0)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: getHeight(15.0),
                                      left: getWidth(15.0),
                                      right: getWidth(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lux Hotel with a Pool",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: getWidth(18.0),
                                            color: Colors.white),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Dubai",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: getWidth(14.0),
                                                color: Colors.white),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "\$700~",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getWidth(14.0),
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: getWidth(12.0),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "4.5",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize:
                                                            getWidth(14.0),
                                                        color: Colors.white),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: getWidth(15.0),
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                ),
                Ink(
                  width: getWidth(375.0),
                  height: getHeight(302.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getHeight(30.0),
                          left: getWidth(21.0),
                        ),
                        child: Text(
                          "Deals",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: getWidth(22.0),
                              color: blackColor),
                        ),
                      ),
                      SizedBox(height: getHeight(18.0)),
                      SizedBox(
                        height: getHeight(185.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (_, __) {
                            return Padding(
                              padding: EdgeInsets.only(left: getWidth(20.0)),
                              child: Ink(
                                width: getWidth(265.0),
                                height: getHeight(185.0),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/back.png"),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.circular(getWidth(20.0)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: getHeight(15.0),
                                      left: getWidth(15.0),
                                      right: getWidth(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sunset Hitek",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: getWidth(18.0),
                                            color: Colors.white),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Venice",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: getWidth(14.0),
                                                color: Colors.white),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "\$800~",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: getWidth(14.0),
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: getWidth(12.0),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "4.2",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize:
                                                            getWidth(14.0),
                                                        color: Colors.white),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: getWidth(15.0),
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
