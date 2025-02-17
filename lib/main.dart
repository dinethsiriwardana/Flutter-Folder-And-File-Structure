import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import 'presentation/bloc/plan/sample_bloc.dart';
import 'utils/route.dart';
import 'utils/styles.dart';

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
