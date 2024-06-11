import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';
import '../widgets/Custom_Buton.dart';
import '../widgets/custom_text_form_field.dart';
class UpdateProductpage extends StatefulWidget {
  UpdateProductpage({super.key});
  static final String id ='updateproduct page';
  @override
  State<UpdateProductpage> createState() => _UpdateProductpageState();
}
class _UpdateProductpageState extends State<UpdateProductpage> {
  String? productName, desc, image;
  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update product', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 60,
              ),
              CustomTextField(
                onchanged: (data) {
                  productName = data;
                },
                HentText: "product name ",
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                onchanged: (data) {
                  price = data;
                },
                HentText: "price",
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onchanged: (data) {
                  desc = data;
                },
                HentText: "description",
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onchanged: (data) {
                  image = data;
                },
                HentText: "image",
              ),
              SizedBox(
                height: 20,
              ),
              CustomButon(
                text: 'Update',
                ontap: () async {
                  isLoading = true;
                  setState(() {});
                   updateProduct(product);
                  try {
                    print('success');
                  } catch (e) {
                    print(e);
                  }
                  isLoading = false;
                  setState(() {});
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
  Future<void> updateProduct(ProductModel product) async {
     UpdateProductservice().updateProduct(
      id: product.id,
      title: productName == null ? product.title : productName!,
      price: price == null ? product.price.toString() : price!,
      desc: desc == null ? product.description : desc!,
      image: image == null ? product.image : image!,
      category: product.category,
    );
  }
}
