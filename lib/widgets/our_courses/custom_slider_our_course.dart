import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderOurCourse extends StatefulWidget {
  const SliderOurCourse({
    super.key,
    required this.height,
    required this.listItems,
  });
  final double height;
  final List<Widget> listItems;
  @override
  State<SliderOurCourse> createState() => _SliderOurCourseState();
}

class _SliderOurCourseState extends State<SliderOurCourse> {
  int currentPage = 0;
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Related Courses',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(height: 24),
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              height: widget.height,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              enlargeFactor: 0.4,
              autoPlay: true,
              onPageChanged: (value, _) {
                setState(() {
                  currentPage = value;
                });
              }),
          items: widget.listItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: item,
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
