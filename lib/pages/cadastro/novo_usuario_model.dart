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
  // State field(s) for TXTELEFONE widget.
  FocusNode? txtelefoneFocusNode;
  TextEditingController? txtelefoneTextController;
  final txtelefoneMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? txtelefoneTextControllerValidator;
  // State field(s) for TXTsenha widget.
  FocusNode? tXTsenhaFocusNode;
  TextEditingController? tXTsenhaTextController;
  late bool tXTsenhaVisibility;
  String? Function(BuildContext, String?)? tXTsenhaTextControllerValidator;
  // State field(s) for TXTCONFIRMARS widget.
  FocusNode? txtconfirmarsFocusNode;
  TextEditingController? txtconfirmarsTextController;
  String? Function(BuildContext, String?)? txtconfirmarsTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tXTsenhaVisibility = false;
  }

  @override
  void dispose() {
    tXTnomeFocusNode?.dispose();
    tXTnomeTextController?.dispose();

    tXTCPFfFocusNode?.dispose();
    tXTCPFfTextController?.dispose();

    txtelefoneFocusNode?.dispose();
    txtelefoneTextController?.dispose();

    tXTsenhaFocusNode?.dispose();
    tXTsenhaTextController?.dispose();

    txtconfirmarsFocusNode?.dispose();
    txtconfirmarsTextController?.dispose();
  }
}
