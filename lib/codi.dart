import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Codi extends StatefulWidget {
  @override
  _CodiState createState() => _CodiState();
}

class _CodiState extends State<Codi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('images/codi_matching.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('images/codi_daily.png'),
               ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
