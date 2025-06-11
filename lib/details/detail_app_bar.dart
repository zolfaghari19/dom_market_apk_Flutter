import 'package:application/models/product_model.dart';
import 'package:application/providers/favorite_providers.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final ProductModel product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProviders.of(context);
    return Padding(
      padding: const EdgeInsetsGeometry.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              iconSize: 30,
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              iconSize: 30,
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: Icon(Icons.share_outlined),
          ),
          SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
              iconSize: 30,
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)?
              Icons.favorite : Icons.favorite_border , color: Colors.black,
              size:25 ,
              ),
          ),
        ],
      ),
    );
  }
}
