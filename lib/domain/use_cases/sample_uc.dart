import 'package:ksn_lunchbox_customer_mobile/data/models/sample_model.dart';
import 'package:ksn_lunchbox_customer_mobile/data/repository/plan_data.dart';

class SampleUC {
  final SampleDataRepo _planRepository;

  SampleUC(this._planRepository);

  Future<List<SampleModel>> getPlans() async {
    return await _planRepository.fetchPlanData();
  }
}
