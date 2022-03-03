import 'package:ezmenu/app/modules/initial/initial_module.dart';
import 'package:ezmenu/app/modules/products/presentation/products_page.dart';
import 'package:ezmenu/app/modules/products/products_module.dart';
import 'package:ezmenu/app/modules/splash/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/initial/presentation/initial_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute(InitialPage.routeId, module: InitialModule()),
    ModuleRoute(ProductsPage.routeId, module: ProductsModule()),
  ];
}
