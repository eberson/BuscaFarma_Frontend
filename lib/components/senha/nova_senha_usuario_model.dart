import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/mudar_senha.dart';
import 'package:buscafarma/backend/util/api_util.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'nova_senha_usuario_widget.dart' show NovaSenhaUsuarioWidget;
import 'package:flutter/material.dart';

class NovaSenhaUsuarioModel extends FlutterFlowModel<NovaSenhaUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  Future<void> alteraSenha(BuildContext context) async {
    try {
      await makeCall(() async {
        await API.instance.alterarSenha(
          MudarSenha(
            senha: textController1.text,
            novaSenha: textController2.text,
            confirmarNovaSenha: textController3.text,
          ),
        );
      });
    } on ErrorHandler catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
        );
      }
    }
  }
}