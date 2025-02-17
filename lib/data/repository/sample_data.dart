import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/sample_model.dart';

class SampleDataRepo {
  Future<List<SampleModel>> fetchPlanData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/sample.json');

      final List<dynamic> data = json.decode(response);
      final List<SampleModel> plans =
          data.map((json) => SampleModel.fromJson(json)).toList();
      return plans;
    } catch (e) {
      throw Exception(e);
    }
  }
}
