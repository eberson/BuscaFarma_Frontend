import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/flutter_flow/flutter_flow_theme.dart';
import 'package:buscafarma/services/sacola_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class SacolaItemWidget extends StatelessWidget {
  final Medicamento medicamento;

  const SacolaItemWidget(this.medicamento, {super.key});

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(color: fft.lightBlue),
          margin: const EdgeInsets.only(right: 12),
          child: Image.asset(
            "assets/images/remedio.png",
            fit: BoxFit.fitHeight,
            width: 85,
            height: 125,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "${medicamento.nomeQuimico}\n${medicamento.categoria.descricao}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.interTight().copyWith(
                    fontWeight: fft.titleSmall.fontWeight,
                    fontStyle: fft.titleSmall.fontStyle,
                    fontSize: 11,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  medicamento.quantidade,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.interTight().copyWith(
                    fontWeight: fft.titleSmall.fontWeight,
                    fontStyle: fft.titleSmall.fontStyle,
                    fontSize: 10,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFCE1F2B),
            borderRadius: BorderRadius.circular(8),                
          ),
          width: 40,
          height: 40,
          child: IconButton(
            icon: Icon(
              Icons.delete,
              color: FlutterFlowTheme.of(context).info,
              size: 24,
            ),
            onPressed: () {
              GetIt.I<SacolaService>().remove(medicamento);
            },
          ),
        ),
      ],
    );
  }
}
