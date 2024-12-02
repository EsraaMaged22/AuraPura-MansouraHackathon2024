import 'package:flutter/material.dart';
import '../constants/fonts.dart';

class SearchWidget extends StatelessWidget{
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black26),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(
                right: 10
            ),
            child: Icon(
              Icons.search,
              color: Colors.black54,
              size: 30,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search about any product',
                hintStyle: AppFonts.textStyle16gray,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}