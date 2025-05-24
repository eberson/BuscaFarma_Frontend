import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/flutter_flow/flutter_flow_theme.dart';
import 'package:buscafarma/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicamentoWidget extends StatelessWidget {
  final Medicamento medicamento;

  const MedicamentoWidget(this.medicamento, {super.key});

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return Container(
      width: 150,
      height: 500,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xFFD7D7D7),
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        border: Border.all(color: fft.primaryText, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              color: Color(0xFFD7D7D7),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/images/remedio.png').image,
              ),
            ),
          ),
          Text(
            medicamento.nomeQuimico,
            textAlign: TextAlign.center,
            style: GoogleFonts.interTight().copyWith(
              fontWeight: fft.titleSmall.fontWeight,
              fontStyle: fft.titleSmall.fontStyle,
              fontSize: 13,
              letterSpacing: 0,
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
                fontSize: 11,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2, bottom: 2),
            child: Text(
              medicamento.tipoMedicamento == TipoMedicamento.AltoCusto ? "Alto Custo" : "Comum",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter().copyWith(
                fontWeight: fft.bodyMedium.fontWeight,
                fontStyle: fft.bodyMedium.fontStyle,
                letterSpacing: 0,
                fontSize: 11,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2, bottom: 2),
            child: Text(
              medicamento.quantidade,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter().copyWith(
                fontWeight: fft.bodyMedium.fontWeight,
                fontStyle: fft.bodyMedium.fontStyle,
                letterSpacing: 0,
                fontSize: 11,
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Adicionar',
            options: FFButtonOptions(
              width: 120,
              height: 30,
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              color: Color(0xFF397F7E),
              textStyle: GoogleFonts.interTight().copyWith(
                fontWeight: fft.titleSmall.fontWeight,
                fontStyle: fft.titleSmall.fontStyle,
                fontSize: 10,
                letterSpacing: 0,
                color: Colors.white,
              ),
              elevation: 0,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ],
      ),
    );
  }
}
