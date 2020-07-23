import 'package:flutter/material.dart';
import 'package:aprendendo_provider/models/transferencia.dart';

class Transferencias extends ChangeNotifier {
  final List<Transferencia> _transferencias = [];

  //List<Transferencia> get transferencias => _transferencias;

  adiciona(Transferencia novaTransferencia){
    _transferencias.add(novaTransferencia);

    notifyListeners();
  }
}
