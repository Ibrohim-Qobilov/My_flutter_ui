import 'package:flutter/material.dart';

import 'package:ui/login_page_ui/main.dart';
import 'package:ui/pages/all_pages.dart';
import 'package:ui/photography/main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter ui',
      theme: ThemeData(
        
      ),
       //home: AllPage(),
       
      home: PhotographyPage(),
    );
  }
}

