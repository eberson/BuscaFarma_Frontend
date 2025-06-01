import 'package:buscafarma/components/nav_bar/nav_bar_widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contato_model.dart';
export 'contato_model.dart';

class ContatoWidget extends StatefulWidget {
  const ContatoWidget({super.key});

  static String routeName = 'TelaContato';
  static String routePath = '/telaContato';

  @override
  State<ContatoWidget> createState() => _ContatoWidgetState();
}

class _ContatoWidgetState extends State<ContatoWidget> {
  late ContatoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContatoModel());

  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Container(
                            width: 190,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Color(0xFFE9E9E9),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    Image.asset(
                                      'assets/images/BuscaFarmalogo.png',
                                    ).image,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    'Precisa de ajuda?',
                                    style: GoogleFonts.interTight().copyWith(
                                      fontWeight: fft.titleSmall.fontWeight,
                                      fontStyle: fft.titleSmall.fontStyle,
                                      letterSpacing: 0.0,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Container(
                                      width: 371,
                                      height: 253.8,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(
                                              context,
                                            ).lightBlue,
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color:
                                              FlutterFlowTheme.of(
                                                context,
                                              ).myrtleGreen,
                                          width: 1,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Container(
                                                  width: 155.5,
                                                  height: 34.23,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x8CFFFFFF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                              0,
                                                              0,
                                                            ),
                                                        child: Text(
                                                          ' (16) 3382-5641',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts.interTight().copyWith(
                                                            fontWeight:
                                                                fft
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                fft
                                                                    .titleSmall
                                                                    .fontStyle,
                                                            letterSpacing: 0.0,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                1,
                                                                0,
                                                              ),
                                                          child: Icon(
                                                            Icons.call_outlined,
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).primaryText,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Container(
                                                  width: 155.5,
                                                  height: 34.2,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x8CFFFFFF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                              0,
                                                              0,
                                                            ),
                                                        child: Text(
                                                          '(16)3384-2773',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: GoogleFonts.interTight().copyWith(
                                                            fontWeight:
                                                                fft
                                                                    .titleSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                fft
                                                                    .titleSmall
                                                                    .fontStyle,
                                                            letterSpacing: 0.0,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                1,
                                                                0,
                                                              ),
                                                          child: Icon(
                                                            Icons.call_outlined,
                                                            color:
                                                                FlutterFlowTheme.of(
                                                                  context,
                                                                ).primaryText,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8),
                                                child: Container(
                                                  width: 173.51,
                                                  height: 87.7,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x86F2F6F6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Text(
                                                    ' • Segunda-feira07:00 - 16:00\n • Terça-feira07:00 - 16:00\n • Quarta-feira07:00 - 16:00\n • Quinta-feira07:00 - 16:00\n • Sexta-feira07:00 - 16:00',
                                                    style: GoogleFonts.interTight()
                                                        .copyWith(
                                                          fontWeight:
                                                              fft
                                                                  .titleSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              fft
                                                                  .titleSmall
                                                                  .fontStyle,
                                                          letterSpacing: 0.0,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
    );
  }
}
