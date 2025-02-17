part of 'sample_bloc.dart';

@immutable
sealed class SampleState {}

final class SampleInitial extends SampleState {}

final class SampleLoading extends SampleState {}

final class SampleLoaded extends SampleState {
  final List<SampleModel> plan;

  SampleLoaded(this.plan);
}

final class SampleError extends SampleState {
  final String message;

  SampleError(this.message);
}
