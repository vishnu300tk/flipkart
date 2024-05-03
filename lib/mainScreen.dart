import 'package:flipkart/bottomPage.dart';
import 'package:flipkart/home.dart';
import 'package:flipkart/view/account/accout.dart';
import 'package:flipkart/view/cart.dart';
import 'package:flipkart/view/catogory.dart';

import 'package:flipkart/view/notification.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final pages = [
          
    const HomePage(),
          CategoryPage(),
    const NotificationsScreen(),
          Account(userName: 'vishnu', emailId: 'vishnu@gmail.com',),
    const MyCartWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          }),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}