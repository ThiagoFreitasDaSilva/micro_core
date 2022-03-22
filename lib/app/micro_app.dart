import 'package:flutter/material.dart';
import 'package:micro_core/micro_core.dart';

abstract class MicroAPP {
  String get microAPPName;

  Map<String, WidgetBuilderArgs> get routes;
}
