import 'package:aprendendo_provider/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context){

  }
  void _criaTransferencia(context){
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);
    final transferenciaValida = _validaTransferencia(numeroConta, valor);

    if(transferenciaValida){
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }

  }
  _validaTransferencia(numeroConta, valor){
    final _camposPreenchidos = numeroConta != null && valor != null;

    return _camposPreenchidos;
  }
}