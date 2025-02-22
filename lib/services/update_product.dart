import '../helper/Api.dart';
import '../models/product_model.dart';

class UpdateProductservice {
  Future<ProductModel> updateProduct(
      {required String title,
        required String price,
        required String desc,
        required String image,
        required int id,
        required String category}) async {
    print('product id  = $id');
    Map<String, dynamic> data =
    await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    }, token: null);

    return ProductModel.fromJson(data);
  }
}
