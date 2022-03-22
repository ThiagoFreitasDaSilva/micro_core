import 'package:flutter/material.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/micro_core.dart';

abstract class BaseAPP {
  List<MicroAPP> microAPPs = [];
  late Map<String, WidgetBuilderArgs> baseAPPRoutes;
  final Map<String, WidgetBuilderArgs> routers = {};

  void registerRouters() {
    if (baseAPPRoutes.isNotEmpty) routers.addAll(baseAPPRoutes);
    if (microAPPs.isNotEmpty) {
      for (MicroAPP microAPP in microAPPs) {
        routers.addAll(microAPP.routes);
      }
    }
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    String? routeName = settings.name;
    Object? routeArgs = settings.arguments;

    var navigateTo = routers[routeName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
        builder: (context) => navigateTo.call(context, routeArgs));
  }
}
