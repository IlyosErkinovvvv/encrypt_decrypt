import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

// LOCAL SERVICE AROUND THE PROJECT

class LocalDBService {
  // ALL BOX WILL BE OPENED HERE
  static openBox() async {
    await Hive.openBox("currency");
  }

  // ALL BOX WILL BE FILLED UP HERE
  static putToBox({required dynamic data, required String boxName}) async {
    clearBox(boxName);
    for (var element in data) {
      debugPrint(element);
    }
  }

  // SPECIFIC BOX WILL  BE CLEARED ACCORDING WITH boxName
  static clearBox(String boxName) {}

  // SPECIFIC BOX WILL BE DELETED ACCORDING WITH boxName
  static deleteBox() {}
}
