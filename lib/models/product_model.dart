class ProductModel {
  final int id;
  final double price;
  final String title;
  final String description;
  final String category;
  final String image;
  final RatingModel ratingModel;
  ProductModel({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.ratingModel,
  });
  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
        id: jsondata['id'],
        price: double.parse(jsondata['price'].toString()),
        title: jsondata['title'],
        description: jsondata['description'],
        category: jsondata["category"],
        image: jsondata["image"],
        ratingModel: RatingModel.fromJson(jsondata['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData["rate"], count: jsonData["count"]);
  }
}
