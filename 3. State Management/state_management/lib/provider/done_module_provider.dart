import 'package:flutter/foundation.dart';

class DoneModuleProvider extends ChangeNotifier {
  final List<String> _doneModuleList = [];

  List<String> get doneModuleList => _doneModuleList;

  void complele(String moduleName) {
    _doneModuleList.add(moduleName);
    //akan memberitahu kepada widget yang menggunakan state ini (ModulePage),bila terjadi perubahan
    notifyListeners();
  }
}
