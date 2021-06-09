import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        title: Text("MY PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.red[700],
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Menu button is clicked");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/juraffe.jpg')),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/muyaho.jpg'),
                ),
              ],
              accountName: Text("Juraffe"),
              accountEmail: Text("cd80@kakao.com"),
              onDetailsPressed: () {
                print("Arrow is clicked");
              },
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: Text("Home"),
              onTap: () {
                print("Home button is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: Text("Q&A"),
              onTap: () {
                print("QnA button is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[800],
              ),
              title: Text("Settings"),
              onTap: () {
                print("Settings button is clicked");
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/juraffe.jpg'),
                radius: 60.0,
              ),
            ),
            Center(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  child: Text("Hello"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SecondPage()));
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Hi, I'm a programmer.",
                            style: TextStyle(color: Colors.black)),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () {
                            Fluttertoast.showToast(
                                msg: "This is Center Short Toast",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.teal[200],
                                textColor: Colors.white,
                                fontSize: 12.0);
                          },
                        ),
                        backgroundColor: Colors.white,
                        duration: Duration(milliseconds: 1000),
                      ));
                    },
                    child: Text("Don't push")),
              ],
            )),
            Divider(
              height: 60.0,
              color: Colors.white30,
              thickness: 0.5,
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
                  'Nest.js',
                  style: TextStyle(
                      fontSize: 16.0, letterSpacing: 1.0, color: Colors.white),
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
                      fontSize: 16.0, letterSpacing: 1.0, color: Colors.white),
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
                      fontSize: 16.0, letterSpacing: 1.0, color: Colors.white),
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
                      fontSize: 16.0, letterSpacing: 1.0, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second page')), body: Text("Hello"));
  }
}
