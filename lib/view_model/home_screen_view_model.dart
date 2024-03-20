import 'package:flutter/cupertino.dart';
import '../data/local/local_database.dart';
import '../data/model/zikr_model.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int _counter = 0;
  final int _zikr = 33;
  final LocalDatabase _localDatabase;
  List<ZikrModel> _allZikrModelList = [];

  HomeScreenViewModel(this._localDatabase);

  List<ZikrModel> get allZikrModelList => _allZikrModelList;

  Future<void> fetchZikrs() async {
    _allZikrModelList = await _localDatabase.getAllZikr();
    debugPrint('==========================================$_allZikrModelList');

    notifyListeners();
  }

  Future<void> addZikr(ZikrModel zikr) async {
    await _localDatabase.insertZikr(zikr);
    fetchZikrs();
  }

  void increment() {
    if (_counter < 33) {
      _counter++;
    }
    notifyListeners();
  }

  void resetCounter() {
    _counter = 0;
    notifyListeners();
  }

  Future<void> deleteZikr(int id,) async {
    debugPrint('==========================================$id');
    await _localDatabase.deleteZikr(id);
    notifyListeners();
    fetchZikrs();
  }

  int get getCounter => _counter;

  int get getZikr => _zikr;
}
