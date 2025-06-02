import 'package:buscafarma/components/nav_bar/nav_bar_model.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'contato_widget.dart' show ContatoWidget;
import 'package:flutter/material.dart';

class ContatoModel extends FlutterFlowModel<ContatoWidget> {
  ///  State fields for stateful widgets in this page.


  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
