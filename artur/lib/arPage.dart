import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

ArCoreController arCoreController = ArCoreController();

@override
void dispose() {
  arCoreController.dispose();
}

void onArCoreViewCreated(ArCoreController controller) {
  arCoreController = controller;
}
