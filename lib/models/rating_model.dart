class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      // Handle both int and double for rate
      rate: (jsonData['rate'] as num).toDouble(),
      count: jsonData['count'] as int,
    );
  }
}
