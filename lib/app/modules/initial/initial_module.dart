import 'package:ezmenu/app/modules/home/domain/usecases/get_current_location_usecase.dart';
import 'package:ezmenu/app/modules/home/infra/device/location_service.dart';
import 'package:ezmenu/app/modules/home/presentation/home_controller.dart';
import 'package:ezmenu/app/modules/initial/presentation/initial_controller.dart';
import 'package:ezmenu/app/modules/initial/presentation/initial_page.dart';
import 'package:ezmenu/app/modules/visiteds/presentation/visiteds_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geolocator/geolocator.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Geolocator()),
    Bind.lazySingleton((i) => LocationService()),
    Bind.lazySingleton((i) => GetCurrentLocationUsecase(i())),
    Bind.lazySingleton((i) => InitialController()),
    Bind.lazySingleton((i) => HomeController(i())),
    Bind.lazySingleton((i) => VisitedsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => InitialPage()),
  ];
}
