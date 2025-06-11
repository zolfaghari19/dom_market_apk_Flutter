import 'package:application/models/product_model.dart';
import 'package:application/pages/constants.dart';
import 'package:application/details/detail_screen.dart';
import 'package:application/providers/favorite_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCartModel extends StatelessWidget {
  final ProductModel product;
  const ProductCartModel({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProviders.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontenCololr,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: double.infinity.w,
                      height: 130.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 10.w),
                  child: Text(
                    product.title,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$${product.price}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (index) => Container(
                          width: 18.w,
                          height: 18.h,
                          margin: EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            color: product.colors[index],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //for favorite icon
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: kprimeryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(product);
                  },
                  child: Icon(
                    provider.isExist(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
