import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aprendendo_provider/screens/dashboard/dashboard.dart';
import 'models/saldo.dart';
import 'models/transferencias.dart';

void main() => runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(
      create: (context) => Saldo(0),
    ),
    ChangeNotifierProvider(
      create: (context) => Transferencias(),
    )
  ],
  child: BytebankApp(),
));

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
