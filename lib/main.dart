import 'dart:developer';

import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/get_it_setup.dart';
import 'package:buscafarma/providers/auth.dart';
import 'package:buscafarma/providers/login.dart';
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
  final _auth = GetIt.I<Auth>();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _auth.addListener(_onAuthChanged);
  }

  @override
  void dispose() {
    _auth.removeListener(_onAuthChanged);
    super.dispose();
  }

  _onAuthChanged() {
    setState(() {});
  }

  void _incrementCounter() {
    final auth = GetIt.I<Login>();
    auth
        .autentica(Credencial(login: "45342868807", senha: "batata"))
        .catchError((e) => log("erro: ${e.message}"));

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Esta Autenticado: ${_auth.isLogado}"),
            Text("Token: ${_auth.token}")
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
