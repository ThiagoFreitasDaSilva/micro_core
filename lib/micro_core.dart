library micro_core;

import 'package:flutter/material.dart';

export './app/base_app.dart';
export './app/micro_app.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);
late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
