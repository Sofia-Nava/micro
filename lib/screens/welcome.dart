import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:micropigmentacion/screens/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
            child: Center(
              child: Text(
                'Esmeralda Obispo',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            child: Center(
              child: Text(
                'Micropigmentación',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image(
                image: AssetImage('assets/images/ojos.jpeg'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                minWidth: 335.0,
                height: 60.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.pink[100],
                child: Text(
                  'Iniciar ahora',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
