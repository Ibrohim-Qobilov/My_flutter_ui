import 'package:flutter/material.dart';

class Ui4ActorsPage extends StatefulWidget {
  const Ui4ActorsPage({Key? key}) : super(key: key);

  @override
  _Ui4ActorsPageState createState() => _Ui4ActorsPageState();
}

class _Ui4ActorsPageState extends State<Ui4ActorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 440,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ui4/tort.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(.3),
                        ],
                      )),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Emily Vancamp",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "60 Movies and serials",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  "500k Subscribers",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Emily Irene VanCamp  She first came to prominence for her work with producer Greg Berlanti, who cast her as a series regular on The WB drama Everwood (2002–2006) and the ABC drama Brothers & Sisters (2007–2010). VanCamp gained further recognition by portraying the lead role of Emily Thorne on the ABC series Revenge from 2011 to 2015. In 2018, VanCamp began starring on the Fox medical drama series The Resident.",
                            style: TextStyle(color: Colors.grey, height: 1.4),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Born",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "May 12th, 1986 Ottawa Canada",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nationality",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Canada",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Movies",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeMovies(image: 'assets/images/ui4/bir.jpeg'),
                                makeMovies(
                                    image: 'assets/images/ui4/ikki.jpeg'),
                                makeMovies(image: 'assets/images/ui4/uch.jpeg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orangeAccent,
                  ),
                  child: Align(child:  Text("Follow", style: TextStyle(color: Colors.white),),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeMovies({image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.3),
            ],
          )),
          child: Align(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
