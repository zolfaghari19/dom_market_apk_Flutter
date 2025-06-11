import 'package:application/carts/check_out.dart';
import 'package:application/pages/constants.dart';
import 'package:application/pages/nav_bar_screen.dart';
import 'package:application/providers/cart_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProviders.of(context);
    final finalList = provider.cart;
    //for quantity

    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
        child: Icon(icon, size: 20),
      );
    }

    return Scaffold(
      bottomSheet:CheckOutBox() ,
      backgroundColor: kcontenCololr,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      iconSize: 30,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                      "My Cart",

                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),

                  Container(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  ///final
                  final cartItem = finalList[index];

                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.all(15),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kcontenCololr,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 120.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(cartItem.image),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItem.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    cartItem.category,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "\$${cartItem.price}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: 35,
                        right: 35,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                finalList.removeAt(index);
                                setState(() {});
                              },

                              icon: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 6,
                                ),
                                child: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: kcontenCololr,
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  productQuantity(Icons.add, index),
                                  SizedBox(width: 10),
                                  Text(
                                    cartItem.quantity.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  productQuantity(Icons.remove, index),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
