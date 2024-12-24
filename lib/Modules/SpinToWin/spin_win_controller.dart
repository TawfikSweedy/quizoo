
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


  bool isSpin = false;

  // void _onPressed() {
  //   setState(() {
  //     _isSpin = !_isSpin; // تغيير النص عند الضغط
  //   });
  //
  //   if (_isSpin) {
  //     // الانتقال إلى الشاشة الأخرى عند الضغط مرة ثانية
  //     context.go('/second'); // استبدل '/second' بالمسار الخاص بك
  //   }
  // }

  @override
  void initState() {
    super.initState();
  }

  void GotoGameDetails(BuildContext context){
    context.go(GamedetailsScreen.routeName);
  }

  late AnimationController animationController;
  final ValueNotifier<double> rotationNotifier = ValueNotifier(0.0);

  // Initialize AnimationController
  void initialize(AnimationController controller) {
    animationController = controller;
    animationController.addListener(() {
      rotationNotifier.value = animationController.value;
    });
  }

  // Start the spin
  void startSpin() {
    animationController.duration = const Duration(seconds: 1);
    animationController.repeat();
    Future.delayed(const Duration(seconds: 1), () {
      animationController.stop(); // Stop after 5 seconds
    });
  }

  // Dispose
  void dispose() {
    animationController.dispose();
  }

}