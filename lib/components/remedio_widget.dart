import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RemedioWidget extends StatelessWidget {
  final Medicamento medicamento;

  const RemedioWidget(this.medicamento, {super.key});

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 180,
        height: 220,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).lightBlue,
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lightBlue,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: Image.asset('assets/images/remedio.png').image,
                ),
              ),
            ),
            Text(
              medicamento.nomeQuimico,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter().copyWith(
                fontWeight: fft.bodySmall.fontWeight,
                fontStyle: fft.bodySmall.fontStyle,
                letterSpacing: 0,
                color: fft.info,
                fontSize: 13,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                medicamento.descricao,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  letterSpacing: 0,
                  color: fft.info,
                  fontSize: 11,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                medicamento.categoria.descricao,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  letterSpacing: 0,
                  color: fft.info,
                  fontSize: 11,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2),
              child: Text(
                medicamento.quantidade,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter().copyWith(
                  fontWeight: fft.bodyMedium.fontWeight,
                  fontStyle: fft.bodyMedium.fontStyle,
                  letterSpacing: 0,
                  color: fft.info,
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
