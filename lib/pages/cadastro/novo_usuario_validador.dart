import 'package:all_validations_br/all_validations_br.dart';
import 'package:buscafarma/backend/model/novo_usuario.dart';
import 'package:buscafarma/backend/model/perfil.dart';

class NovoUsuarioValidador extends ValidationNotifiable {
  final String nome;
  final String cpf;
  final String telefone;
  final String senha;
  final String confirmarSenha;
  final String email;

  NovoUsuarioValidador({
    required this.nome,
    required this.cpf,
    required this.telefone,
    required this.senha,
    required this.confirmarSenha,
    required this.email,
  }) {
    addNotifications(
      Contract()
          .isEmail(email, "email", "Um e-mail válido deve ser preenchido")
          .isValidCPF(cpf, "cpf", "Um cpf válido deve ser preenchido")
          .isPhoneNumber(
            telefone,
            "telefone",
            "Um telefone válido deve ser informado",
          )
          .isNotNullOrEmpty(nome, "nome", "O nome é obrigatório")
          .hasMinLen(
            senha,
            8,
            "senha",
            "A senha deve conter, ao menos, 8 caracteres",
          )
          .isStrongPassword(
            senha,
            "senha",
            "A senha deve conter pelo menos uma letra maiúscula. Além disso, a senha deve conter pelo menos um número.",
          ),
    );
  }

  void validate() {
    if (senha != confirmarSenha) {
      addNotifications(
        ValidationNotification(
          property: "senha",
          message: "As senhas devem ser iguais",
        ),
      );
    }
  }

  NovoUsuario generateRequest() => NovoUsuario(
    nome: nome,
    cpf: cpf.replaceAll(RegExp(r'[\s-.]'), ""),
    telefone: telefone.replaceAll(RegExp(r'[\s\(\)-]'), ""),
    senha: senha,
    confirmarSenha: confirmarSenha,
    email: email,
    perfil: Perfil.Usuario,
  );
}
