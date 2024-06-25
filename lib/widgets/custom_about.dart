import 'package:final_project_grad_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../views/contact_us_view.dart';

class CustomAbout extends StatelessWidget {
  const CustomAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
         height: 16,
        ),
        const Row(
          children: [
            Image(
              image: AssetImage('assets/images/about.png'),
              width: 210,
              height: 120,
              fit: BoxFit.cover,
            ),
            Text('Study with Us',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text("Think Tank is an innovative online education platform designed to revolutionize learning through interactive and engaging content. Dedicated to fostering intellectual curiosity and critical thinking skills, Think Tank offers a diverse range of courses spenning various disciplines, from STEM subjects to humanities and arts. Each course is meticulously crafted by industry experts and educators, ensuring relevance and depth in every lesson.\n\nAt Think Tank, Senmees are empowered with nible learning options, alloscing them to study at their own pace and convenience. The plattens utilizes cutting-edge technology to deliver inunersive learning experiences, incorporating multimedia resources, simulations, and real-world case studies to deepen understanding and application of concepts.",
           style: TextStyle(
             fontSize: 15
           ),
          ),
        ),
        CustomButton(
            text: 'Contact Us',
            width: 150,
            color: Colors.orange,
            onTap: (){
              Navigator.pushNamed(context, ContactUSView.id);
            },
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
        const SizedBox(height: 50),
      ],
    );
  }
}
