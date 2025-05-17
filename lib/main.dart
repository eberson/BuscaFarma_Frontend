import 'dart:developer';

import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/backend/token_interceptor.dart';
import 'package:buscafarma/providers/auth.dart';
import 'package:buscafarma/providers/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        AuthProvider.create(),
        ProxyProvider<AuthProvider, Dio>(
          update: (context, auth, previous) {
            final dio = buildDio();
            dio.interceptors.add(TokenInterceptor(auth));
            return dio;
          },
        ),
        ProxyProvider<Dio, API>(update: (context, dio, previous) => API(dio)),
        ProxyProvider2<API, AuthProvider, UserProvider>(
          update: (context, api, auth, _) => UserProvider(api: api, auth: auth),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  int _counter = 0;

  void _incrementCounter() {
    final auth = Provider.of<UserProvider>(context, listen: false);
    auth
        .autentica(Credencial(login: "45342868807", senha: "batata"))
        .catchError((e) => log("erro: ${e.message}"));

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Esta autenticado: ${auth.isLogado}"),
            Text("Token: ${auth.token}"),
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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
