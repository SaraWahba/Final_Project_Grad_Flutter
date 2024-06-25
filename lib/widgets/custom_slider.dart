import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key, required this.height, required this.listItems,});
  final double height ;
  final  List<Widget> listItems ;
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}
class _CustomSliderState extends State<CustomSlider> {
  int currentPage = 0;
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Feedback Comminty Students',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21
          ),
        ),
        const SizedBox(height: 24),
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
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
                return Padding(padding: const EdgeInsets.only(bottom: 20),child:  item,);
              },
            );
          }).toList(),
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                carouselController.previousPage(duration: const Duration(milliseconds: 500
                ));
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child:const Icon(Icons.arrow_back_ios),
              ),
            ),
            const SizedBox(width: 30,),
            AnimatedSmoothIndicator(activeIndex: currentPage, count: widget.listItems.length,
              onDotClicked: (int index){
                carouselController.animateToPage(index);
              },
              effect: const SlideEffect(
                  dotWidth: 12,
                  dotHeight: 12,
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey
              ),),
            const SizedBox(width: 30,),
            InkWell(
              onTap: (){
                carouselController.nextPage(duration: const Duration(milliseconds: 500
                ));
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child:const Icon(Icons.arrow_forward_ios),
              ),
            ),

          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
