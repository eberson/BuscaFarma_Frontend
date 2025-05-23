import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/model/categoria.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CategoriaService extends ChangeNotifier {
  List<Categoria> _categorias = [];

  Future<void> carregar() async {
    try {
      final categorias = await API.instance.listaCategorias();
      _categorias = categorias;
      notifyListeners();
    } catch (e) {
      if (e is DioException) {
        throw ErrorHandler.dioException(error: e);
      }

      throw ErrorHandler.otherException();
    }
  }

  List<Categoria> get categorias => _categorias;
}
