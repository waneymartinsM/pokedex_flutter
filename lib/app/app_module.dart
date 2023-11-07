import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_flutter/app/modules/login/login_module.dart';

class AppModule extends Module {

  @override
  void binds(i) {

  }
  // @override
  // final List<Bind> binds = [
  // ];

  @override
  void routes(r) {
    ModuleRoute('/', module: LoginModule());
    //    r.child('/', child: (context) => HomePage()),
  }
  // @override
  // final List<ModularRoute> routes = [
  //   ModuleRoute('/', module: LoginModule()),
  // ];

}