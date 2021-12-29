import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map/core/components/bottom_bar/buttons/main_button.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/providers/filter_page_switch__provider.dart';
import 'package:map/responsive/size_config.dart';
import 'package:provider/provider.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filter",
              style: TextStyle(
                  color: blackColor,
                  fontSize: getWidth(28.0),
                  fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "RESET",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getWidth(16.0),
                      color: Colors.grey),
                ),
                width: getWidth(84.0),
                height: getHeight(30.0),
                decoration: BoxDecoration(
                  color: greywhite,
                  borderRadius: BorderRadius.circular(
                    getWidth(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          _filterPageOptions("Your budget", "Select"),
          _filterPageOptions("Star rating", "Select"),
          _filterPageOptions("Review score", "Select"),
          _filterPageOptions("Meals", "Select"),
          _filterPageOptions("Type", "Hotel"),
          ListTile(
            title: Text(
              "Breakfast Included",
              style: TextStyle(
                  fontSize: getWidth(20.0), fontWeight: FontWeight.w600),
            ),
            trailing: CupertinoSwitch(
              activeColor: Colors.orange,
              value: context.watch<FilterSwitchProvider>().breafastInclude,
              onChanged: (value) {
                context.read<FilterSwitchProvider>().changeBreakfast(value);
              },
            ),
          ),
          ListTile(
            title: Text(
              "Deals",
              style: TextStyle(
                  fontSize: getWidth(20.0), fontWeight: FontWeight.w600),
            ),
            trailing: CupertinoSwitch(
              activeColor: Colors.orange,
              value: context.watch<FilterSwitchProvider>().deals,
              onChanged: (value) {
                context.read<FilterSwitchProvider>().changeDeal(value);
              },
            ),
          ),
          ListTile(
            title: Text(
              "Only show available",
              style: TextStyle(
                  fontSize: getWidth(20.0), fontWeight: FontWeight.w600),
            ),
            trailing: CupertinoSwitch(
              activeColor: Colors.orange,
              value: context.watch<FilterSwitchProvider>().available,
              onChanged: (value) {
                context.read<FilterSwitchProvider>().changeAvailable(value);
              },
            ),
          ),
          SizedBox(height: getHeight(124.0),),
          RoundedButton(text: "Apply", press: (){})
        ],
      ),
    );
  }

  

  ListTile _filterPageOptions(String title, String options) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: getWidth(20.0), fontWeight: FontWeight.w600),
      ),
      trailing: SizedBox(
        width: getWidth(88.0),
        height: getHeight(27.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              options,
              style: TextStyle(
                color: Colors.grey,
                fontSize: getWidth(20.0),
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: getWidth(15.0),
            )
          ],
        ),
      ),
    );
  }
}
