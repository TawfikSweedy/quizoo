
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:quizoo/Modules/Games/GameDetails/gameDetails_screen.dart';

class SpinWinController extends ControllerMVC {
  /// singleton
  factory SpinWinController() {
    _this ??= SpinWinController._();
    return _this!;
  }

  static SpinWinController? _this;

  SpinWinController._();


  @override
  void initState() {
    super.initState();
  }

  void GotoGameDetails(BuildContext context){
    context.go(GamedetailsScreen.routeName);
  }

}