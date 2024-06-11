
import 'package:store/models/product_model.dart';
import '../helper/Api.dart';
class CategoriesService {
  Future<List<ProductModel>> getCategoriesService ({required String categpry_name})async
  {
    List<dynamic> data =  await Api().get(url:'https://fakestoreapi.com/products/category/$categpry_name');
    List<ProductModel> productlist =[];
    for (int i=0 ; i<data.length; i++)
    {
      productlist.add(
          ProductModel.fromJson(data[i])
      );
    }
    return productlist;
  }
}