import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  double _valor;

  Saldo(this._valor);

  void adiciona(double valor){
    this._valor += valor;

    notifyListeners();
  }
  void subtrai(double valor){
    this._valor -= valor;

    notifyListeners();
  }

  @override
  String toString(){
    return 'R\S $_valor';
  }
}