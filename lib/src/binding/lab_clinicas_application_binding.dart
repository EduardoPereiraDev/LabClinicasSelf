import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
//import 'package:fe_lab_clinicas_self_service/src/core/environment/env.dart';
import 'package:flutter_getit/flutter_getit.dart';
import '../core/environment/env.dart';


class LabClinicasApplicationBinding extends ApplicationBindings {
  
  @override
  List<Bind<Object>> bindings() => [
        Bind.lazySingleton<RestClient>(
          (i) => RestClient(Env.backendBaseUrl),
        ),
      ];
}
