import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Magic Ball"),
          centerTitle: true,
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ImageButton(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Click on the Image to reload Image!",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatefulWidget {
  // const ImageButton({ Key? key }) : super(key: key);

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    // var ballNumber;
    return FlatButton(
      child: Image.asset('images/ball$ballNumber.png'),
      // color: Colors.blue,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
    );
  }
}
