import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:micropigmentacion/models/User.dart';
import 'package:flutter/foundation.dart';
import 'package:micropigmentacion/screens/citaas.dart';
import 'dart:async';

class Cita extends StatefulWidget {
  const Cita({Key key}) : super(key: key);
  @override
  _State createState() => _State();
}

_State createState() => _State();

class _State extends State<Cita> {
  String fecha = '';
  String hora = '';
  String servicio = '';
  User user = User();
  final fechaController = TextEditingController();
  final horaController = TextEditingController();
  final servicioController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime _date = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(2022));
    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
    }
  }

  @override
  void dispose() {
    fechaController.dispose();
    servicioController.dispose();
    horaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Row(
          children: [Text('Citas')],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0),
              child: Center(
                child: Text(
                  'Cita',
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
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 50.0),
                child: Image.asset(
                  'assets/images/elegirfechayhora.png',
                  colorBlendMode: BlendMode.color,
                  width: 200.0,
                  height: 180.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.pink[100],
                  child: new Text(
                    'Calendario',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        decoration: TextDecoration.none),
                  ),
                  onPressed: () {
                    _selectDate(context);
                  }),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-ñ-zA-Ñ-Z]+|\s'))
                      ],
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese el servicio que desea';
                        }
                        if (value.contains(new RegExp(r'[0-9]'))) {
                          return 'No puede ingresar numeros';
                        }
                        if (value.length < 4) {
                          return 'Nombre demasiado corto';
                        }
                        user.service = value;
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.shopping_bag_outlined),
                        hintText: 'Servicio',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                          LengthLimitingTextInputFormatter(10),
                        ],
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Ingrese la fecha que desea';
                          }
                          if (value.length < 4) {
                            return 'Nombre demasiado corto';
                          }
                          user.date = value;
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          prefixIcon: Icon(Icons.calendar_today),
                          hintText: 'Fecha',
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                          LengthLimitingTextInputFormatter(10),
                        ],
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Ingrese la hora que desea';
                          }

                          user.time = value;
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 10.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          prefixIcon: Icon(Icons.access_time),
                          hintText: 'Hora',
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 55.0, 0.0, 0.0),
                      child: Center(
                        child: Text(
                          'Nota: Una vez realizada la cita, NO HAY CAMBIOS',
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(10)),
                          width: 250,
                          height: 50,
                          margin: EdgeInsets.only(top: 10),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Citaas()));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Aceptar',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
