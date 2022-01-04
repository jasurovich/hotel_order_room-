import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/responsive/size_config.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: _mapSearch(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }

  Column _listView() {
    return Column(
      children: [
        SizedBox(
          height: getHeight(50.0),
        ),
        Container(
          height: getHeight(50.0),
          decoration: BoxDecoration(
            color: Colors.white,
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
          height: getHeight(20.0),
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
                            image: AssetImage("assets/images/royal_back.png"),
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
                                  "Hotel Venice Royal",
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }

  Expanded _mapSearch() {
    return Expanded(
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
          SizedBox(
            height: getHeight(34.0),
          ),
          Container(
            height: getHeight(50.0),
            decoration: BoxDecoration(
              color: Colors.white,
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
                      "List View",
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
          Stack(
            children: [
              SizedBox(
                width: getWidth(375.0),
                height: getHeight(550.0),
                child: Image.asset(
                  "assets/images/MapScreen.png",
                  fit: BoxFit.cover,
                ),
              ),
              _mapPosionsAndPrices("127", 11.0, 54.0),
              _mapPosionsAndPrices("346", 76.0, 257.0),
              _mapPosionsAndPrices("388", 158.0, 30.0),
              _mapPosionsAndPrices("216", 216.0, 134.0),
              _mapPosionsAndPrices("513", 300.0, 225.0),
              _mapPosionsAndPrices("705", 335.0, 243.0),
              Positioned(
                bottom: getHeight(15.0),
                left: getWidth(15.0),
                child: SizedBox(
                  width: getWidth(375.0),
                  height: getHeight(117.0),
                  child: ListView.builder(
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
                                padding: EdgeInsets.only(right: getWidth(15.0)),
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
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned _mapPosionsAndPrices(String price, double top, double right) {
    return Positioned(
      top: getHeight(top),
      right: getWidth(right),
      child: Container(
        alignment: Alignment.center,
        width: getWidth(84.0),
        height: getHeight(35.0),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(
            getWidth(20.0),
          ),
        ),
        child: Text(
          "\$$price+",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getWidth(17.0),
              color: Colors.white),
        ),
      ),
    );
  }
}
