import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/travel/main.jpeg"),
                fit: BoxFit.cover,
              )),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "What you would like to find?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                            hintText: "Search for cities places ..."),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Destination",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/travel/bir.jpeg',
                            title: "Canada"),
                        makeItem(
                            image: 'assets/images/travel/ikki.jpeg',
                            title: "Madagascar"),
                        makeItem(
                            image: 'assets/images/travel/uch.jpeg',
                            title: "Dubai"),
                        makeItem(
                            image: 'assets/images/travel/tort.jpeg',
                            title: "Turkey"),
                        makeItem(
                            image: 'assets/images/travel/besh.jpeg',
                            title: "Uzbekistan"),
                        makeItem(
                            image: 'assets/images/travel/olti.jpeg',
                            title: "USA"),
                        makeItem(
                            image: 'assets/images/travel/yetti.jpeg',
                            title: "Russia"),
                        makeItem(
                            image: 'assets/images/travel/bir.jpeg',
                            title: "Canada"),
                        makeItem(
                            image: 'assets/images/travel/ikki.jpeg',
                            title: "Madagascar"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                 
                  Text(
                    "Best Hotels",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 35,),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/travel/uzbek.jpg',
                            title: "Uzbekistan Hotel"),
                        makeItem(
                            image: 'assets/images/travel/burj.jpeg',
                            title: "Burj Khalifa"),
                        makeItem(
                            image: 'assets/images/travel/hotel.jpeg',
                            title: "Toshkent Hotel"),
                        makeItem(
                            image: 'assets/images/travel/hotels.jpeg',
                            title: "International Hotel"),
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
