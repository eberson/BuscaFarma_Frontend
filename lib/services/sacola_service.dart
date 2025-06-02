import 'dart:developer';

import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/model/tipo_atendimento.dart';
import 'package:buscafarma/backend/request/nova_reserva.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

class SacolaService extends ChangeNotifier {
  final List<Medicamento> _medicamentos = [];

  void add(Medicamento medicamento) {
    if (_medicamentos.any((m) => m.id == medicamento.id)) {
      return;
    }

    _medicamentos.add(medicamento);
    notifyListeners();
  }

  void remove(Medicamento medicamento) {
    _medicamentos.removeWhere((m) => m.id == medicamento.id);
    notifyListeners();
  }

  void clear() {
    _medicamentos.clear();
    notifyListeners();
  }

  Future<void> reservar() async {
    final authService = GetIt.I<AuthService>();
    final userId = authService.userId;

    while (_medicamentos.isNotEmpty) {
      final medicamento = _medicamentos[0];

      final novaReserva = NovaReserva(
        usuarioId: userId,
        medicamentoId: medicamento.id,
        data: DateTime.now(),
        imagemReceita: "imagemReceita",
        tipoAtendimento: TipoAtendimento.NaoAtendida,
      );

      try {
        await makeCall(() async {
          await API.instance.criaReserva(novaReserva);
        });

        remove(medicamento);
      } on ErrorHandler catch(e) {
        log("erro ao realizar a reserva do medicamento ${medicamento.nomeQuimico}: $e");
      }
    }
  }

  List<Medicamento> get medicamentos => _medicamentos;
}
