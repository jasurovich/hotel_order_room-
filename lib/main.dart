import 'package:flutter/material.dart';
import 'package:map/providers/filter_page_switch__provider.dart';
import 'package:map/providers/my_bottom_provider.dart';
import 'package:map/screens/my_home_page/my_home_page.dart';
import 'package:map/screens/my_home_page/notifications/notification.dart';
import 'package:map/screens/my_home_page/profile/profile_page.dart';
import 'package:map/screens/my_home_page/searchPage/filter_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
        ChangeNotifierProvider(create: (_) => FilterSwitchProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.blue,
      ),
      home:  FilterPage(),
    );
  }
}
