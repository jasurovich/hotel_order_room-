import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map/core/constants/colors.dart';
import 'package:map/providers/my_bottom_provider.dart';
import 'package:map/responsive/size_config.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              width: getWidth(50.0),
              height: getWidth(50.0),
              decoration: BoxDecoration(
                color: context.watch<BottomBarProvider>().index == 0
                    ? Colors.amber.shade100
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  getWidth(10.0),
                ),
              
              ),
              child: SvgPicture.asset(
                "assets/icons/bottomBarIcons/home.svg",
                color: context.watch<BottomBarProvider>().index == 0
                    ? primaryColor
                    : greyColor,
                height: getHeight(21.0),
                width: getWidth(27.0),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              width: getWidth(50.0),
              height: getWidth(50.0),
              decoration: BoxDecoration(
                color: context.watch<BottomBarProvider>().index == 1
                    ? Colors.amber.shade100
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  getWidth(10.0),
                ),
              
              ),
              child: SvgPicture.asset(
                "assets/icons/bottomBarIcons/search.svg",
                color: context.watch<BottomBarProvider>().index == 1
                    ? primaryColor
                    : greyColor,
                height: getHeight(24.0),
                width: getWidth(21.0),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              width: getWidth(50.0),
              height: getWidth(50.0),
              decoration: BoxDecoration(
                color: context.watch<BottomBarProvider>().index == 2
                    ? Colors.amber.shade100
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  getWidth(10.0),
                ),
              
              ),
              child: SvgPicture.asset(
                "assets/icons/bottomBarIcons/bell.svg",
                color: context.watch<BottomBarProvider>().index == 2
                    ? primaryColor
                    : greyColor,
                height: getHeight(24.0),
                width: getWidth(21.0),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Container(
                alignment: Alignment.center,
              width: getWidth(50.0),
              height: getWidth(50.0),
              decoration: BoxDecoration(
                color: context.watch<BottomBarProvider>().index == 3
                    ? Colors.amber.shade100
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  getWidth(10.0),
                ),
              
              ),
                child: SvgPicture.asset(
                  "assets/icons/bottomBarIcons/User.svg",
                  color: context.watch<BottomBarProvider>().index == 3
                      ? primaryColor
                      : greyColor,
                  height: getHeight(24.0),
                  width: getWidth(21.0),
                ),
              ),
              label: ""),
        ],
        onTap: (index) {
          context.read<BottomBarProvider>().changeIndex(index);
        },
      ),
    );
  }
}
