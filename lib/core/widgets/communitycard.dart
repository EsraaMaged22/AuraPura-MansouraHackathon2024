import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CommunityCard extends StatelessWidget {
  final String title;
  final String description;
  final String followers;


  const CommunityCard({super.key,
    required this.title,
    required this.description,
    required this.followers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(  decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryPurple,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12) ),
        child: ListTile(
          leading: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              SizedBox(height: 4),
              Text(
                followers,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          trailing: Image.asset("assets/images/sharetalk.png"),
        ),
      ),
    );
  }
}
