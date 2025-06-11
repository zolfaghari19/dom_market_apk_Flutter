import 'package:application/details/detail_app_bar.dart';
import 'package:application/details/item_detail.dart';
import 'package:application/models/product_model.dart';
import 'package:application/pages/constants.dart';
import 'package:application/pages/image_slider.dart';
import 'package:application/widget/add_cart.dart';
import 'package:application/widget/description.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontenCololr,
      //for add to cart and icon and quantity 
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AddCart(product: widget.product),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(product: widget.product,),
              //for detail image slider
              MyImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                 image: widget.product.image,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                    (index) => AnimatedContainer(
                      duration: Duration(microseconds: 300),
                      width: currentImage == index ? 15 : 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentImage == index
                            ? Colors.black
                            : Colors.transparent,
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //for product and price
                    ItemDetail(product: widget.product),
                    const SizedBox(height: 20),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: currentColor == index
                                  ? [
                                      BoxShadow(
                                        color: widget.product.colors[index]
                                            .withOpacity(0.6),
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ]
                                  : [],
                              border: Border.all(
                                color: currentColor == index
                                    ? widget.product.colors[index]
                                    : Colors.grey.shade300,
                                width: currentColor == index ? 2.5 : 1.0,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: widget.product.colors[index],
                                ),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 300),
                                  child: currentColor == index
                                      ? Icon(
                                          Icons.check,
                                          key: ValueKey(index),
                                          color: Colors.white,
                                          size: 18,
                                        )
                                      : SizedBox.shrink(
                                          key: ValueKey("empty$index"),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //for description
                    Description(
                      description: widget.product.description,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
