import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../bloc/plan/sample_bloc.dart';
import '../../widgets/common/img.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<SampleBloc>().add(Sample());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _loadPlan(),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/refer');
              },
              child: CustomImg().get('assets/images/sample_screen/refer.png',
                  width: 98.w, height: 150),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  BlocBuilder<SampleBloc, SampleState> _loadPlan() {
    return BlocBuilder<SampleBloc, SampleState>(
      builder: (context, state) {
        if (state is SampleLoaded) {
          return Column(
            children: state.plan.map((plan) {
              return Padding(
                  padding: const EdgeInsets.all(8.0), child: Text(plan.s1));
            }).toList(),
          );
        } else if (state is SampleLoading) {
          return const CircularProgressIndicator();
        } else {
          return const Text('Failed to load plans');
        }
      },
    );
  }
}
