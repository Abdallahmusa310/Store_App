import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/home%20screen/widgets/proudct_card.dart';
import 'package:storeapp/services/product_api.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(FontAwesomeIcons.bagShopping),
          ),
        ],
        title: Text('new trend'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 70),
        child: FutureBuilder<List<ProductModel>>(
          future: ProudctApi().getallproudcts(),
          builder: (context, snapshot) {
            print("Snapshot State: ${snapshot.connectionState}");
            print("Has Data: ${snapshot.hasData}");
            print("Error: ${snapshot.error}");
            print("Data: ${snapshot.data}");

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No products available.'));
            } else {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 100,
                ),
                itemBuilder: (context, index) {
                  return ProudctCard(productModel: products[index]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
