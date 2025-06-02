import 'package:buscafarma/pages/cadastro/novo_usuario_widget.dart';
import 'package:buscafarma/pages/contato/contato_widget.dart';
import 'package:buscafarma/pages/home/home_widget.dart';
import 'package:buscafarma/pages/login/login_widget.dart';
import 'package:buscafarma/pages/perfil/perfil_widget.dart';
import 'package:buscafarma/pages/sacola/sacola_widget.dart';
import 'package:buscafarma/pages/search/search_widget.dart';

import 'nav.dart';

List<FFRoute> routes = [
  FFRoute(
    name: '_initialize',
    path: '/',
    builder: (context, _) => const LoginWidget(),
  ),
  FFRoute(
    name: LoginWidget.routeName,
    path: LoginWidget.routePath,
    builder: (context, _) => const LoginWidget(),
  ),
  FFRoute(
    name: HomeWidget.routeName,
    path: HomeWidget.routePath,
    builder: (context, _) => const HomeWidget(),
  ),
  FFRoute(
    name: SearchWidget.routeName,
    path: SearchWidget.routePath,
    builder: (context, _) => const SearchWidget(),
  ),
  FFRoute(
    name: NovoUsuarioWidget.routeName,
    path: NovoUsuarioWidget.routePath,
    builder: (context, _) => const NovoUsuarioWidget(),
  ),
  FFRoute(
    name: ContatoWidget.routeName,
    path: ContatoWidget.routePath,
    builder: (context, _) => const ContatoWidget(),
  ),
  FFRoute(
    name: PerfilWidget.routeName,
    path: PerfilWidget.routePath,
    builder: (context, _) => const PerfilWidget(),
  ),
  FFRoute(
    name: SacolaWidget.routeName,
    path: SacolaWidget.routePath,
    builder: (context, _) => const SacolaWidget(),
  ),
];
