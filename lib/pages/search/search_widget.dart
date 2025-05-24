import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/components/medicamento_widget.dart';
import 'package:buscafarma/services/search_service.dart';
import 'package:get_it/get_it.dart';

import '../../components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  static String routeName = 'Search';
  static String routePath = '/search';

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _searchService = GetIt.I<SearchService>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    _model.pesquisaTextController ??= TextEditingController();
    _model.pesquisaFocusNode ??= FocusNode();
    _model.listenForTextChanges();

    _searchService.addListener(_onFilter);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
    _searchService.removeListener(_onFilter);
  }

  void _onFilter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final fft = FlutterFlowTheme.of(context);

    final tipoMedicamentoDescricao = tipoMedicamentoTexto(_searchService);
    final medicamentos = _searchService.filtrados;

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
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).platinum,
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: AlignmentDirectional(0, -1),
                      margin: const EdgeInsets.only(top: 12, bottom: 12),
                      child: Container(
                        width: 134,
                        height: 134,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).platinum,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset('assets/images/cu.png').image,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 600,
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
                      fillColor: FlutterFlowTheme.of(context).myrtleGreen,
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
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.pesquisaTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  tipoMedicamentoDescricao,
                  style: GoogleFonts.interTight().copyWith(
                    fontStyle: fft.titleSmall.fontStyle,
                    fontWeight: fft.titleSmall.fontWeight,
                    letterSpacing: 0,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // number of items in each row
                  mainAxisSpacing: 4.0, // spacing between rows
                  crossAxisSpacing: 4.0, // spacing between columns
                  mainAxisExtent: 250,
                ),
                itemCount: medicamentos.length,
                itemBuilder:
                    (context, index) => MedicamentoWidget(medicamentos[index]),
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

  String tipoMedicamentoTexto(SearchService service) {
    if (service.estaFiltrandoTipo) {
      return service.tipoMedicamento == TipoMedicamento.AltoCusto
          ? "MEDICAMENTOS ALTO CUSTO:"
          : "MEDICAMENTOS COMUNS:";
    }

    return "";
  }
}
