import 'package:asyncstate/asyncstate.dart';
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:signals/signals.dart';
import '../../../services/user_login/user_login_service.dart';

class LoginController with MessageStateMixin {
  LoginController({
    required UserLoginService loginService,
  }) : _loginService = loginService;

  final UserLoginService _loginService;
  final _obscurePassword = signal(true);
  final _logged = signal(false);

  bool get obscurePassword => _obscurePassword.value;
  bool get logged => _logged.value;

  void passwordToggle() => _obscurePassword.value = !_obscurePassword.value;

  Future<void> login(String email, String password) async {
    final result = await _loginService
        .execute(email: email, password: password)
        .asyncLoader();

    switch (result) {
      case Left(value: final exception):
        showError(exception.message);
      case Right(value: _):
        _logged.value = true;
    }
  }
}
