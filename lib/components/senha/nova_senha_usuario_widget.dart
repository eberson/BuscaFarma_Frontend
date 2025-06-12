import 'package:buscafarma/components/senha/senha_alterada_widget.dart';
import 'package:buscafarma/nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nova_senha_usuario_model.dart';
export 'nova_senha_usuario_model.dart';

class NovaSenhaUsuarioWidget extends StatefulWidget {
  const NovaSenhaUsuarioWidget({super.key});

  @override
  State<NovaSenhaUsuarioWidget> createState() => _NovaSenhaUsuarioWidgetState();
}

class _NovaSenhaUsuarioWidgetState extends State<NovaSenhaUsuarioWidget> {
  late NovaSenhaUsuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovaSenhaUsuarioModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return Container(
      width: 362.1,
      height: 240.86,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: AlignmentDirectional(-1, -1),
            child: Text(
              'Digite a senha atual:',
              textAlign: TextAlign.center,
              style: GoogleFonts.interTight().copyWith(
                fontWeight: fft.titleSmall.fontWeight,
                fontStyle: fft.titleSmall.fontStyle,
                fontSize: 14,
                letterSpacing: 0.0,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 350,
              child: TextFormField(
                controller: _model.textController1,
                focusNode: _model.textFieldFocusNode1,
                autofocus: false,
                obscureText: !_model.passwordVisibility1,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,
                    fontSize: 14,
                    letterSpacing: 0.0,
                  ),
                  hintText: 'Senha atual',
                  hintStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,
                    letterSpacing: 0.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).lightBlue,
                  suffixIcon: InkWell(
                    onTap:
                        () => safeSetState(
                          () =>
                              _model.passwordVisibility1 =
                                  !_model.passwordVisibility1,
                        ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility1
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  fontSize: 13,
                  letterSpacing: 0.0,
                ),
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.textController1Validator.asValidator(context),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 357.8,
                height: 37.28,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1, -1),
                  child: Text(
                    'Digite a nova senha:',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter().copyWith(
                      fontWeight: fft.titleSmall.fontWeight,
                      fontStyle: fft.titleSmall.fontStyle,
                      fontSize: 14,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              width: 350,
              child: TextFormField(
                controller: _model.textController2,
                focusNode: _model.textFieldFocusNode2,
                autofocus: false,
                obscureText: !_model.passwordVisibility2,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,
                    letterSpacing: 0.0,
                  ),
                  hintText: 'Nova senha',
                  hintStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,
                    fontSize: 14,
                    letterSpacing: 0.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).lightBlue,
                  suffixIcon: InkWell(
                    onTap:
                        () => safeSetState(
                          () =>
                              _model.passwordVisibility2 =
                                  !_model.passwordVisibility2,
                        ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility2
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  fontSize: 16,
                  letterSpacing: 0.0,
                ),
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.textController2Validator.asValidator(context),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, -1),
            child: Text(
              'Confirme a nova senha:',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter().copyWith(
                fontWeight: fft.titleSmall.fontWeight,
                fontStyle: fft.titleSmall.fontStyle,
                fontSize: 14,
                letterSpacing: 0.0,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 350,
              child: TextFormField(
                controller: _model.textController3,
                focusNode: _model.textFieldFocusNode3,
                autofocus: false,
                obscureText: !_model.passwordVisibility3,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,

                    letterSpacing: 0.0,
                  ),
                  hintText: 'Confirmar',
                  hintStyle: GoogleFonts.inter().copyWith(
                    fontWeight: fft.labelMedium.fontWeight,
                    fontStyle: fft.labelMedium.fontStyle,
                    fontSize: 14,
                    letterSpacing: 0.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0x00000000), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).lightBlue,
                  suffixIcon: InkWell(
                    onTap:
                        () => safeSetState(
                          () =>
                              _model.passwordVisibility3 =
                                  !_model.passwordVisibility3,
                        ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility3
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  fontSize: 16,
                  letterSpacing: 0.0,
                ),
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.textController3Validator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: FFButtonWidget(
              onPressed: () async {
                await _model.alteraSenha(context);

                if (context.mounted) {
                  context.safePop();

                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SenhaAlteradaWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                }
              },
              text: 'Enviar\n',
              options: FFButtonOptions(
                width: 101.2,
                height: 30,
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: Color(0xD5A10101),
                textStyle: GoogleFonts.interTight().copyWith(
                  fontWeight: fft.titleSmall.fontWeight,
                  fontStyle: fft.titleSmall.fontStyle,
                  letterSpacing: 0.0,
                ),
                elevation: 0,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}