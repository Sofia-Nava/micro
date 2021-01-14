import 'package:flutter/material.dart';
import 'package:micropigmentacion/screens/cita.dart';

class Perfiladolabios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Row(
          children: [
            Text('Perfilado de Labios',
                style: TextStyle(
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Perfilado de Labios',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 1.0,
                    color: Colors.black,
                    fontSize: 22.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/labios.jpg',
                  colorBlendMode: BlendMode.color,
                  width: 270.0,
                  height: 187.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Precio: \$2500',
                  style: TextStyle(
                    height: 1.0,
                    color: Colors.black,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Retoque: Al mes en el Primer Procedimiento',
                  style: TextStyle(
                    height: 1.0,
                    color: Colors.black,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Retoque despues del primer procedimiento: Cada 6 o 9 meses',
                  style: TextStyle(
                    height: 1.0,
                    color: Colors.black,
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cita()));
                  },
                  minWidth: 335.0,
                  height: 60.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.pink[100],
                  child: Text(
                    'Cita',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
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
