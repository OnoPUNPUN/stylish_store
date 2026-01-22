import 'package:flutter/material.dart';

class FocusHelper {
  static void requestFocus(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void unfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
