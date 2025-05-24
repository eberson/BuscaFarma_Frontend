import 'package:buscafarma/services/search_service.dart';
import 'package:get_it/get_it.dart';

import '../../components/nav_bar/nav_bar_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
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

  void listenForTextChanges() {
    pesquisaTextController?.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final text = pesquisaTextController?.text;

    if (text != null) {
      if (text.isEmpty) {
        GetIt.I<SearchService>().filterByText("");
        return;
      }

      if (text.length >= 3) {
        GetIt.I<SearchService>().filterByText(text);
        return;
      }
    }
  }

  @override
  void dispose() {
    pesquisaFocusNode?.dispose();
    pesquisaTextController?.removeListener(_onTextChanged);
    pesquisaTextController?.dispose();

    navBarModel.dispose();
  }
}
