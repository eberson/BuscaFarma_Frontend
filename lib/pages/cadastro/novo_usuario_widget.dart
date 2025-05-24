import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'novo_usuario_model.dart';
export 'novo_usuario_model.dart';

class NovoUsuarioWidget extends StatefulWidget {
  const NovoUsuarioWidget({super.key});

  static String routeName = 'NovoUsuario';
  static String routePath = '/novoUsuario';

  @override
  State<NovoUsuarioWidget> createState() => _NovoUsuarioWidgetState();
}

class _NovoUsuarioWidgetState extends State<NovoUsuarioWidget>
    with TickerProviderStateMixin {
  late NovoUsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NovoUsuarioModel());

    _model.tXTnomeTextController ??= TextEditingController();
    _model.tXTnomeFocusNode ??= FocusNode();

    _model.tXTCPFfTextController ??= TextEditingController();
    _model.tXTCPFfFocusNode ??= FocusNode();

    _model.txtelefoneTextController ??= TextEditingController();
    _model.txtelefoneFocusNode ??= FocusNode();

    _model.tXTsenhaTextController ??= TextEditingController();
    _model.tXTsenhaFocusNode ??= FocusNode();

    _model.txtconfirmarsTextController ??= TextEditingController();
    _model.txtconfirmarsFocusNode ??= FocusNode();

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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: AlignmentDirectional(0, -1),
                  child: Container(
                    width: 134,
                    height: 134,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              12,
                              0,
                              24,
                            ),
                            child: Text(
                              'Cadastre seus dados :',
                              style: GoogleFonts.interTight().copyWith(
                                fontWeight: fft.titleSmall.fontWeight,
                                fontStyle: fft.titleSmall.fontStyle,
                                color: Color(0xFF787878),
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              16,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.tXTnomeTextController,
                                focusNode: _model.tXTnomeFocusNode,
                                autofocus: true,
                                autofillHints: [AutofillHints.name],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Nome',
                                  labelStyle: GoogleFonts.inter().copyWith(
                                    fontWeight: fft.labelMedium.fontWeight,
                                    fontStyle: fft.labelMedium.fontStyle,
                                    letterSpacing: 0.0,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.tXTnomeTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              16,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.tXTCPFfTextController,
                                focusNode: _model.tXTCPFfFocusNode,
                                autofocus: true,
                                autofillHints: [AutofillHints.email],
                                textCapitalization: TextCapitalization.none,
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
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                                maxLength: 14,
                                maxLengthEnforcement: MaxLengthEnforcement.none,
                                buildCounter:
                                    (
                                      context, {
                                      required currentLength,
                                      required isFocused,
                                      maxLength,
                                    }) => null,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.tXTCPFfTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.tXTCPFfMask],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              16,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.txtelefoneTextController,
                                focusNode: _model.txtelefoneFocusNode,
                                autofocus: true,
                                autofillHints: [AutofillHints.telephoneNumber],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Telefone',
                                  labelStyle: GoogleFonts.inter().copyWith(
                                    fontWeight: fft.labelMedium.fontWeight,
                                    fontStyle: fft.labelMedium.fontStyle,
                                    letterSpacing: 0.0,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                                keyboardType: TextInputType.phone,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .txtelefoneTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.txtelefoneMask],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              16,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.tXTsenhaTextController,
                                focusNode: _model.tXTsenhaFocusNode,
                                autofocus: false,
                                autofillHints: [AutofillHints.password],
                                obscureText: !_model.tXTsenhaVisibility,
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
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                              _model.tXTsenhaVisibility =
                                                  !_model.tXTsenhaVisibility,
                                        ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.tXTsenhaVisibility
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
                                  fontWeight: fft.labelSmall.fontWeight,
                                  fontStyle: fft.labelSmall.fontStyle,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .tXTsenhaTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0,
                              0,
                              0,
                              16,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.txtconfirmarsTextController,
                                focusNode: _model.txtconfirmarsFocusNode,
                                autofocus: true,
                                autofillHints: [AutofillHints.password],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Confirme sua Senha',
                                  labelStyle: GoogleFonts.inter().copyWith(
                                    fontWeight: fft.labelMedium.fontWeight,
                                    fontStyle: fft.labelMedium.fontStyle,
                                    letterSpacing: 0.0,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(
                                            context,
                                          ).alternate,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .txtconfirmarsTextControllerValidator
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
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Cadastrar',
                            options: FFButtonOptions(
                              width: 170,
                              height: 50,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0,
                                0,
                                0,
                                0,
                              ),
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
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
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
      ),
    );
  }
}
