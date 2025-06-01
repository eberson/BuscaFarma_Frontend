import 'dart:developer';

import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/components/nav_bar/nav_bar_widget.dart';
import 'package:buscafarma/components/remedio_widget.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'Home';
  static String routePath = '/home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Medicamento> _medicamentos = [];

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.pesquisaTextController ??= TextEditingController();
    _model.pesquisaFocusNode ??= FocusNode();

    carregaMedicamentos();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> carregaMedicamentos() async {
    try {
      final service = GetIt.I<MedicamentoService>();

      if (service.medicamentos.isEmpty) {
          await GetIt.I<MedicamentoService>().carregar();
      }

      setState(() {
        _medicamentos = service.medicamentos;
      });
    } catch(e) {
      log("ocorreu um erro: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).platinum,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: AlignmentDirectional(0, -1),
              margin: const EdgeInsets.only(top: 12),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset('assets/images/BuscaFarmalogo.png').image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Container(
                            width: 600,
                            margin: const EdgeInsets.only(bottom: 12),
                            child: TextFormField(
                              controller: _model.pesquisaTextController,
                              focusNode: _model.pesquisaFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0,
                                ),
                                hintText: 'O que você está buscando?',
                                hintStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0,
                                  color: fft.info,
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
                                fillColor:
                                    FlutterFlowTheme.of(context).myrtleGreen,
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              style: GoogleFonts.inter().copyWith(
                                fontWeight: fft.bodyMedium.fontWeight,
                                fontStyle: fft.bodyMedium.fontStyle,
                                letterSpacing: 0,
                                color: fft.info,
                              ),
                              textAlign: TextAlign.start,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.pesquisaTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Container(
                          width: 391.4,
                          height: 262.2,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(
                                  context,
                                ).secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  Image.asset(
                                    'assets/images/ALKLMKMMM.png',
                                  ).image,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'BuscaFarma',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto().copyWith(
                          fontWeight: fft.displaySmall.fontWeight,
                          fontStyle: fft.displaySmall.fontStyle,
                          letterSpacing: 0,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'O aplicativo permite que pacientes reservem seus medicamentos para retirar na farmácia pública, facilitando o seu dia-a-dia.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
              decoration: BoxDecoration(
                color: Color(0xFF397F7E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _medicamentos.length,
                itemBuilder: (context, index) => RemedioWidget(_medicamentos[index]),
              ),
            ),
            wrapWithModel(
              model: _model.navBarModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: NavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
