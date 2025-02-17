import 'package:bloc/bloc.dart';
import 'package:ksn_lunchbox_customer_mobile/data/models/sample_model.dart';
import 'package:ksn_lunchbox_customer_mobile/data/repository/sample_data.dart';
import 'package:ksn_lunchbox_customer_mobile/domain/use_cases/sample_uc.dart';
import 'package:meta/meta.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  final SampleDataRepo _sampleRepository = SampleDataRepo();

  SampleBloc() : super(SampleInitial()) {
    on<SampleEvent>((event, emit) async {
      try {
        emit(SampleLoading());
        final planDataUC = SampleUC(_sampleRepository);
        final List<SampleModel> plan = await planDataUC.getPlans();
        emit(SampleLoaded(plan));
      } catch (e) {
        emit(SampleError(e.toString()));
      }
    });
  }
}
