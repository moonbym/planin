import 'package:flutter/material.dart';

class PageSettings {
  static bool horizontal(context) {
    return MediaQuery.of(context).size.width >
        MediaQuery.of(context).size.height;
  }
}
