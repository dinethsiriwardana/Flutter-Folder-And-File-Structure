import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ksn_lunchbox_customer_mobile/data/models/sample_model.dart';

class SampleDataRepo {
  Future<List<SampleModel>> fetchPlanData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/sample.json');

      final List<dynamic> data = json.decode(response);
      final List<SampleModel> plans =
          data.map((json) => SampleModel.fromJson(json)).toList();
      print(plans);
      return plans;
    } catch (e) {
      print("Error : $e");
      throw Exception(e);
    }
  }
}
