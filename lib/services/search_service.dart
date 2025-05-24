import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class SearchService extends ChangeNotifier {
  TipoMedicamento? _tipoMedicamento;
  String? _pesquisa;

  void filterByTipo(TipoMedicamento tipo) {
    _tipoMedicamento = tipo;
    notifyListeners();
  }

  void filterByText(String pesquisa) {
    _pesquisa = pesquisa;
    notifyListeners();
  }

  bool get estaFiltrandoTipo => tipoMedicamento != null;
  TipoMedicamento? get tipoMedicamento => _tipoMedicamento;

  bool get estaFiltrandoTexto => pesquisa != null;
  String? get pesquisa => _pesquisa;

  List<Medicamento> get filtrados {
    final medicamentoService = GetIt.I<MedicamentoService>();

    if (medicamentoService.medicamentos.isEmpty) {
      medicamentoService.carregar().then((items) => notifyListeners());
      return [];
    }

    return medicamentoService.medicamentos
        .where(_filterByTipoMedicamento)
        .where(_filterByText)
        .toList();
  }

  bool _filterByTipoMedicamento(Medicamento medicamento) {
    if (tipoMedicamento == null) {
      return true;
    }

    return medicamento.tipoMedicamento == tipoMedicamento!;
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
