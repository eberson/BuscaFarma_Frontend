import 'package:buscafarma/components/senha/nova_senha_widget.dart';
import 'package:buscafarma/nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alterar_senha_model.dart';
export 'alterar_senha_model.dart';

class AlterarSenhaWidget extends StatefulWidget {
  const AlterarSenhaWidget({super.key});

  @override
  State<AlterarSenhaWidget> createState() => _AlterarSenhaWidgetState();
}

class _AlterarSenhaWidgetState extends State<AlterarSenhaWidget> {
  late AlterarSenhaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlterarSenhaModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                width: 357.82,
                height: 75.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Text(
                    'ENVIAMOS UM CÓDIGO PARA SEU E-MAIL PARA A ALTERAÇÃO DE SENHA \n',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.interTight().copyWith(
                      fontWeight: fft.titleMedium.fontWeight,
                      fontStyle: fft.titleMedium.fontStyle,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: 100,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle: GoogleFonts.inter().copyWith(
                        fontWeight: fft.labelMedium.fontWeight,
                        fontStyle: fft.labelMedium.fontStyle,
                        color: fft.lightBlue,
                        letterSpacing: 0.0,
                      ),

                      hintText: 'Digite o código enviado para seu e-mail..',
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
                      fillColor: Color(0xD7AACCCB),
                    ),
                    style: GoogleFonts.inter().copyWith(
                      fontWeight: fft.bodyMedium.fontWeight,
                      fontStyle: fft.bodyMedium.fontStyle,
                      fontSize: 16,
                      letterSpacing: 0.0,
                    ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.textControllerValidator.asValidator(
                      context,
                    ),
                  ),
                ),
              ),
            ],
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
                      child: NovaSenhaWidget(),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              text: 'Enviar\n',
              options: FFButtonOptions(
                width: 120,
                height: 38.5,
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: Color(0xD5A10101),
                textStyle: GoogleFonts.interTight().copyWith(
                  fontWeight: fft.titleSmall.fontWeight,
                  fontStyle: fft.titleSmall.fontStyle,
                  color: fft.primaryBackground,
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
