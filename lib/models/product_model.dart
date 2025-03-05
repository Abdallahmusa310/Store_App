import 'package:storeapp/models/rating_model.dart';

class ProductModel {
  final int id;
  final String image, description, title;
  final double price;
  final RatingModel ratingModel;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.ratingModel,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      image: json["image"],
      price: json["price"],
      ratingModel: RatingModel.fromJson("rating"),
    );
  }
}
