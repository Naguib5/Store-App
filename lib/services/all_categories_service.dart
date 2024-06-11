
import '../helper/Api.dart';
class AllCategoriesService {
  Future<List<dynamic>> getAllCategoriesService ()async
  {
     List<dynamic> data =  await Api().get(url:'https://fakestoreapi.com/products/categories');
   return data;
  }
}