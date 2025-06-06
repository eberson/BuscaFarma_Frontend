import 'package:buscafarma/components/nav_bar/nav_bar_widget.dart';
import 'package:buscafarma/services/home_search_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
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
    pesquisaTextController?.removeListener(_onTextChanged);

    navBarModel.dispose();
  }

  void listenForTextChanges() {
    pesquisaTextController?.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final text = pesquisaTextController?.text;

    if (text != null) {
      if (text.isEmpty) {
        GetIt.I<HomeSearchService>().filterByText("");
        return;
      }

      if (text.length >= 3) {
        GetIt.I<HomeSearchService>().filterByText(text);
        return;
      }
    }
  }
}
