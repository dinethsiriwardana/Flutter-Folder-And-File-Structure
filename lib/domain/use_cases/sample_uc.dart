import 'package:ksn_lunchbox_customer_mobile/data/models/sample_model.dart';
import 'package:ksn_lunchbox_customer_mobile/data/repository/sample_data.dart';

class SampleUC {
  final SampleDataRepo _sampleRepository;

  SampleUC(this._sampleRepository);

  Future<List<SampleModel>> getPlans() async {
    return await _sampleRepository.fetchPlanData();
  }
}
