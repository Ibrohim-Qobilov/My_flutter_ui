import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final List<String> _ListItem = [
    'assets/images/shop/bir.jpeg',
    'assets/images/shop/ikki.jpeg',
    'assets/images/shop/uch.jpeg',
    'assets/images/shop/tort.jpeg',
    'assets/images/shop/olti.jpeg',
    'assets/images/shop/yetti.jpeg',
    'assets/images/shop/sakkiz.jpeg',
    'assets/images/shop/toqqiz.jpeg',
    'assets/images/shop/uch.jpeg',
    'assets/images/shop/tort.jpeg',
    'assets/images/shop/bir.jpeg',
    'assets/images/shop/ikki.jpeg',
    'assets/images/shop/uch.jpeg',
    'assets/images/shop/tort.jpeg',
    'assets/images/shop/olti.jpeg',
    'assets/images/shop/yetti.jpeg',
    'assets/images/shop/sakkiz.jpeg',
    'assets/images/shop/toqqiz.jpeg',
    'assets/images/shop/uch.jpeg',
    'assets/images/shop/tort.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
        ),
        title: Text("Home"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("0")),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/shop/besh.jpeg"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Lifestyle sale",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50.0,
                        margin: EdgeInsets.symmetric(horizontal: 40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _ListItem.map(
                    (item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Transform.translate(
                          offset: Offset(50, -50),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 65,
                              vertical: 63,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade400,
                            ),
                            child: Icon(
                              Icons.bookmark_border,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
