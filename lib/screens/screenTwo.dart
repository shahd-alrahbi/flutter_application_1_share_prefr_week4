import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SereenTwo extends StatefulWidget {
  const SereenTwo({super.key});

  @override
  State<SereenTwo> createState() => _SereenTwoState();
}

class _SereenTwoState extends State<SereenTwo> {
  var username;
  getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    username = prefs.getString("name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$username"),
          ElevatedButton(
              onPressed: () async {
                await getPrefs();
                setState(() {});
              },
              child: Text("Get Data")),
        ],
      )),
    );
  }
}
