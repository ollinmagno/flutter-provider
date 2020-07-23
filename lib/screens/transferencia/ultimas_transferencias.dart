
import 'package:aprendendo_provider/models/transferencias.dart';
import 'package:aprendendo_provider/screens/transferencia/lista_transferencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _titulo = 'Ùltimas transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Text(_titulo),
        Consumer<Transferencias>(
          builder: (context, transferencias, child){
            final _quantidade = transferencias.transferencias.length;
            int tamanho = 4;
            
            if(_quantidade == 0){
              return SemTransferenciaCadastrada();
            }

            if(_quantidade < 5){
              tamanho = _quantidade;
            }
            return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: tamanho,
              shrinkWrap: true,
              itemBuilder: (context, indice) => ItemTransferencia(transferencias.transferencias[indice]),
            );
          }
        ),
        RaisedButton(
          color: Colors.green,
          child: Text('Ver todas transferências'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListaTransferencias();
            }));
          },
        ),
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(padding: EdgeInsets.all(10),
        child: Text('Você ainda não possui transferências',
        textAlign: TextAlign.center,),
      ),
    );
  }
}