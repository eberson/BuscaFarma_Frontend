import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/request/nova_reserva.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:buscafarma/backend/util/api_util.dart';
import 'package:flutter/material.dart';

class ReservaService extends ChangeNotifier {
  List<Reserva> _reservas = [];

  Future<void> carregar() async {
    //TODO: deve carregar as reservas do usuario somente

    await makeCall(() async {
      final reservas = await API.instance.listaReservas();
      _reservas = reservas;
      notifyListeners();
    });
  }

  Future<Message> adicionar(NovaReserva novaReserva) async {
    return await makeCall(() async {
      return await API.instance.criaReserva(novaReserva);
    });
  }

  List<Reserva> get reservas => _reservas;
}
