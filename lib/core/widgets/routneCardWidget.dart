import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RoutineCardWithImage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const RoutineCardWithImage({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card( color: Colors.white,
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryPurple,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12) ),

        child: ListTile(
          leading: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(description),
          trailing: ElevatedButton( style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(  borderRadius: BorderRadius.circular(12), ),
            padding: EdgeInsets.zero,
            minimumSize: Size(45, 45),
            backgroundColor: AppColors.primaryPurple,
          ),
              onPressed: () {  },
          child: Icon(Icons.arrow_forward,color: Colors.white,)),
        ),
      ),
    );
  }
}

