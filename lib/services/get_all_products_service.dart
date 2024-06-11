import 'package:store/helper/Api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
      token: null,
    );
    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(ProductModel.fromJson(data[i]));
    }
    return productlist;
  }
}
