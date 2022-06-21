import 'package:borku_africa_admin_web/routes.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Routemaster.of(context).push(dashboardRoute);
          print('Pushed login route');
        },
        child: Text('Login'),
      )),
    );
  }
}
