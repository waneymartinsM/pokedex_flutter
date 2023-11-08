import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_flutter/app/modules/login/presentation/pages/sign_in_page.dart';

class LoginModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const SignInPage());
  }
}
