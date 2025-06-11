import 'package:application/models/product_model.dart';
import 'package:application/pages/constants.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final ProductModel product;
  const ItemDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),

        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
                const SizedBox(height: 10),
                //for rating
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimeryColor,
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 14, color: Colors.white),
                          SizedBox(width: 3),
                          Text(
                            product.rate.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      product.review,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    children: [
                      TextSpan(text: "Seller: ", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  TextSpan(
                    children: [
                      TextSpan(
                        text: product.seller,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
