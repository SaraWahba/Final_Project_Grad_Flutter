import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../core/app_styles.dart';

class BlogSlider extends StatefulWidget {
  const BlogSlider(
      {super.key,
      required this.height,
      required this.images,
      required this.maxLines});

  final double height;
  final List<String> images;
  final int maxLines;

  @override
  State<BlogSlider> createState() => _BlogSliderState();
}

class _BlogSliderState extends State<BlogSlider> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, ssetState) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: widget.height,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeFactor: 0.4,
                  autoPlay: true,
                  onPageChanged: (value, _) {
                    ssetState(() {
                      currentPage = value;
                    });
                  }),
              items: widget.images.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              item,
                              height: 200,
                              width: 300,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, right: 30, left: 30, bottom: 15),
                            child: Text(
                              "Blog 1",
                              style: AppStyles.textStyle18.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 0, right: 30, left: 30, bottom: 30),
                            child: Text(
                              "dfhdsgkbfhmdsbfkjhmdsvgifklds fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf  fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf fmshdv fuhjfkjsd fhsdu ushfkdsjfhieuw oi fowuefh  oirpfj jwrp wfwurpf wourf",
                              style: AppStyles.textStyle16,
                              overflow: TextOverflow.ellipsis,
                              maxLines: widget.maxLines,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.images.length,
                (index) => InkWell(
                  onTap: () {
                    pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPage == index ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
