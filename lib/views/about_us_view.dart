import 'package:final_project_grad_flutter/widgets/choose_container.dart';
import 'package:final_project_grad_flutter/widgets/custom_about.dart';
import 'package:final_project_grad_flutter/widgets/feedback_container.dart';
import 'package:final_project_grad_flutter/widgets/trainer_container.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_slider.dart';

class AboutUSView extends StatefulWidget {
  const AboutUSView({super.key});
  static String id = "AboutUSView";

  @override
  State<AboutUSView> createState() => _AboutUSViewState();
}

class _AboutUSViewState extends State<AboutUSView> {
  List<Widget> listItemsSlider = const [
    FeedbackContainer(
      numberReviews: "18",
      rate: 2,
      text:
          'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/image1.jpeg',
      name: 'Chase Kroll',
      work: 'It Specialist',
    ),
    FeedbackContainer(
      numberReviews: "30",
      rate: 3.5,
      text:
          'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/image1.jpeg',
      name: 'Sara',
      work: 'Flutter developer',
    ),
    FeedbackContainer(
      numberReviews: "25",
      rate: 5,
      text:
          'We are a Portsmouth based web design and e-marketing agency. We understand how importam webette is to any business, big or small. Your online presence is now more important than ever before.',
      imagePath: 'assets/images/image1.jpeg',
      name: 'Reham',
      work: 'Flutter developer',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 8,
                        offset: Offset(1, 0))
                  ],
                ),
                child: const Image(
                  image: AssetImage('assets/images/about us.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              const CustomAbout(),
              const ChooseContainer(),
              const TrainerContainer(),
              CustomSlider(
                  listItems: listItemsSlider,
                  height: MediaQuery.of(context).size.height * .45),
            ],
          ),
        ),
      ),
    );
  }
}
