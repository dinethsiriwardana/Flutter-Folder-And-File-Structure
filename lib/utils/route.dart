// routing for the app
import 'package:flutter/material.dart';
import 'package:ksn_lunchbox_customer_mobile/data/models/sample_model.dart';

import 'package:ksn_lunchbox_customer_mobile/presentation/screens/home/home_page.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      //? Use this to Pass Data to the Next Screen

      // case '/plan':
      //   final sample = settings.arguments as SampleModel;
      //   return MaterialPageRoute(
      //     builder: (_) => PlanScreen(
      //       plan: sample,
      //     ),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(),
        );
    }
  }
}
