import 'package:application/data/catagory_data.dart';
import 'package:application/models/product_cart_model.dart';
import 'package:application/models/product_model.dart';
import 'package:application/widget/home_app_bar.dart';
import 'package:application/widget/image_slider.dart';
import 'package:application/widget/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0 ; 
  @override
  Widget build(BuildContext context) {
    List<List<ProductModel>> selectedCategories = [all , shoes , beauty , jacket , hat , watch , coustom ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              CustomAppBar(),
              SizedBox(height: 20.h),
              SearchAppBar(),
              SizedBox(height: 20.h),
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              SizedBox(height: 20.h),
              SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selectedIndex == index
                    ? Colors.blue[200]
                    : Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    categories[index].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Spacial For You",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  Text(
                    "See all",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: selectedCategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCartModel(
                    product: selectedCategories[selectedIndex][index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
