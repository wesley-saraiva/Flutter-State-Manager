// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter_state_manager/bloc_pattern/imc_state.dart';

class BlocPatternsController {
  final _imcStremController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0));
  Stream<ImcState> get imcOut => _imcStremController.stream;

  Future<void> calcularImc(
      {required double peso, required double altura}) async {
    try {
      _imcStremController.add(ImcStateLoading());
      await Future.delayed(Duration(seconds: 1));
      final imc = peso / pow(altura, 2);
      // throw Exception();
      _imcStremController.add(ImcState(imc: imc));
    } on Exception catch (e) {
      _imcStremController.add(ImcStateError(mesage: 'Erro ao calcular IMC'));
    }
  }

  void dispose() {
    _imcStremController.close();
  }
}
