import 'package:micropigmentacion/Providers/UsrPrv.dart';
import 'package:flutter/material.dart';
import 'package:micropigmentacion/models/user.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:micropigmentacion/utils/string_adm.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  User user = User();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UsrPrv userProvider = Provider.of<UsrPrv>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Row(
          children: [
            Text('Registrar',
                style: TextStyle(
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Image.asset(
                  "assets/images/sign_up.png",
                  colorBlendMode: BlendMode.color,
                  width: 270.0,
                  height: 187.0,
                  fit: BoxFit.contain,
                ),
              ),
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
                            RegExp(r'[a-zA-Z]+|\s'))
                      ],
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese su nombre';
                        }
                        if (value.contains(new RegExp(r'[0-9]'))) {
                          return 'No puede ingresar numeros';
                        }
                        if (value.length < 3) {
                          return 'Nombre demasiado corto';
                        }
                        user.name = value;
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
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Nombre',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s'))
                        ],
                        validator: (value) {
                          if (value.isEmpty) {
                            print('No se ingreso Email');
                            return 'Debes de ingresar un Email';
                          }
                          if (!StringAdm.validateEmail(value)) {
                            return 'Ingresa un Email valido';
                          }
                          user.email = value;
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
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese su número de telefono';
                        }

                        user.phone = value;
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
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Telefono',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.length < 4) {
                            return 'Contraseña demasiado corta';
                          }
                          user.password = value;
                          return null;
                        },
                        obscureText: true,
                        obscuringCharacter: "*",
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
                          prefixIcon: Icon(Icons.security_outlined),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (!StringAdm.validatePasswords(
                            value, user.password)) {
                          return 'Las contraseñas no coinciden';
                        }
                        return null;
                      },
                      obscureText: true,
                      obscuringCharacter: "*",
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
                        prefixIcon: Icon(Icons.security_outlined),
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60.0,
                        child: LogginButton(
                            formKey: _formKey,
                            user: user,
                            userProvider: userProvider),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogginButton extends StatelessWidget {
  const LogginButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.user,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);
  final GlobalKey<FormState> _formKey;
  final User user;
  final UsrPrv userProvider;

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (!_formKey.currentState.validate()) {
          return;
        }

        print('Todo bien');
        print(user.email);
        print(user.password);
        final sb = SnackBar(
          content: Text('¡Los datos se han guardado!'),
        );

        Scaffold.of(context).showSnackBar(sb);
        userProvider.user = user;
        userProvider.users = user;
        _formKey.currentState.save();
        await Future.delayed(Duration(seconds: 3));
        Navigator.pop(context);
      },
      child: Text(
        'Crear Cuenta',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23.0,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.pink[300],
        ),
      ),
    );
  }
}
