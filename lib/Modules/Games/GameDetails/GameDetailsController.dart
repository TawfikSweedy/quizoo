import 'package:flutter/animation.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class GameDetailsController extends ControllerMVC {
  /// singleton
  factory GameDetailsController() {
    _this ??= GameDetailsController._();
    return _this!;
  }

  static GameDetailsController? _this;

  GameDetailsController._();


  @override
  void initState() {
    super.initState();
  }


}
