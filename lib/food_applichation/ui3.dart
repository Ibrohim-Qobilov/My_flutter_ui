

import 'package:flutter/material.dart';
import 'package:ui/food_applichation/home_page.dart';


class FoodApplicationPage extends StatefulWidget {
  @override
  _FoodApplicationPageState createState() => _FoodApplicationPageState();
}

class _FoodApplicationPageState extends State<FoodApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ui3/start.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Taking Order For Deloivery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "See resturants nearby \nadding location",
                  style:
                      TextStyle(color: Colors.white, height: 1.4, fontSize: 18.0),
                ),
              ),
              SizedBox(height: 30,),
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellowAccent,
                      Colors.orangeAccent,
                    ]
                  )
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  child: Text("start", style: TextStyle(color: Colors.white,fontSize: 20.0
                  ),),
                  onPressed: (){ Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePageUi3()));},
                ),
              ),
              // SizedBox(height: 30,),
              Align(
                
                child: Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text("Now Deliver to Your Door 24/7", style: TextStyle(color: Colors.white70,fontSize: 15),),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
