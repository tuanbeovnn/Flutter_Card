import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("My Card"),
          backgroundColor: Colors.amber,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                level += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.amber),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/student.png'),
                  radius: 70,
                ),
              ),
              Divider(
                height: 70,
                color: Colors.green,
              ),
              Text(
                "NAME",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Tuan Nguyen",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 30),
              ),
              SizedBox(height: 30),
              Text(
                "CURRENT LEVEL ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "$level",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontSize: 30),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "tuanbeovnn@gmail.com",
                    style: TextStyle(color: Colors.pink, letterSpacing: 2),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
