import 'dart:io';

import 'package:buscafarma/components/aviso_widget.dart';
import 'package:buscafarma/components/nav_bar/nav_bar_widget.dart';
import 'package:buscafarma/components/sacola_item_widget.dart';
import 'package:buscafarma/services/sacola_service.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:image/image.dart' as img;

import 'sacola_model.dart';
export 'sacola_model.dart';

class SacolaWidget extends StatefulWidget {
  const SacolaWidget({super.key});

  static String routeName = 'Sacola';
  static String routePath = '/sacola';

  @override
  State<SacolaWidget> createState() => _SacolaWidgetState();
}

class _SacolaWidgetState extends State<SacolaWidget> {
  late SacolaModel _model;

  final _picker = ImagePicker();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _sacolaService = GetIt.I<SacolaService>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SacolaModel());

    _model.pesquisaTextController ??= TextEditingController();
    _model.pesquisaFocusNode ??= FocusNode();

    _sacolaService.addListener(_onSacolaChanged);
  }

  @override
  void dispose() {
    _model.dispose();
    _sacolaService.removeListener(_onSacolaChanged);

    super.dispose();
  }

  void _onSacolaChanged() {
    setState(() {});
  }

  Future<void> takePhoto() async {
    try {
      final photo = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
      );

      if (photo != null) {
        final bytes = await photo.readAsBytes();
        final image = img.decodeImage(bytes);

        GetIt.I<SacolaService>().setPrescription(image);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Ocorreu um erro: ${e.toString()}")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);
    final medicamentos = _sacolaService.medicamentos;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE9E9E9),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                width: 190,
                height: 160,
                child: Image.asset(
                  'assets/images/BuscaFarmalogo.png',
                  width: 190,
                  height: 160,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'SEUS MEDICAMENTOS:',
                          style: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            letterSpacing: 0.0,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.maxFinite,
                      height: 250,
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        color: fft.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: ListView.builder(
                        itemCount: medicamentos.length,
                        itemBuilder:
                            (context, index) =>
                                SacolaItemWidget(medicamentos[index]),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: fft.lightBlue,
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 4),
                                    alignment: AlignmentDirectional(1, 0),
                                    child: Text(
                                      'Envie uma foto da receita',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.interTight().copyWith(
                                        fontWeight: fft.titleSmall.fontWeight,
                                        fontStyle: fft.titleSmall.fontStyle,
                                        letterSpacing: 0.0,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1, 0),
                                    child: IconButton(
                                      iconSize: 40,
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).lightBlue,
                                      icon: Icon(
                                        Icons.add_a_photo_outlined,
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        await takePhoto();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.reservar(context, () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                              context,
                                            ),
                                            child: AvisoWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  });
                                },
                                text: 'Reservar',
                                options: FFButtonOptions(
                                  width: 100,
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
                                  color: Colors.white,
                                  textStyle: GoogleFonts.interTight().copyWith(
                                    fontWeight: fft.titleSmall.fontWeight,
                                    fontStyle: fft.titleSmall.fontStyle,
                                    letterSpacing: 0.0,
                                    color: Color(0xFF0E4645),
                                  ),
                                  elevation: 0,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12, bottom: 12),
                          padding: const EdgeInsets.all(12),
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xEEFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: fft.secondaryBackground,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  'ALERTA IMPORTANTE!',
                                  style: GoogleFonts.interTight().copyWith(
                                    fontWeight: fft.titleSmall.fontWeight,
                                    fontStyle: fft.titleSmall.fontStyle,
                                    letterSpacing: 0.0,
                                    fontSize: 14,
                                    color: Color(0xFFD60000),
                                  ),
                                ),
                              ),
                              Text(
                                'Para garantir a sua coleta, é necessário que você retire os produtos no prazo máximo de 6 horas após a reserva.\nLembre-se: A entrega dos medicamentos será realizada somente mediante apresentação da receita médica original no momento da retirada.\nEvite transtornos! Se não retirar no prazo indicado, a reserva será cancelada automaticamente.\nAgradecemos pela compreensão e estamos à disposição para qualquer dúvida.',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.interTight().copyWith(
                                  fontWeight: fft.titleMedium.fontWeight,
                                  fontStyle: fft.titleMedium.fontStyle,
                                  letterSpacing: 0.0,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
