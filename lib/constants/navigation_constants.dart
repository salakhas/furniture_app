import 'package:flutter/material.dart';

class NavigationService {
  NavigationService();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;
}
