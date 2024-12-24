
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/SpinToWin/spin_win_screen.dart';

class HomeController extends ControllerMVC {
  /// singleton
  factory HomeController() {
    _this ??= HomeController._();
    return _this!;
  }

  static HomeController? _this;

  HomeController._();


  @override
  void initState() {
    super.initState();
  }

  void GotoSpin(BuildContext context){
    context.go(SpinWinScreen.routeName);
  }

}