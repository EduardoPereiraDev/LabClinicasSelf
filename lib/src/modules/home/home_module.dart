import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'home_page.dart';

class HomeModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/home';

  @override
  Map<String, WidgetBuilder> get pages => {'/': (context) => const HomePage()};
}
