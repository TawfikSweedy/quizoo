
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizoo/Modules/Games/GameDetails/gameDetails_screen.dart';
import 'package:quizoo/Modules/Main_Screen/main_screen.dart';
import 'package:quizoo/Modules/SpinToWin/spin_win_screen.dart';
import 'package:quizoo/Modules/Splash/splash_screen.dart';

BuildContext? get currentContext_ => GoRouterConfig.router.routerDelegate.navigatorKey.currentContext;
class GoRouterConfig {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const SplashScreen(),
          );
        },
      ),

      GoRoute(
        path: MainScreen.routeName,
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: MainScreen(),
          );
        },
      ),

      GoRoute(
        path: SpinWinScreen.routeName,
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: SpinWinScreen(),
          );
        },
      ),

      GoRoute(
        path: GamedetailsScreen.routeName,
        pageBuilder: (_, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: GamedetailsScreen(),
          );
        },
      ),

      // GoRoute(
      //   path: GameScreen.routeName,
      //   pageBuilder: (context, state) {
      //     final extra = state.extra;
      //     if (extra is Map<String, Object>) {
      //       final playerModel = extra['playerModel'] as PlayerModel;
      //       return MaterialPage(
      //         child: GameScreen(
      //           playerModel: playerModel,
      //         ),
      //       );
      //     } else {
      //       throw Exception('Invalid extra data passed to GameScreen');
      //     }
      //   },
      // ),

    ],
  );


  static CustomTransitionPage getCustomTransitionPage({required GoRouterState state, required Widget child}){
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        );
      },
    );
  }
}
