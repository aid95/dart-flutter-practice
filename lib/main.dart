import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first flutter APP",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          title: Text("DEVELOPER PROFILE"),
          centerTitle: true,
          backgroundColor: Colors.red[700],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/juraffe.jpg'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.white30,
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text(
                "NAME",
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "JURAFFE",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "POWER",
                style: TextStyle(color: Colors.white, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "9999+",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Node.js',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Spring boot',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'React.js',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
