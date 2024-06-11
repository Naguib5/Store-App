import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/get_all_products_service.dart';
import '../widgets/Custom_card.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});
  static final String id = 'home page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'New Trend',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 65),
                child: GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 120,
                      mainAxisSpacing: 70),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      product: products[index],
                    );
                  },
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
