import 'package:flutter/material.dart';

class CustomMaterialPageRoute extends MaterialPageRoute {
  @protected
  bool get hasScopedWillPopCallback {
    return false;
  }

  CustomMaterialPageRoute({
    required WidgetBuilder builder,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        );
}
