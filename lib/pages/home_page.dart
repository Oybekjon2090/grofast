import 'package:flutter/material.dart';
import 'package:grofast/pages/card_page.dart';
import 'package:grofast/pages/persons.dart';
import 'package:grofast/pages/products_page.dart';
import 'package:grofast/pages/profile.dart';
import 'package:grofast/style/style.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;

  List<Widget> list = [
    const ProductPage(),
    const PersonsPage(),
    const CardPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: list[selectIndex],
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Style.white,
            onTap: (value) {
              selectIndex = value;
              setState(() {});
            },
            color: Style.greyColor,
            activeColor: Color(0xff32CB4B),
            items: [
              TabItem(icon: Icons.home, title: 'Home',),
              TabItem(icon: Icons.qr_code_scanner_sharp, title: 'Scan'),
              TabItem(icon: Icons.shopping_cart_outlined, title: 'Shop'),
              TabItem(icon: Icons.person, title: 'Profile'),
            ],

          )
      );


    // return Scaffold(
    //   body: list[selectIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     selectedIconTheme: const IconThemeData(color: Style.primaryColor),
    //     unselectedIconTheme: const IconThemeData(color: Style.greyColor),
    //     currentIndex: selectIndex,
    //     onTap: (value) {
    //       selectIndex = value;
    //       setState(() {});
    //     },
    //     type: BottomNavigationBarType.fixed,
    //     items: const [
    //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    //       BottomNavigationBarItem(icon: Icon(Icons.group), label: ""),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.shopping_cart_outlined), label: ""),
    //       BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
    //     ],
    //   ),
    //
    // );
  }
  }