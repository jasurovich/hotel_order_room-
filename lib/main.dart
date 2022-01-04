import 'package:flutter/material.dart';
import 'package:map/providers/credit_card_save.dart';
import 'package:map/providers/filter_page_switch__provider.dart';
import 'package:map/providers/my_bottom_provider.dart';
import 'package:map/screens/reservation/reservation_2.dart';
import 'package:map/screens/reservation/reservation_3.dart';
import 'package:map/screens/searchPage/search_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
        ChangeNotifierProvider(create: (_) => FilterSwitchProvider()),
        ChangeNotifierProvider(create: (_) => CreditCardSave()),
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
      home: const SearchPage(),
    );
  }
}
