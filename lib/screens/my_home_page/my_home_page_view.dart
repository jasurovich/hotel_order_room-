import 'package:flutter/material.dart';
import 'package:map/core/components/bottom_bar/bottom_bar.dart';
import './my_home_page_view_model.dart';

class myHomePageView extends myHomePageViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
    );
  }
}
