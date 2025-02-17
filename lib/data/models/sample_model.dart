class SampleModel {
  final String s1;
  final int s2;

  SampleModel({
    required this.s1,
    required this.s2,
  });

  factory SampleModel.fromJson(Map<String, dynamic> json) {
    return SampleModel(
      s1: json['s1'],
      s2: json['s2'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      's1': s1,
      's2': s2,
    };
  }
}
