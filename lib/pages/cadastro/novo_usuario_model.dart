import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/cadastro/novo_usuario_validador.dart';
import 'package:buscafarma/services/novo_usuario_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'novo_usuario_widget.dart' show NovoUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NovoUsuarioModel extends FlutterFlowModel<NovoUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TXTnome widget.
  FocusNode? tXTnomeFocusNode;
  TextEditingController? tXTnomeTextController;
  String? Function(BuildContext, String?)? tXTnomeTextControllerValidator;
  // State field(s) for TXTCPFf widget.
  FocusNode? tXTCPFfFocusNode;
  TextEditingController? tXTCPFfTextController;
  final tXTCPFfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? tXTCPFfTextControllerValidator;
  // State field(s) for TXTEMAIL widget.
  FocusNode? txtemailFocusNode;
  TextEditingController? txtemailTextController;
  String? Function(BuildContext, String?)? txtemailTextControllerValidator;
  // State field(s) for TXTELEFONE widget.
  FocusNode? txtelefoneFocusNode;
  TextEditingController? txtelefoneTextController;
  final txtelefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? txtelefoneTextControllerValidator;
  // State field(s) for TXTsenha widget.
  FocusNode? tXTsenhaFocusNode;
  TextEditingController? tXTsenhaTextController;
  late bool tXTsenhaVisibility;
  String? Function(BuildContext, String?)? tXTsenhaTextControllerValidator;
  // State field(s) for TXTCONFIRMARS widget.
  FocusNode? txtconfirmarsFocusNode;
  TextEditingController? txtconfirmarsTextController;
  late bool txtconfirmarsVisibility;
  String? Function(BuildContext, String?)? txtconfirmarsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tXTsenhaVisibility = false;
    txtconfirmarsVisibility = false;
  }

  @override
  void dispose() {
    tXTnomeFocusNode?.dispose();
    tXTnomeTextController?.dispose();

    txtemailTextController?.dispose();
    txtemailFocusNode?.dispose();

    tXTCPFfFocusNode?.dispose();
    tXTCPFfTextController?.dispose();

    txtelefoneFocusNode?.dispose();
    txtelefoneTextController?.dispose();

    tXTsenhaFocusNode?.dispose();
    tXTsenhaTextController?.dispose();

    txtconfirmarsFocusNode?.dispose();
    txtconfirmarsTextController?.dispose();
  }

  Future<void> save(BuildContext context) async {
    final validator = NovoUsuarioValidador(
      nome: tXTnomeTextController.text,
      cpf: tXTCPFfTextController.text,
      telefone: txtelefoneTextController.text,
      senha: tXTsenhaTextController.text,
      confirmarSenha: txtconfirmarsTextController.text,
      email: txtemailTextController.text,
    );

    validator.validate();

    if (validator.isValid) {
      try {
        final message = await GetIt.I<NovoUsuarioService>().adicionar(
          validator.generateRequest(),
        );

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message.mensagem),
              action: SnackBarAction(
                label: "OK",
                onPressed: () => context.safePop(),
              ),
            ),
          );
        }

        return;
      } on ErrorHandler catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Ocorreu um erro: ${e.message}")),
          );
        }
      }
    }

    if (context.mounted) {
      final messages =
          validator.notifications.map((n) => Text(n.message)).toList();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: messages,
            ),
          ),
        ),
      );
    }
  }
}
