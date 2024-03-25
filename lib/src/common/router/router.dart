import 'package:flutter/material.dart';
import 'package:frifri/src/features/direct_flights/presentation/screens/avia_ticket_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AviaTicketScreen();
      },
    ),
  ],
);
