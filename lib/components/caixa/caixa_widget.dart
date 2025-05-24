import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'caixa_model.dart';
export 'caixa_model.dart';

class CaixaWidget extends StatefulWidget {
  const CaixaWidget({super.key});

  @override
  State<CaixaWidget> createState() => _CaixaWidgetState();
}

class _CaixaWidgetState extends State<CaixaWidget> {
  late CaixaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaixaModel());
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
      width: 216.3,
      height: 257.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).myrtleGreen,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 203.4,
                height: 32.55,
                decoration: BoxDecoration(color: Color(0xFF2F6766)),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'CATEGORIAS',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.interTight().copyWith(
                      fontWeight: fft.titleSmall.fontWeight,
                      fontStyle: fft.titleSmall.fontStyle,
                      color: fft.info,
                      fontSize: 13,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(1, 0),
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'MEDICAMENTOS  DE:',
                    style: GoogleFonts.inter().copyWith(
                      fontWeight: fft.bodyMedium.fontWeight,
                      fontStyle: fft.bodyMedium.fontStyle,
                      color: fft.info,
                      fontSize: 12,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: FFButtonWidget(
                          onPressed: () => _model.searchForHigherCost(context),
                          text: 'ALTO CUSTO',
                          options: FFButtonOptions(
                            height: 30,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              0,
                            ),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: GoogleFonts.interTight().copyWith(
                              fontWeight: fft.titleSmall.fontWeight,
                              fontStyle: fft.titleSmall.fontStyle,
                              color: fft.secondaryText,
                              fontSize: 8,
                              letterSpacing: 0,
                            ),

                            elevation: 0,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: FFButtonWidget(
                          onPressed: () => _model.searchForCommon(context),
                          text: 'COMUNS',
                          options: FFButtonOptions(
                            width: 105,
                            height: 30,
                            padding: EdgeInsetsDirectional.fromSTEB(
                              16,
                              0,
                              16,
                              0,
                            ),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              0,
                            ),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: GoogleFonts.interTight().copyWith(
                              fontWeight: fft.titleSmall.fontWeight,
                              fontStyle: fft.titleSmall.fontStyle,
                              color: fft.secondaryText,
                              fontSize: 8,
                              letterSpacing: 0,
                            ),

                            elevation: 0,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 85.4,
                    height: 93.5,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).myrtleGreen,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset('assets/images/drug.png').image,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
