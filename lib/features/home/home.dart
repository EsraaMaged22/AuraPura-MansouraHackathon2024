import 'package:aura_pura/core/constants/colors.dart';
import 'package:aura_pura/core/constants/fonts.dart';
import 'package:aura_pura/features/home/goals.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/communitycard.dart';
import '../../core/widgets/navbar/bottom_nav_bar.dart';
import '../../core/widgets/routneCardWidget.dart';
import '../../core/widgets/sectionHeader.dart';
import '../profile/profilescreen.dart';
import '../therapist.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    // Adjust size
                    backgroundImage: AssetImage("assets/images/doctor.png"),
                    // Replace with your image
                    backgroundColor: Colors
                        .grey[200], // Fallback background color
                  ),
                  SizedBox(width: 12), // Spacing between avatar and text
                  Text(
                    "Good Morning, Mariam",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // How are you today? Section
              Image.asset("assets/images/img.png"),
              SizedBox(height: 16),
              // Motivational Quote
              Container(padding: EdgeInsets.all(16),
                  child: Text(
                      "\"Your mental health is a priority, your self-care is a necessity, and your happiness is your responsibility.\"",
                      style: AppFonts.textStyle16black
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: AppColors.secondaryPurple, width: 1),)
              ),
              SizedBox(height: 24),
              // Routine Cards with Images
              Expanded(
                child: ListView(
                  children: [
                    SectionHeader(title: "Suggested Routines"),
                    RoutineCardWithImage(
                      title: "Morning Routine",
                      description: "Start your day right with a calming morning routine.",
                      imagePath: "assets/images/morning.png",
                    ),
                    RoutineCardWithImage(
                      title: "Afternoon Routine",
                      description: "Take a short break to recharge your mind and body.",
                      imagePath: "assets/images/day.png",
                    ),
                    RoutineCardWithImage(
                      title: "Night Routine",
                      description: "Wind down with a calming evening routine.",
                      imagePath: "assets/images/night.png",
                    ),
                    SizedBox(height: 24),
                    SectionHeader(title: "Communities"),
                    CommunityCard(
                      title: "Share a Talk",
                      description: "A safe space for open discussions and mental wellness.",
                      followers: "20k followers",
                    ),
                    CommunityCard(
                        title: "Just Talks",
                        description: "Engage with others on shared experiences and ideas.",
                        followers: "15k followers"

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onItemSelected: (index) {
          _controller.jumpToPage(index);
        },
      ), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container( padding: const EdgeInsets.only(top: 8, right: 5,left: 5, bottom: 10),

        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: FloatingActionButton( elevation: 50 , shape: CircleBorder(),
          onPressed: () {

          },
          backgroundColor: AppColors.primaryPurple,
          child:  const Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
            size: 30,
          ),

        ),
      ),
    );
  }
}





