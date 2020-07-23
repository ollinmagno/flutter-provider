import 'package:aprendendo_provider/screens/dashboard/saldo_card.dart';
import 'package:aprendendo_provider/screens/depositos/formulario_deposito.dart';
import 'package:aprendendo_provider/screens/transferencia/formulario_transferencia.dart';
import 'package:flutter/material.dart';

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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormularioTransferencia()));
                  },
                ),
              ],
            ),
        ],
      ),
    );
  }
}
