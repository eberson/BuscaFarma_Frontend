import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/model/novo_usuario.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:flutter/material.dart';

class NovoUsuarioService extends ChangeNotifier {
  Future<Message> adicionar(NovoUsuario usuario) async {
    return await makeCall(() async {
      final message = await API.instance.criaUsuario(usuario);
      notifyListeners();

      return message;
    });
  }
}