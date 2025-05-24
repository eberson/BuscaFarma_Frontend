import '../caixa/caixa_widget.dart';
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
        color: Color(0xA8249689),
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
                    fontSize: 10,
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
                    // context.pushNamed(Tela4Widget.routeName);
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
                    fontSize: 10,
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
                    // context.pushNamed(Tela5Widget.routeName);
                  },
                  child: Icon(
                    Icons.headset_mic_rounded,
                    color: FlutterFlowTheme.of(context).info,
                    size: 30,
                  ),
                ),
                Text(
                  'FALE COM A GENTE',
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
