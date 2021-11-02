import 'package:myfirst_mvvm/models/counter_model.dart';

class HomeViewModel {
  String title = "home page MVVM";

  var counterModel = CounterModel();

  getCounter() {
    return counterModel.count;
  }

  inc() {
    counterModel.count++;
  }
}
