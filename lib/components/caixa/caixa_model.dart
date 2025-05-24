import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/search/search_widget.dart';
import 'package:buscafarma/services/search_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'caixa_widget.dart' show CaixaWidget;
import 'package:flutter/material.dart';

class CaixaModel extends FlutterFlowModel<CaixaWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  void searchForHigherCost(BuildContext context) {
    GetIt.I<SearchService>().filterByTipo(TipoMedicamento.AltoCusto);
    context.pushNamed(SearchWidget.routeName);
  }

  void searchForCommon(BuildContext context) {
    GetIt.I<SearchService>().filterByTipo(TipoMedicamento.Comum);
    context.pushNamed(SearchWidget.routeName);
  }
}
