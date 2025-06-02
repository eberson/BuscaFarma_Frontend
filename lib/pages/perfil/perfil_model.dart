import 'package:buscafarma/components/nav_bar/nav_bar_model.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/login/login_widget.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
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

  void logout(BuildContext context) {
    GetIt.I<AuthService>().onLogout();
    GoRouter.of(context).goNamed(LoginWidget.routeName);
  }

  
}
