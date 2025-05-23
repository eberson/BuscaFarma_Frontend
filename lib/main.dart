import 'dart:developer';

import 'package:buscafarma/backend/model/categoria.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/get_it_setup.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/categoria_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _auth = GetIt.I<AuthService>();

  final _categoriaService = GetIt.I<CategoriaService>();
  final _medicamentoService = GetIt.I<MedicamentoService>();

  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _auth.addListener(_onServiceChanged);
    _categoriaService.addListener(_onServiceChanged);
    _medicamentoService.addListener(_onServiceChanged);
  }

  @override
  void dispose() {
    _auth.removeListener(_onServiceChanged);
    _categoriaService.removeListener(_onServiceChanged);
    _medicamentoService.removeListener(_onServiceChanged);
    super.dispose();
  }

  _onServiceChanged() {
    setState(() {});
  }

  Future<void> _incrementCounter() async {
    final auth = GetIt.I<LoginService>();
    auth
        .autentica(Credencial(login: "123", senha: "123"))
        .catchError((e) => log("erro: ${e.message}"));

    Future.delayed(Duration(seconds: 5), () {
      final authService = GetIt.I<AuthService>();

      if (authService.isLogado) {
        log("calling /categoria/list");
        GetIt.I<MedicamentoService>().carregar();
      }
    });

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var categorias = _categoriaService.categorias;
    var medicamentos = _medicamentoService.medicamentos;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Esta Autenticado: ${_auth.isLogado}"),
            Text("Token: ${_auth.token}"),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemBuilder:
                    (context, index) =>
                        medicamentos.length > index
                            ? Text(
                              "${medicamentos[index].nomeComercial}: ${medicamentos[index].categoria.descricao}",
                            )
                            : null,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
