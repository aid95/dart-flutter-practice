import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: null,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<http.Response> fetchData() {
    return http.get(Uri.https('samples.openweathermap.org', 'data/2.5/weather',
        {'q': 'London', 'appid': 'b1b15e88fa797225412429c1c50c122a1'}));
  }
}
