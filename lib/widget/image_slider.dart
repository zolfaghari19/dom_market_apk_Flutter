import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ImageSlider({
    super.key,
    required this.onChange,
    required this.currentSlide,
  });

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/photo4.jpg",
      "assets/images/photo8.jpg",
      "assets/images/photo1.jpg",
      "assets/images/photo7.jpg",
      "assets/images/photo3.jpg",
    ];

    return Stack(
      children: [
        SizedBox(
          height: 240,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: widget.onChange,
            itemCount: images.length,
            itemBuilder: (context, index) {
              bool isCurrent = index == widget.currentSlide;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: isCurrent ? 5 : 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    if (isCurrent)
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                      // Optional overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 8,
                width: widget.currentSlide == index ? 20 : 8,
                decoration: BoxDecoration(
                  color: widget.currentSlide == index ? Colors.black : Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
