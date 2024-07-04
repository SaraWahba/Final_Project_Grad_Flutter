import 'package:flutter/material.dart';

class TrainerContainer extends StatelessWidget {
  const TrainerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: const TextSpan(
            text: 'Our ',
            style: TextStyle(color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(text: 'Trainers', style: TextStyle(color: Colors.deepPurple)),
            ],
          ),

        ),
        const SizedBox(height: 24),
        Container(
          height: 450,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 5))
              ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(image: AssetImage('assets/images/image1.jpeg'),
                  width: 250,
                  height: 250,

                  fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 16,),
              Text('Anna Blown',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              ),
              Text('English Teacher',
                style: TextStyle(
                  color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                ),
              ),
              Text('She charms of pleasure of the moment, so blinded by desire foresee.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 450,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 5))
              ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(image: AssetImage('assets/images/image2.jpeg'),
                    width: 250,
                    height: 250,

                    fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 16,),
              Text('Front Profile',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              Text('Sports Teacher',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                ),
              ),
              Text('To take a teachings, which of us ever undertakes physical exercise.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 450,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 5))
              ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(image: AssetImage('assets/images/image3.jpeg'),
                    width: 250,
                    height: 250,

                    fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 16,),
              Text('Sarah Silvester',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              Text('Dance Teacher',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                ),
              ),
              Text('The actual teachings of the great explorer of the master-builder.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 450,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 5))
              ]
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(image: AssetImage('assets/images/image4.jpeg'),
                    width: 250,
                    height: 250,

                    fit: BoxFit.fill,),
                ),
              ),
              SizedBox(height: 16,),
              Text('Scott Again',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              Text('Maths Teacher',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                ),
              ),
              Text('I must explain to you how all this idea of denouncing pleasure.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}

