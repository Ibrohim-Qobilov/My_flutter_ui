import 'package:flutter/material.dart';
import 'package:ui/party%20event/find_event.dart';

class PartyEventPage extends StatefulWidget {
  const PartyEventPage({Key? key}) : super(key: key);

  @override
  _PartyEventPageState createState() => _PartyEventPageState();
}

class _PartyEventPageState extends State<PartyEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/party/main.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(80),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find the best lacation near you for a good night",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Let us find you an event for your interest",
                style: TextStyle(
                  color: Colors.white.withOpacity(.7),
                  fontSize: 25,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FindEventPage(),),);
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Find nearest event",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
