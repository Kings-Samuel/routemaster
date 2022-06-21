  import 'package:borku_africa_admin_web/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'login_page.dart';
import 'not_found_page.dart';

const String loginRoute = '/login';
const String dashboardRoute = '/dashboard';
const String overviewRoute = '/dashboard/overview';
const String settingsRoute = '/dashboard/settings';
const String notFoundRoute = '/404';

final routes = RouteMap(
    onUnknownRoute: (route) {
        return const MaterialPage(child: NotFoundPage());
    },
    routes: {
      loginRoute: (route) => MaterialPage(
        child: Title(
          color: Colors.orange, 
          title: 'Login',
          child: const LoginPage()
        )
      ),

      dashboardRoute: (route) => const TabPage(
        child: DashboardPage(), 
        paths: [overviewRoute, settingsRoute],
      ), 
      overviewRoute: (route) => const MaterialPage(child: OverviewTab()),
      settingsRoute: (route) => const MaterialPage(child: SettingsTab()),


    }
  );