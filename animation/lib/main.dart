import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  Color color = const Color.fromRGBO(122, 255, 122, 1);
  double width = 100.0;
  double height = 100.0;
  double br = 10;
  AnimationController? _controller;
  double endval = 2 * pi;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: AnimatedContainer(
        //   decoration: BoxDecoration(
        //     color: color,
        //     borderRadius: BorderRadius.circular(br),
        //   ),
        //   height: height,
        //   width: width,
        //   // transform: Matrix4.rotationZ(2),

        //   duration: const Duration(seconds: 1),
        //   // child: Container(
        //   //   height: 200,
        //   //   width: 200,
        //   //   color: Colors.blue,
        //   // ),
        // ),
        // child: TweenAnimationBuilder(
        //   tween: Tween<double>(begin: 0, end: endval),
        //   duration: Duration(seconds: 1),
        //   builder: (_, double angle, __) {
        //     return Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.red,
        //       transform: Matrix4.identity()..rotateZ(angle),
        //     );
        //   },
        //   onEnd: () {
        //     setState(() {
        //       endval = endval == 0 ? 2 * pi : 0;
        //     });
        //   },
        // ),
        child: RotationTransition(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          turns: _controller!,
          alignment: Alignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final random = Random();
          setState(() {
            color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              random.nextDouble(),
            );
            width = 2 + random.nextDouble() * 298;
            height = 2 + random.nextDouble() * 298;
            br = random.nextDouble() * 100;
          });
          if (_controller!.isAnimating) {
            _controller!.stop();
          } else {
            _controller!.repeat();
          }
        },
        child: const Text("Change"),
      ),
    );
  }
}
