import 'package:flutter/material.dart';
import 'package:storeapp/constans/colors.dart';
import 'package:storeapp/constans/strings.dart';
import 'package:storeapp/models/product_model.dart';

class ProudctCard extends StatelessWidget {
  const ProudctCard({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, updateProudctscreen);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    productModel.title,
                    style: TextStyle(color: Appcolors.gray),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$'
                        '${productModel.price.toString()}',
                      ),
                      Icon(Icons.favorite, color: Appcolors.red),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -65,
            child: Image.network(productModel.image, height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}
