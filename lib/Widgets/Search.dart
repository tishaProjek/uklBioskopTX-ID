import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10,),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: 6),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100], 
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Cari di TIX ID",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16),
          Icon(
            Icons.person_3_rounded,
            color: Colors.black,
            size: 28,
          ),
          SizedBox(width: 16),
          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 28,
          ),
        ],
      ),
    );
  }
}
