import 'package:flutter/material.dart';
import 'package:micropigmentacion/screens/login.dart';
import 'package:micropigmentacion/screens/welcome.dart';
import 'package:micropigmentacion/screens/splash.dart';
import 'package:provider/provider.dart';
import 'Providers/UsrPrv.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsrPrv()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Micropigmentacion',
        home: Scaffold(
          body: PageView(
            children: [
              Splash(),
              Welcome(),
              Login(),
            ],
          ),
        ));
  }
}
