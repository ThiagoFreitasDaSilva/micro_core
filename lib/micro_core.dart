library micro_core;

import 'package:flutter/material.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);
late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
