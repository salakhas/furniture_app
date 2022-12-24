import 'package:flutter/material.dart';
import 'package:furniture_app/constants/custom_material_page_route.dart';
import 'package:furniture_app/constants/navigation_constants.dart';
import 'package:furniture_app/constants/route_constants.dart';
import 'package:furniture_app/home_screen/home_screen.dart';
import 'package:furniture_app/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      initialRoute: '/',
      onGenerateRoute: Routers.generateRoute,
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}

class Routers {
  static String? topRoute;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    topRoute = settings.name;
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const customBounceInCurve = Cubic(0.175, 0.885, 0.32, 1.075);
    const customEaseOutQuadCurve = Curves.easeOutQuad;
    const transitionDuration = Duration(milliseconds: 600);
    var tween = Tween(begin: begin, end: end);
    switch (settings.name) {
      case RouteConstant.initialRoute:
        return CustomMaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteConstant.homeScreen:
        return CustomMaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return CustomMaterialPageRoute(builder: (context) => Container());
    }
  }
}
