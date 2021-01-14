import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
     Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image(
                image: AssetImage('assets/images/micro.jpeg'),
              ),
            ),
          );
  }
}