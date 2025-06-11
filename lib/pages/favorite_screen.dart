import 'package:application/pages/constants.dart';
import 'package:application/pages/nav_bar_screen.dart';
import 'package:application/providers/favorite_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProviders.of(context);
    final finalist = provider.favorite;

    return Scaffold(
      backgroundColor: kcontenCololr,
      appBar: AppBar(
        
        backgroundColor: kcontenCololr,
        title: Text("Favorite", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
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
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalist.length,
              itemBuilder: (context, index) {
                ///final
                final cartItem = finalist[index];

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
                              height: 85.h,
                              width: 85.w,
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
                              finalist.removeAt(index);
                              setState(() {});
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 10, left: 6),
                              child: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 25,
                              ),
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
    );
  }
}
