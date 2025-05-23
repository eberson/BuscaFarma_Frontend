import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:flutter/foundation.dart';

class MedicamentoService extends ChangeNotifier {
  List<Medicamento> _medicamentos = [];

  Future<void> carregar() {
    return makeCall(() async {
      final medicamentos = await API.instance.listaMedicamentos();
      _medicamentos = medicamentos;
      notifyListeners();
    });
  }

  List<Medicamento> get medicamentos => _medicamentos;
}
