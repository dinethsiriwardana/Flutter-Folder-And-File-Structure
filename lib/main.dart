import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksn_lunchbox_customer_mobile/presentation/bloc/plan/sample_bloc.dart';
import 'package:ksn_lunchbox_customer_mobile/utils/route.dart';
import 'package:ksn_lunchbox_customer_mobile/utils/styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SampleBloc()), // SampleBloc
          BlocProvider(
              create: (context) =>
                  SampleBloc()..add(Sample())), // SampleBloc with initial event
        ],
        child: MaterialApp(
          title: 'Sample App',
          initialRoute: '/onboarding',
          onGenerateRoute: _appRouter.generateRoute,
          theme: AppTheme.responsiveTheme,
        ),
      );
    });
  }
}
