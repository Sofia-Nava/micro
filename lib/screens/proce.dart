import 'package:flutter/material.dart';
import 'package:micropigmentacion/screens/cita.dart';

class Proce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Row(
          children: [Text('Nuestros precios')],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Center(
                  child: Text(
                    '2do Procedimiento PHIBROWS',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      height: 2.5,
                      color: Colors.black,
                      fontSize: 30.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/p2 y 3.jpg',
                  colorBlendMode: BlendMode.color,
                  width: 270,
                  height: 187.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Precio: \$2000',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 2.0,
                    color: Colors.black,
                    fontSize: 23.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Duracion: 2 a 3 semanas',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.black,
                    fontSize: 23.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Retoque cada 15 dias',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.black,
                    fontSize: 23.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Precio de retoque: 600',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.black,
                    fontSize: 23.0,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  height: 50,
                  margin: EdgeInsets.only(top: 50),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cita()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'CITA',
                        style: TextStyle(fontSize: 25, color: Colors.pink[300]),
                      ),
                    ),
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
