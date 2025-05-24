import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/home/home_widget.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }

  Future<void> login(BuildContext context) async {
    try {
      await GetIt.I<LoginService>().autentica(
        Credencial(
          login: cpfTextController.text,
          senha: senhaTextController.text,
        ),
      );

      if (GetIt.I<AuthService>().isLogado && context.mounted) {
        context.pushNamed(HomeWidget.routeName);
      }
    } on ErrorHandler catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
        );
      }
    }
  }
}
