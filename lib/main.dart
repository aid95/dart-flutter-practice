import 'package:dart_flutter_practice/screens/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Center(
                child: Image(
                  image: AssetImage('assets/images/chef.gif'),
                  width: 170.0,
                  height: 190.0,
                ),
              ),
              Form(
                  child: Theme(
                data: ThemeData(
                    primaryColor: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 15.0))),
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Enter "dice"'),
                        keyboardType: TextInputType.emailAddress,
                        controller: controller,
                      ),
                      TextField(
                        decoration:
                            InputDecoration(labelText: 'Enter Password'),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        controller: controller2,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      ButtonTheme(
                          child: ElevatedButton(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          if (controller.text == "dice" &&
                              controller2.text == "1234") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Dice()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Invalid ID/PASSWORD",
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(seconds: 1),
                              backgroundColor: Colors.blueAccent,
                            ));
                          }
                        },
                      ))
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
