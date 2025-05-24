import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/cadastro/novo_usuario_widget.dart';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  static String routeName = 'login';
  static String routePath = '/login';

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.cpfTextController ??= TextEditingController();
    _model.cpfFocusNode ??= FocusNode();

    _model.senhaTextController ??= TextEditingController();
    _model.senhaFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder:
            () => [
              FadeEffect(
                curve: Curves.easeInOut,
                delay: 0.0.ms,
                duration: 300.0.ms,
                begin: 0.0,
                end: 1.0,
              ),
              MoveEffect(
                curve: Curves.easeInOut,
                delay: 0.0.ms,
                duration: 300.0.ms,
                begin: Offset(0.0, 60.0),
                end: Offset(0.0, 0.0),
              ),
              TiltEffect(
                curve: Curves.easeInOut,
                delay: 0.0.ms,
                duration: 300.0.ms,
                begin: Offset(-0.349, 0),
                end: Offset(0, 0),
              ),
            ],
      ),
    });
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
        backgroundColor: Color(0xFFE9E9E9),
        body: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9E9E9),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset('assets/images/cu.png').image,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 25),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                          child: Text(
                            'Informe seus dados:',
                            style: GoogleFonts.interTight().copyWith(
                              fontWeight: fft.titleSmall.fontWeight,
                              fontStyle: fft.titleSmall.fontStyle,
                              color: Color(0xFF787878),
                              letterSpacing: 0.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.cpfTextController,
                              focusNode: _model.cpfFocusNode,
                              autofocus: true,
                              autofillHints: [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'CPF',
                                labelStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0.0,
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                filled: true,
                                fillColor: Color(0xFFA8A8A8),
                                contentPadding: EdgeInsets.all(24),
                              ),
                              style: GoogleFonts.inter().copyWith(
                                fontWeight: fft.labelSmall.fontWeight,
                                fontStyle: fft.labelSmall.fontStyle,
                                letterSpacing: 0.0,
                                color: Colors.white,
                              ),

                              keyboardType: TextInputType.emailAddress,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.cpfTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.senhaTextController,
                              focusNode: _model.senhaFocusNode,
                              autofocus: false,
                              autofillHints: [AutofillHints.password],
                              obscureText: !_model.senhaVisibility,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                labelStyle: GoogleFonts.inter().copyWith(
                                  fontWeight: fft.labelMedium.fontWeight,
                                  fontStyle: fft.labelMedium.fontStyle,
                                  letterSpacing: 0.0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                filled: true,
                                fillColor: Color(0xFFA8A8A8),
                                contentPadding: EdgeInsets.all(24),
                                suffixIcon: InkWell(
                                  onTap:
                                      () => safeSetState(
                                        () =>
                                            _model.senhaVisibility =
                                                !_model.senhaVisibility,
                                      ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.senhaVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color:
                                        FlutterFlowTheme.of(
                                          context,
                                        ).secondaryText,
                                    size: 24,
                                  ),
                                ),
                              ),
                              style: GoogleFonts.inter().copyWith(
                                fontWeight: fft.bodyMedium.fontWeight,
                                fontStyle: fft.bodyMedium.fontStyle,
                                letterSpacing: 0.0,
                                color: Colors.white,
                              ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.senhaTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await _model.login(context);
                        },
                        text: 'Entrar',
                        options: FFButtonOptions(
                          width: 170,
                          height: 50,
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                            0,
                            0,
                            0,
                            0,
                          ),
                          color: Color(0xFF397F7E),
                          textStyle: GoogleFonts.interTight().copyWith(
                            fontWeight: fft.titleSmall.fontWeight,
                            fontStyle: fft.titleSmall.fontStyle,
                            letterSpacing: 0.0,
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        context.pushNamed(NovoUsuarioWidget.routeName);
                      },
                      text: 'ou clique aqui para se cadastrar',
                      options: FFButtonOptions(
                        height: 30,
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: FlutterFlowTheme.of(context).platinum,
                        textStyle: GoogleFonts.inter().copyWith(
                          fontWeight: fft.bodyMedium.fontWeight,
                          fontStyle: fft.bodyMedium.fontStyle,
                          color: Color(0xFF787878),
                          fontSize: 11,
                          letterSpacing: 0.0,
                        ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).platinum,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset('assets/images/pau.png').image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
