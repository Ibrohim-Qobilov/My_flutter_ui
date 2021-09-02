import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePageUi3 extends StatefulWidget {
  const HomePageUi3({Key? key}) : super(key: key);

  @override
  _HomePageUi3State createState() => _HomePageUi3State();
}

class _HomePageUi3State extends State<HomePageUi3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        leading: Icon(null),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.grey.shade800,
              ))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food Delivery",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeCategory(isActive: true, tille: 'Pizza'),
                        makeCategory(isActive: false, tille: 'Lavash'),
                        makeCategory(isActive: false, tille: 'Kebeb'),
                        makeCategory(isActive: false, tille: 'Desert'),
                        makeCategory(isActive: false, tille: 'Selad'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Free Delivery",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: "assets/images/ui3/pizza.jpeg"),
                    makeItem(image: "assets/images/ui3/ikki.jpeg"),
                    makeItem(image: "assets/images/ui3/uch.jpeg"),
                    makeItem(image: "assets/images/ui3/bir.jpeg"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, tille}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.0 / 1,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow.shade700 : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            tille,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18.0,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  stops: [.2, .9],
                  colors: [
                    // Colors.black.withOpacity(.9),
                    // Colors.black.withOpacity(.3),
                  ],
                )),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("\s 1.500",style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Vegetarian Pizza",style: TextStyle(color: Colors.white, fontSize: 20.0,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
