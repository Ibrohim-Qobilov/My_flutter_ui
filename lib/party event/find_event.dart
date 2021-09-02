import 'package:flutter/material.dart';

class FindEventPage extends StatelessWidget {
  const FindEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        // leading: Icon(
        //   Icons.menu,
        //   color: Colors.black,
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/party/bir.jpeg'),
                    fit: BoxFit.cover,
                  )),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.yellow[700],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search Event",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            makeItem(
              image: "assets/images/party/bir.jpeg",
              date: 10,
            ),
            SizedBox(height: 20,),
            makeItem(
              image: "assets/images/party/ikki.jpeg",
              date: 21,
            ),
            SizedBox(height: 20,),
            makeItem(
              image: "assets/images/party/uch.jpeg",
              date: 25,
            ),
            SizedBox(height: 20,),
            makeItem(
              image: "assets/images/party/tort.jpeg",
              date: 30,
            ),
            SizedBox(height: 20,),
          ],
        ),
      )),
    );
  }

  Widget makeItem({image, date}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200.0,
            width: 50.0,
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Text(
                  date.toString(),
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "SEP",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Tashkent 2020",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "7:00 PM",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
