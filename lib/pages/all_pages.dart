import 'package:flutter/material.dart';
import 'package:ui/actors_frofile/main_page_ui4.dart';
import 'package:ui/food_applichation/home_page.dart';
import 'package:ui/shop/shop_page.dart';
import 'package:ui/traver/travel_page.dart';
import 'package:ui/ui_1/ui1.dart';
import 'package:ui/ui_2_page_view/ui2.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("All Pages"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstUiPage(),),);
                },
                child: Text("First Ui Flutter"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Ui2Page(),),);
                },
                child: Text("Page View"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePageUi3(),),);
                },
                child: Text("restaurants"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Ui4ActorsPage(),),);
                },
                child: Text("Actors Profile"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ShopPage(),),);
                },
                child: Text("Shop"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  TravelPage(),),);
                },
                child: Text("Travel"),
              ),
          ],
        ),
      ),
    );
  }
}