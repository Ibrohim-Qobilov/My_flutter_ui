import 'package:flutter/material.dart';

class Ui2Page extends StatefulWidget {
  const Ui2Page({Key? key}) : super(key: key);

  @override
  _Ui2PageState createState() => _Ui2PageState();
}

class _Ui2PageState extends State<Ui2Page> {
  int totalPage = 4; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          makePage(
            page: 1,
            image: "assets/images/ui2/bir.jpeg",
            title: "House",
            description:
                "A house is a single-unit residential building, which may range in complexity from a rudimentary hut to a complex structure of wood, masonry, concrete or other material, outfitted with plumbing, electrical, and heating, ventilation, and air conditioning systems.",
          ),
          makePage(
            page: 2,
            image: 'assets/images/ui2/ikki.jpeg',
            title: "Lion",
            description:
                "The lion (Panthera leo) is a large felid of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane.",
          ),
          makePage(
            page: 3,
            image: 'assets/images/ui2/uch.jpeg',
            title: "Car",
            description:
                "Cars came into global use during the 20th century, and developed economies depend on them. The year 1886 is regarded as the birth year of the car when German inventor Karl Benz patented his Benz Patent-Motorwagen.[1][4][5] Cars became widely available in the early 20th century. ",
          ),
          makePage(
            page: 4,
            image: 'assets/images/ui2/tort.jpeg',
            title: "Nature",
            description:
                "Nature, in the broadest sense, is the natural, physical, material world or universe. Nature can refer to the phenomena of the physical world, and also to life in general. The study of nature is a large, if not the only, part of science. ",
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Text(
                          "4.0",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "(2300)",
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "READ MODE",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
