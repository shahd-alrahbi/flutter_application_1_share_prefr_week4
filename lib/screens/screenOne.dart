import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screenTwo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SereenOne extends StatefulWidget {
  const SereenOne({super.key});

  @override
  State<SereenOne> createState() => _SereenOneState();
}

class _SereenOneState extends State<SereenOne> {
  savePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", "shahd alrahbi");
    print("success");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                await savePrefs();
                setState(() {});
              },
              child: Text("save prefs")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SereenTwo()),
                );
              },
              child: Text("Go to seconed page")),
        ],
      )),
    );
  }
}
