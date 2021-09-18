import 'package:flutter/material.dart';
import 'package:ui/photography/helper/colorsys.dart';

class PhotographyPage extends StatefulWidget {
  const PhotographyPage({Key? key}) : super(key: key);

  @override
  _PhotographyPageState createState() => _PhotographyPageState();
}

class _PhotographyPageState extends State<PhotographyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsys.lightGrey,
      appBar: AppBar(
        backgroundColor: Colorsys.lightGrey,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colorsys.darkGrey,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            searchBox(),
            SizedBox(height: 40),
            textBox(),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Best Place to \nFind awesome photos",
            style: TextStyle(
              color: Colorsys.darkGrey,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
              left: 20,
              right: 3,
              top: 3,
              bottom: 3,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search for Photo",
                      hintStyle: TextStyle(
                        color: Colorsys.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: double.infinity,
                    minWidth: 50,
                    color: Colorsys.orange,
                    elevation: 0,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textBox() {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "For you",
            style: TextStyle(
              color: Colorsys.darkGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colorsys.lightGrey,
                ),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Recommend",
                      style: TextStyle(
                        color: Colorsys.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: 50,
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colorsys.orange,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Likes",
                  style: TextStyle(
                    color: Colorsys.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          
        ],
      ),
    );
  }  
}
