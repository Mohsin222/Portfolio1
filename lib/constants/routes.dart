import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio1/practice.dart';
import 'package:portfolio1/views/about_us/about_us.dart';
import 'package:portfolio1/views/contact_us/contact_screen.dart';
import 'package:portfolio1/views/home/mainScreen.dart';
import 'package:portfolio1/views/portfolio/portfolio_screen.dart';

class Routers{

static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
        // return  PortfolioPRACTICESection();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutUsScreen();
          },
        ),

            GoRoute(
          path: 'portfolio',
          builder: (BuildContext context, GoRouterState state) {
            return const PortfolioScreen();
          },
        ),

              GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactUsScreen();
          },
        ),
      ],
    ),
  ],
);
}