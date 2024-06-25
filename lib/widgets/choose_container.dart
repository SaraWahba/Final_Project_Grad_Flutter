import 'package:final_project_grad_flutter/widgets/counter_item.dart';
import 'package:flutter/material.dart';
class ChooseContainer extends StatelessWidget {
  const ChooseContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         RichText(
           text: TextSpan(
             text: 'Why ',
             style: TextStyle(color: Colors.black,
                 fontSize: 28,
                 fontWeight: FontWeight.bold
             ),
             children: <TextSpan>[
               TextSpan(text: 'Choose', style: TextStyle(color: Colors.orange)),
               TextSpan(text: ' Us'),
             ],
           ),

         ),
         const SizedBox(height: 24),
         Container(
           height: 200,
           width: 250,
           alignment: Alignment.center,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color:Colors.white,
               boxShadow: [
                 BoxShadow(
                     color: Colors.grey,
                     spreadRadius: 0,
                     blurRadius: 8,
                     offset: Offset(0,5)
                 )
               ]
           ),
           child:  CounterItem(
             icon: Icons.person,
             title: "2.470",
             subTitle: "Students Successive",
           ),
         ),
         SizedBox(
           height: 18,
         ),
         Container(
           height: 200,
           width: 250,
           alignment: Alignment.center,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color:Colors.white,
               boxShadow: [
                 BoxShadow(
                     color: Colors.grey,
                     spreadRadius: 0,
                     blurRadius: 8,
                     offset: Offset(0,5)
                 )
               ]
           ),
           child:  CounterItem(
             icon: Icons.emoji_events_rounded,
             title: "4.470",
             subTitle: "Competitions Won",
           ),
         ),
         SizedBox(
           height: 18,
         ),
         Container(
           height: 200,
           width: 250,
           alignment: Alignment.center,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color:Colors.white,
               boxShadow: [
                 BoxShadow(
                     color: Colors.grey,
                     spreadRadius: 0,
                     blurRadius: 8,
                     offset: Offset(0,5)
                 )
               ]
           ),
           child:  CounterItem(
             icon: Icons.book,
             title: "8.500",
             subTitle: "Magazines Won",
           ),
         ),
         const SizedBox(height: 50),
    ],
    );
  }
}
