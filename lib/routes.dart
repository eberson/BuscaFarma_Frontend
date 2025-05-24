import 'package:buscafarma/pages/home/home_widget.dart';
import 'package:buscafarma/pages/login/login_widget.dart';
import 'package:buscafarma/pages/search/search_widget.dart';

import 'nav.dart';

List<FFRoute> routes = [
  FFRoute(
    name: '_initialize',
    path: '/',
    builder: (context, _) => const LoginWidget(),
    // builder: (context, _) => AppStateNotifier.instance.loggedIn ? const NavBarPage() : const LoginWidget(),
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
];
