import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageURL = 'https://www.refinery29.com/images/9338001.jpg';

  TextStyle headlineTextStyle = new TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  TextStyle bodyTextStyle = new TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 22,
    color: Colors.white,
  );
  TextStyle bodyTextStyle2 = new TextStyle(
    fontWeight: FontWeight.w200,
    fontSize: 20,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FlipCard(
          direction: FlipDirection.HORIZONTAL, 
          front: _buildFront(),
          back: _buildBack(),
        ),
      ),
    );
  }

  Container _buildBack() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Container(
        color: Colors.black54,
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageURL),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Name', style: headlineTextStyle),
                    Text('Jennifer', style: bodyTextStyle)
                  ],
                ),
                Column(
                  children: [
                    Text('Age', style: headlineTextStyle),
                    Text('52', style: bodyTextStyle)
                  ],
                ),
                Column(
                  children: [
                    Text('Country', style: headlineTextStyle),
                    Text('USA', style: bodyTextStyle)
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello my name is Jennifer and i love codingtipps intagram account so if you like his content, Follow him !',
                style: bodyTextStyle2,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildFront() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage(imageURL), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'JENNIFER ANISTON, 52',
                    style: headlineTextStyle,
                  ),
                  Text(
                    'USA',
                    style: bodyTextStyle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
