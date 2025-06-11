import 'package:application/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: kprimeryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            Text(
              "Specifications",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Text(
              "Reviews",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          description,
          style: GoogleFonts.lato(
            textStyle: TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
