import 'package:buscafarma/backend/model/usuario.dart';
import 'package:buscafarma/components/nav_bar/nav_bar_widget.dart';
import 'package:buscafarma/components/senha/alterar_senha_widget.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:get_it/get_it.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'perfil_model.dart';
export 'perfil_model.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({super.key});

  static String routeName = 'Perfil';
  static String routePath = '/perfil';

  @override
  State<PerfilWidget> createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  late PerfilModel _model;
  Usuario? _usuario;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilModel());

    _model.pesquisaTextController ??= TextEditingController();
    _model.pesquisaFocusNode ??= FocusNode();

    _usuario = GetIt.I<AuthService>().usuario;
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
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [Container(width: 391)],
                                      ),
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
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Container(height: 47),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          width: 350,
                                          height: 41.33,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).myrtleGreen,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Text(
                                                  _usuario?.nome ?? 'NOME',
                                                  textAlign: TextAlign.center,
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
                                                        fontSize: 15,
                                                        color:
                                                            fft.primaryBackground,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          width: 350,
                                          height: 41.3,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).myrtleGreen,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Text(
                                                  _usuario?.cpf ?? 'CPF',
                                                  textAlign: TextAlign.center,
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
                                                        fontSize: 15,
                                                        color:
                                                            fft.primaryBackground,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          width: 350,
                                          height: 41.3,
                                          decoration: BoxDecoration(
                                            color:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).myrtleGreen,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                                child: Text(
                                                  _usuario?.telefone ?? 'TELEFONE',
                                                  textAlign: TextAlign.center,
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
                                                        fontSize: 15,
                                                        color:
                                                            fft.primaryBackground,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(7),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(
                                                      context,
                                                    ).unfocus();
                                                    FocusManager
                                                        .instance
                                                        .primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                          context,
                                                        ),
                                                    child: AlterarSenhaWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                              (value) => safeSetState(() {}),
                                            );
                                          },
                                          text: 'ALTERAR SENHA\n',
                                          icon: Icon(
                                            Icons.logout_rounded,
                                            size: 25,
                                          ),
                                          options: FFButtonOptions(
                                            width: 349.6,
                                            height: 38.54,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  16,
                                                  0,
                                                  16,
                                                  0,
                                                ),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                            color: Color(0xD5A10101),
                                            textStyle: GoogleFonts.interTight()
                                                .copyWith(
                                                  fontWeight:
                                                      fft.titleSmall.fontWeight,
                                                  fontStyle:
                                                      fft.titleSmall.fontStyle,
                                                  letterSpacing: 0.0,
                                                  color: fft.primaryBackground,
                                                ),
                                            elevation: 0,
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () => _model.logout(context),
                                        text: 'SAIR',
                                        icon: Icon(
                                          Icons.logout_rounded,
                                          size: 25,
                                        ),
                                        options: FFButtonOptions(
                                          width: 349.6,
                                          height: 38.5,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                16,
                                                0,
                                                16,
                                                0,
                                              ),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                0,
                                                0,
                                                0,
                                                0,
                                              ),
                                          color: Color(0xD5A10101),
                                          textStyle: GoogleFonts.interTight()
                                              .copyWith(
                                                fontWeight:
                                                    fft.titleSmall.fontWeight,
                                                fontStyle:
                                                    fft.titleSmall.fontStyle,
                                                letterSpacing: 0.0,
                                                color: fft.primaryBackground,
                                              ),
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ],
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
