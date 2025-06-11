import 'package:application/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            iconSize: 30,
            backgroundColor: kcontenCololr,
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: Icon(Icons.shopify_outlined,color: kprimeryColor, ),
        ),
        Text("Dom Market",
        style: GoogleFonts.lato(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600
          )
        ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            iconSize: 30,
            backgroundColor: kcontenCololr,
            padding: EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: Icon(Icons.notifications_active,
          color: Colors.orangeAccent.shade200,
          ),
        ),
      ],
    );
  }
}
