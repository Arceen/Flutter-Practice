import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? text;
  @override
  void initState() {
    super.initState();
    text = "Not Started";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Checking"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Container(
                  height: 300, width: double.infinity, color: Colors.black54),
              // onDoubleTap: () {
              //   setState(() {
              //     text = "Double Tapped";
              //   });
              // },
              // onHorizontalDragStart: (details) {
              //   setState(() {
              //     text = "start" + details.toString();
              //   });
              // },
              // onHorizontalDragEnd: (details) {
              //   setState(() {
              //     text = "end" + details.toString();
              //   });
              // },
              // onHorizontalDragUpdate: (details) {
              //   setState(() {
              //     text = "update" + details.toString();
              //   });
              // },
              // onHorizontalDragDown: (details) {
              //   setState(() {
              //     text = "down" + details.toString();
              //   });
              // },

              // onPanStart: (details) {
              //   setState(() {
              //     text = "start" + details.toString();
              //   });
              // },
              // onPanEnd: (details) {
              //   setState(() {
              //     text = "end" + details.toString();
              //   });
              // },
              // onPanUpdate: (details) {
              //   setState(() {
              //     text = "update" + details.toString();
              //   });
              // },
              // onPanDown: (details) {
              //   setState(() {
              //     text = "down" + details.toString();
              //   });
              // },
              onTertiaryLongPressStart: (dets) {
                setState(() {
                  text = "tertiary" + dets.toString();
                });
              },
              onSecondaryLongPress: () {
                setState(() {
                  text = "secondary long press";
                });
              },
            ),
            Text(
              text!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.orange,
              ),
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
