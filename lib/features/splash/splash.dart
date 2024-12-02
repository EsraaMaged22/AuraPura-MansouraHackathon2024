
import 'package:aura_pura/features/splash/second_screen.dart';
import 'package:aura_pura/features/splash/third_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import 'first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  AppColors.backGround,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
              ],
            ),
          ),

          Container( width: 70,height: 20,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect:  ExpandingDotsEffect( dotHeight:7, dotWidth: 10,
                spacing: 8.0,
                activeDotColor: AppColors.primaryPurple,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
