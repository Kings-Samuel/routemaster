import 'package:beamer/beamer.dart';
import 'package:borku_africa_admin_web/routes.dart';
import 'package:borku_africa_admin_web/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
        routeInformationParser: const RoutemasterParser(),
      debugShowCheckedModeBanner: false,
      title: 'Admin | Borku Africa',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.balooDa2TextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
