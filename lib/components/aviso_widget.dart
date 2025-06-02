import 'package:buscafarma/nav.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'aviso_model.dart';
export 'aviso_model.dart';

class AvisoWidget extends StatefulWidget {
  const AvisoWidget({super.key});

  @override
  State<AvisoWidget> createState() => _AvisoWidgetState();
}

class _AvisoWidgetState extends State<AvisoWidget> {
  late AvisoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoModel());
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
      height: 193.2,
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
                decoration: BoxDecoration(color: Color(0x61397F7E)),
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Text(
                    'MEDICAMENTO RESERVADO \nCOM SUCESSO!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.interTight().copyWith(
                      fontWeight: fft.titleMedium.fontWeight,
                      fontStyle: fft.titleMedium.fontStyle,
                      color: Color(0xFFD10404),
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
              Align(
                alignment: AlignmentDirectional(1, 1),
                child: Text(
                  'Local de Retirada: R. José Bonifácio,\n 885 - Centro, Matão/SP',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.interTight().copyWith(
                    fontWeight: fft.titleMedium.fontWeight,
                    fontStyle: fft.titleMedium.fontStyle,
                    color: fft.engineeringOrange,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
