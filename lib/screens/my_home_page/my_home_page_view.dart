import 'package:flutter/material.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import 'package:map/core/components/buttons/main_button.dart';
import 'package:map/core/components/inputs/input.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/providers/drop_down_provider.dart';
import 'package:map/responsive/size_config.dart';
import 'package:provider/provider.dart';
import './my_home_page_view_model.dart';

class myHomePageView extends myHomePageViewModel {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // Replace this with your build function
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: getHeight(800.0),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(520.0),
                child: Stack(
                  children: [
                    SizedBox(
                      width: getWidth(375.0),
                      height: getHeight(617.0),
                      child: Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: getHeight(90.0),
                      child: Padding(
                        padding: EdgeInsets.only(left: getWidth(18.0)),
                        child: SizedBox(
                          width: getWidth(330.0),
                          child: Text(
                            "Find a perfect place to stay",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: getWidth(36.0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: getHeight(300.0),
                        width: getWidth(375.0),
                        decoration: BoxDecoration(
                          color: mainPageSectionColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(getWidth(28.0)),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Form(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: getHeight(18.0)),
                                        child: SizedBox(
                                          width: getWidth(210.0),
                                          child: RoundedInputField(
                                            hintText: "Place",
                                            onChanged: (v) {},
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getHeight(50.0),
                                        width: getWidth(100.0),
                                        margin:
                                            EdgeInsets.only(left: getWidth(18.0)),
                                        padding: EdgeInsets.only(
                                            left: getWidth(13.0),
                                            right: getWidth(6.0)),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius:
                                              BorderRadius.circular(getWidth(10.0)),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            icon: const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.grey,
                                            ),
                                            elevation: 0,
                                            dropdownColor: Colors.grey.shade700,
                                            hint: Text(
                                              _value,
                                            ),
                                            items: [
                                              _dropDownItem(
                                                  itemValue: '1', type: 'Just'),
                                              _dropDownItem(
                                                  itemValue: '2', type: 'Guests'),
                                              _dropDownItem(
                                                  itemValue: '3', type: 'Some'),
                                            ],
                                            onChanged: (value) {
                                              Provider.of<DropDownProviderTop>(
                                                      context)
                                                  .changeDropDown(v: value);
                                            },
                                            value: DropDownProviderTop()
                                                .changeDropDown(),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: getHeight(18.0)),
                                        child: SizedBox(
                                          width: getWidth(210.0),
                                          child: RoundedInputField(
                                            hintText: "Date",
                                            onChanged: (v) {},
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getHeight(50.0),
                                        width: getWidth(100.0),
                                        margin:
                                            EdgeInsets.only(left: getWidth(18.0)),
                                        padding: EdgeInsets.only(
                                            left: getWidth(13.0),
                                            right: getWidth(6.0)),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade800,
                                          borderRadius:
                                              BorderRadius.circular(getWidth(10.0)),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            icon: const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.grey,
                                            ),
                                            elevation: 0,
                                            dropdownColor: Colors.grey.shade700,
                                            hint: Text(
                                              _value,
                                            ),
                                            items: [
                                              _dropDownItem(
                                                  itemValue: '1', type: 'Night'),
                                              _dropDownItem(
                                                  itemValue: '2', type: 'Days'),
                                              _dropDownItem(
                                                  itemValue: '3', type: 'Others'),
                                            ],
                                            onChanged: (value) {
                                              Provider.of<DropDownProviderTop>(
                                                      context)
                                                  .changeDropDown(v: value);
                                            },
                                            value: DropDownProviderTop()
                                                .changeDropDown(),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getHeight(60.0),
                              width: getWidth(338.0),
                              child: RoundedButton(
                                  text: "Search a room", press: () {}),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Ink(
                width: getWidth(375.0),
                height: getHeight(270.0),
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
                                    image: AssetImage("assets/images/room1.png"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(getWidth(20.0)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: getHeight(15.0),
                                    left: getWidth(15.0),
                                    right: getWidth(15.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: getWidth(14.0),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  var _value = '1';

  DropdownMenuItem<String> _dropDownItem({itemValue, type}) {
    return DropdownMenuItem(
      value: itemValue,
      child: Text(type, style: const TextStyle(color: Colors.grey)),
    );
  }
}
