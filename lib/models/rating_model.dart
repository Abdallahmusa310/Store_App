class RatingModel {
  final double count, rate;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(json) {
    return RatingModel(count: json["count"], rate: json["rate"]);
  }
}
