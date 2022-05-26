import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp6()));
}

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          child: Text(
            'Play',
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
          onDoubleTap: () {
            print("You double tapped");
          },
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 50,
        constraints: BoxConstraints.expand(
          height:
              Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 100.0,
          width: 300.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[600],
        ),
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        transform: Matrix4.rotationZ(0.3),
        child: Text(
          'Hello World',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Stack(
        //   alignment: Alignment.topRight,
        //   children: <Widget>[
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 80,
        //       width: 80,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 140,
        //       width: 20,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),
        child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                color: Colors.white,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.black12,
                      Colors.black45,
                    ],
                  ),
                ),
                child: const Text(
                  'Foreground Text',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text("somehow I made it to the big placeasdasd"),
            // const Expanded(
            //   child: FittedBox(child: FlutterLogo(), fit: BoxFit.contain),
            // ),
            TextButton(
              child: const Text('You shall not pass'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Expanded(child: FlutterLogo()),
            const Expanded(
              child: Text("somehow I made it to the big placeasdasd"),
            ),
            Expanded(
              child: TextButton(
                child: const Text('You shall not pass'),
                onPressed: () {},
              ),
            ),
            const Expanded(
              child: Icon(Icons.sentiment_very_dissatisfied),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = "Jamal";
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(
                'Hello $name. How you you doing today, My friend! ',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text.rich(
                TextSpan(text: 'Hello', children: [
                  TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: 'world',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ]),
              ),
              TextButton(
                  child: const Text('Hey There! Click me!'),
                  onPressed: () {
                    // ignore: avoid_print
                    print("clicked there!");
                  }),
              GestureDetector(
                  child: const Text('No! Click me!'),
                  onTap: () {
                    // ignore: avoid_print
                    print("clicked there!");
                  }),
              InkWell(
                child: const Text("Nah! Click here!"),
                onTap: () {
                  print("Inkwell was clicked!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
