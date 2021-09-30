import 'package:get/get.dart';

import 'package:ordotest/app/modules/home/bindings/home_binding.dart';
import 'package:ordotest/app/modules/home/views/home_view.dart';
import 'package:ordotest/app/modules/test1/bindings/test1_binding.dart';
import 'package:ordotest/app/modules/test1/views/test1_view.dart';
import 'package:ordotest/app/modules/test2/bindings/test2_binding.dart';
import 'package:ordotest/app/modules/test2/views/test2_view.dart';
import 'package:ordotest/app/modules/test3/bindings/test3_binding.dart';
import 'package:ordotest/app/modules/test3/views/test3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEST1,
      page: () => Test1View(),
      binding: Test1Binding(),
    ),
    GetPage(
      name: _Paths.TEST2,
      page: () => Test2View(),
      binding: Test2Binding(),
    ),
    GetPage(
      name: _Paths.TEST3,
      page: () => Test3View(),
      binding: Test3Binding(),
    ),
  ];
}
