import 'package:buscafarma/nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'senha_alterada_model.dart';
export 'senha_alterada_model.dart';

class SenhaAlteradaWidget extends StatefulWidget {
  const SenhaAlteradaWidget({super.key});

  @override
  State<SenhaAlteradaWidget> createState() => _SenhaAlteradaWidgetState();
}

class _SenhaAlteradaWidgetState extends State<SenhaAlteradaWidget> {
  late SenhaAlteradaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SenhaAlteradaModel());
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
      alignment: AlignmentDirectional(0, 0),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 357.8,
                  height: 44.18,
                  decoration: BoxDecoration(color: Color(0xCDA90B0B)),
                  child: Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Text(
                      'SENHA ALTERADA!!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.interTight().copyWith(
                        fontWeight: fft.titleMedium.fontWeight,
                        fontStyle: fft.titleMedium.fontStyle,
                        color: fft.primaryBackground,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: 'Ok',
                options: FFButtonOptions(
                  width: 120,
                  height: 33.53,
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: FlutterFlowTheme.of(context).success,
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
      ),
    );
  }
}
