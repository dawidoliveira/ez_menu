import 'package:ezmenu/app/modules/splash/presentation/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/splash_controller.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(SplashPage.routeId, child: (_, __) => SplashPage()),
  ];
}
