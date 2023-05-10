import 'package:flutter_modular/flutter_modular.dart';

import 'payment_type_page.dart';

class PaymentTypeModule extends Module {

   @override
   List<Bind> get binds => [];

   @override
   List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => const PaymentTypePage())
   ];

}