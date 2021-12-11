import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'screens/homescreen.dart';
import 'screens/menuscreen.dart';

// LOCATIONS
class Location extends BeamLocation {
  Location(BeamState state) : super(state);

  @override
  List<String> get pathBlueprints => ['/menu/:menuId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        BeamPage(
          key: const ValueKey('home'),
          child: HomeScreen(),
        ),
        if (state.uri.pathSegments.contains('menu'))
          BeamPage(
            key: const ValueKey('menu'),
            child: MenuScreen(),
          ),
      ];
}

// APP
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: (state) => Location(state),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Venus',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}

void main() => runApp(MyApp());
