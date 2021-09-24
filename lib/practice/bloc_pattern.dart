import 'dart:async';

import 'package:testing/practice/item_model.dart';

import 'data_repository__1.dart';

class BlocPattern {
  final _repository = DataRepository();
  final _dataResponseSource = StreamController();

}