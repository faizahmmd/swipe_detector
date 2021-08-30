import 'package:flutter/material.dart';
import 'package:swipe_detector/swipe_detector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe Detector Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SwipeDetector(
        onSwipeDown: (){
          print("you just swiped down.");
        },
        onSwipeUp: (){
          print("you just swiped up.");
        },
        onSwipeRight: (){
          print("you just swiped right.");
        },
        onSwipeLeft: (){
          print("you just swiped left.");
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
            child: Text(
              "Swipe to detect direction."
            ),
          ),
        ),
      ),
    );
  }
}
