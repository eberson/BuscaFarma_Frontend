import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/components/nav_bar/nav_bar_model.dart';
import 'package:buscafarma/services/sacola_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'sacola_widget.dart' show SacolaWidget;
import 'package:flutter/material.dart';

class SacolaModel extends FlutterFlowModel<SacolaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Pesquisa widget.
  FocusNode? pesquisaFocusNode;
  TextEditingController? pesquisaTextController;
  String? Function(BuildContext, String?)? pesquisaTextControllerValidator;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.dispose();

    navBarModel.dispose();
  }

  Future<void> reservar(BuildContext context, Function callback) async {
    try {
      final service = GetIt.I<SacolaService>();

      await service.reservar();

      callback();
    } on ErrorHandler catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
        );
      }
    }
  }
}
