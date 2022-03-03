import 'package:ezmenu/app/modules/products/presentation/my_products/my_products_page.dart';
import 'package:ezmenu/app/modules/products/presentation/products_controller.dart';
import 'package:ezmenu/app/modules/products/presentation/products_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/my_products/my_products_controller.dart';

class ProductsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProductsController()),
    Bind.lazySingleton((i) => MyProductsController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ProductsPage()),
    ChildRoute(
      MyProductsPage.routeId,
      child: (_, args) => MyProductsPage(roomId: args.data),
    ),
  ];
}
