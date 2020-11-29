import 'package:flutter/material.dart';

import '../Services/LaunchServices.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildRaisedButton('Show my Channel', launchURL),
            heightSpacer(25.00),
            buildRaisedButton('Send Email', launchEMAIL),
            heightSpacer(25.00),
            buildRaisedButton('Make Call', launchCALL),
            heightSpacer(25.00),
            buildRaisedButton('Send SMS', launchSMS),
            heightSpacer(25.00),
          ],
        ),
      ),
    );
  }

  Widget buildRaisedButton(String text, dynamic event) {
    return RaisedButton(
      onPressed: event,
      child: Text(text),
    );
  }

  Widget heightSpacer(double myheight) {
    return SizedBox(height: myheight);
  }
}
