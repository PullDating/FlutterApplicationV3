import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pull/screens/chat.dart';
import 'package:pull/screens/discover.dart';
import 'package:pull/screens/filters.dart';
import 'package:pull/screens/likes.dart';
import 'package:pull/screens/login.dart';
import 'package:pull/screens/matches.dart';
import 'package:pull/screens/profile.dart';
import 'package:pull/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/', // default route will be the login.
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => ChatScreen(),
    ),
    GoRoute(
      path: '/discover',
      builder: (context, state) => DiscoverScreen(),
    ),
    GoRoute(
      path: '/filters',
      builder: (context, state) => FiltersScreen(),
    ),
    GoRoute(
      path: '/likes',
      builder: (context, state) => LikesScreen(),
    ),
    GoRoute(
      path: '/matches',
      builder: (context, state) => MatchesScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: "Pull",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
