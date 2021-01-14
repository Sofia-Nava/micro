import 'package:flutter/material.dart';
import 'package:micropigmentacion/screens/precioos.dart';

class Segundoprocedimiento2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Row(
          children: [Text('Delineado de Ojos')],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  '2do Procedimiento',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 3.0,
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/doslineas.jpeg',
                  colorBlendMode: BlendMode.color,
                  width: 200.0,
                  height: 180.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Precio: \$2200',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 3.0,
                    color: Colors.black,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Duración:',
                style: TextStyle(
                  height: 2.0,
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Text(
                'Retoque:',
                style: TextStyle(
                  height: 2.0,
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Text(
                'Precio de retoque:',
                style: TextStyle(
                  height: 2.0,
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Precioos()));
                  },
                  minWidth: 335.0,
                  height: 60.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.pink[100],
                  child: Text(
                    'Crear Cita',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}