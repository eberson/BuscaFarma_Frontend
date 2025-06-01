import 'package:buscafarma/components/senha/senha_alterada_widget.dart';
import 'package:buscafarma/nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nova_senha_model.dart';
export 'nova_senha_model.dart';

class NovaSenhaWidget extends StatefulWidget {
  const NovaSenhaWidget({super.key});

  @override
  State<NovaSenhaWidget> createState() => _NovaSenhaWidgetState();
}

class _NovaSenhaWidgetState extends State<NovaSenhaWidget> {
  late NovaSenhaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovaSenhaModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
            alignment: AlignmentDirectional(1, -1),
            child: IconButton(
              icon: Icon(
                Icons.clear,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20,
              ),
              onPressed: () async {
                context.safePop();
              },
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
                    style: GoogleFonts.interTight().copyWith(
                      fontWeight: fft.titleSmall.fontWeight,
                      fontStyle: fft.titleSmall.fontStyle,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: false,
                  obscureText: false,
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
                      letterSpacing: 0.0,
                      fontSize: 16,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
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
                  ),
                  style: GoogleFonts.inter().copyWith(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    letterSpacing: 0.0,
                    fontSize: 16,
                  ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.textController1Validator.asValidator(
                    context,
                  ),
                ),
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
                letterSpacing: 0.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: SizedBox(
                width: 350,
                child: TextFormField(
                  controller: _model.textController2,
                  focusNode: _model.textFieldFocusNode2,
                  autofocus: false,
                  obscureText: false,
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
                      letterSpacing: 0.0,
                      fontSize: 16,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
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
                  ),
                  style: GoogleFonts.inter().copyWith(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    letterSpacing: 0.0,
                    fontSize: 16,
                  ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.textController2Validator.asValidator(
                    context,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: FFButtonWidget(
              onPressed: () async {
                Navigator.pop(context);
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
              },
              text: 'Enviar\n',
              options: FFButtonOptions(
                width: 101.16,
                height: 30,
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: Color(0xD5A10101),
                textStyle: GoogleFonts.interTight().copyWith(
                  fontWeight: fft.titleSmall.fontWeight,
                  fontStyle: fft.titleSmall.fontStyle,
                  letterSpacing: 0.0,
                  color: fft.primaryBackground,
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
