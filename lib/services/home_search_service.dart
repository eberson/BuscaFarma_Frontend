import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class HomeSearchService extends ChangeNotifier {
  String? _pesquisa;

  void filterByText(String pesquisa) {
    _pesquisa = pesquisa;
    notifyListeners();
  }

  bool get estaFiltrandoTexto => pesquisa != null;
  String? get pesquisa => _pesquisa;

  List<Medicamento> get filtrados {
    final medicamentoService = GetIt.I<MedicamentoService>();

    if (medicamentoService.medicamentos.isEmpty) {
      medicamentoService.carregar().then((items) => notifyListeners());
      return [];
    }

    return medicamentoService.medicamentos
        .where(_filterByText)
        .toList();
  }


  bool _filterByText(Medicamento medicamento) {
    if (pesquisa == null) {
      return true;
    }

    if (pesquisa!.isEmpty) {
      return true;
    }

    var content = pesquisa!.toUpperCase();

    return medicamento.nomeQuimico.toUpperCase().contains(content) ||
        medicamento.descricao.toUpperCase().contains(content);
  }
}
