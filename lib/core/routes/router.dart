import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:okeowo/core/routes/routes.dart';

import '../../features/cards/presentation/screens/cards.dart';
import '../../features/home/presentation/screens/entry_point.dart';
import '../../features/home/presentation/screens/home.dart';
import '../../features/home/presentation/screens/splashscreen.dart';
import '../../features/settings/presentation/screens/settings.dart';
import '../../features/transactions/presentation/screens/transactions.dart';



final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(

  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes:[
    GoRoute(
      path: '/',
      name: Routes.SPLASHSCREEN,
      builder: (context, state) => const Splashscreen(),
    ),
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return EntryPoint(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: Routes.HOME,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: HomeScreen(),
            ),
          ),

          GoRoute(
            path: Routes.TRANSACTIONS,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: TransactionsScreen(),
            ),
          ),

          GoRoute(
            path: Routes.CARDS,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: CardsScreen(),
            ),
          ),

          GoRoute(
            path: Routes.SETTINGS,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: SettingsScreen(),
            ),
          ),
        ],
    )



  ],
);