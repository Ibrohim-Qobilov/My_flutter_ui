import 'package:flutter/material.dart';

class FirstUiPage extends StatefulWidget {
  @override
  _FirstUiPageState createState() => _FirstUiPageState();
}

class _FirstUiPageState extends State<FirstUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Coding School",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    "Flutter bootcamp",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 3),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: "Sreach",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Promo Today",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 245,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCards('assets/images/ui1/bir.jpeg'),
                        promoCards('assets/images/ui1/ikki.jpeg'),
                        promoCards('assets/images/ui1/uch.jpeg'),
                        promoCards('assets/images/ui1/tort.jpeg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/ui1/tort.jpeg'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [
                              0.1,
                              8.9
                            ],
                            colors: [
                              Colors.black.withOpacity(.9),
                              Colors.black.withOpacity(.1),
                            ]),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Best Flutter programmer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promoCards(image) {
    return AspectRatio(
      // bu yerdagi 1 parametr rasmni katta yoki kichik qilish uchun
      // ikkinchi parametr esa ekranda 1 vaqtda qancha rasm ketishini etyapdi
      aspectRatio: 2.9 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              8.9
            ], colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]),
          ),
        ),
      ),
    );
  }
}
