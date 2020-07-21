import 'package:aprendendo_provider/models/saldo.dart';
import 'package:aprendendo_provider/screens/dashboard/saldo_card.dart';
import 'package:aprendendo_provider/screens/depositos/formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bytebakn"),
      ),
      body: ListView(
        children: <Widget>[
          Align(alignment: Alignment.topCenter, child: SaldoCard()),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Receber depósito'),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioDeposito()));
                  },
                ),
                RaisedButton(
                  child: Text('Nova trasferência'),
                  color: Colors.green,
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Formulario()));
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
