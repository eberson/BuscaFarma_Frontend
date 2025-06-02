import 'package:buscafarma/components/caixa/caixa_widget.dart';
import 'package:buscafarma/nav.dart';
import 'package:buscafarma/pages/contato/contato_widget.dart';
import 'package:buscafarma/pages/home/home_widget.dart';
import 'package:buscafarma/pages/perfil/perfil_widget.dart';
import 'package:buscafarma/pages/sacola/sacola_widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());
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
      width: 494.31,
      height: 80,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).myrtleGreen,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    GoRouter.of(context).goNamed(HomeWidget.routeName);
                  },
                  child: Icon(
                    Icons.home_rounded,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 30,
                  ),
                ),
                Text(
                  'MENU',
                  style: GoogleFonts.inter().copyWith(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    color: fft.info,
                    fontSize: 9,
                    letterSpacing: 0.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(ContatoWidget.routeName);
                  },
                  child: Icon(
                    Icons.headset_mic_rounded,
                    color: FlutterFlowTheme.of(context).info,
                    size: 30,
                  ),
                ),
                Text(
                  'CONTATO',
                  style: GoogleFonts.inter().copyWith(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    color: fft.info,
                    fontSize: 9,
                    letterSpacing: 0.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: CaixaWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: FlutterFlowTheme.of(context).info,
                    size: 30,
                  ),
                ),
                Text(
                  'CATEGORIAS',
                  style: GoogleFonts.inter(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    fontSize: 9,
                    color: fft.info,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(SacolaWidget.routeName);
                  },
                  child: Icon(
                    Icons.shopping_bag,
                    color: FlutterFlowTheme.of(context).info,
                    size: 30,
                  ),
                ),
                Text(
                  'SACOLA',
                  style: GoogleFonts.inter(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    fontSize: 9,
                    color: fft.info,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(PerfilWidget.routeName);
                  },
                  child: Icon(
                    Icons.person,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 30,
                  ),
                ),
                Text(
                  'PERFIL',
                  style: GoogleFonts.inter(
                    fontWeight: fft.bodyMedium.fontWeight,
                    fontStyle: fft.bodyMedium.fontStyle,
                    fontSize: 10,
                    color: fft.info,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
