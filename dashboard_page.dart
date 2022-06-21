import 'package:borku_africa_admin_web/routes.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final tabPage = TabPage.of(context);

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Routemaster.of(context).push(overviewRoute);
                  }, 
                  child: Text('Overview'),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: () {
                    Routemaster.of(context).push(settingsRoute);
                  }, 
                  child: Text('Settings'),
                )
              ]
            ),
          ),
          Expanded(
            child: TabBarView(
        controller: tabPage.controller,
        children: [
            for (final stack in tabPage.stacks) PageStackNavigator(stack: stack),
        ],
      ),
          ),
          // Expanded(
          //   child: Container(
          //     width: double.infinity,
          //     color: Colors.green,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class OverviewTab extends StatefulWidget {
  const OverviewTab({Key? key}) : super(key: key);

  @override
  State<OverviewTab> createState() => _OverviewTabState();
}

class _OverviewTabState extends State<OverviewTab> {
  @override
  Widget build(BuildContext context) {
    String route = RouteData.of(context).path;

    return Scaffold(
      body: Center(
        child: Text('Overview: $route'),
      ),
    );
  }
}

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    String route = RouteData.of(context).path;
    return Center(
      child: Text('Settings: $route'),
    );
  }
}