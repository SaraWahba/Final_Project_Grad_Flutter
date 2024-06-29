import 'package:final_project_grad_flutter/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
static String id = "SplashView";
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>   with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();
    initSlidAnimation();
    navigateToNewView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.deepPurple.shade300),
      child: AnimatedBuilder(
          animation: sliderAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: sliderAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 170,
                    width: 170,
                  ),
                  SizedBox(height: 30,),
                  const Text(
                    "ThinkTank",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  void navigateToNewView() {
    Future.delayed(
      const Duration(seconds: 5),
          () async {
        User? user =FirebaseAuth.instance.currentUser;
        if(user == null){
          Navigator.pushReplacementNamed(context, LoginView.id);
        }else{
          Navigator.pushReplacementNamed(context, HomeView.id);
        }

      },
    );
  }

  void initSlidAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    sliderAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
