import 'package:flutter/material.dart';

class Spotlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text(
                'Spotlight',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text(
                'Berita Terhangat Untuk Anda!',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BoxOfficeWidget(
                  imagePath: 'Assets/Spotlight.png',
                  title: 'TIX ID Box Office (11-17 November)',
                  views: 57,
                  likes: 0,
                ),
                BoxOfficeWidget(
                  imagePath: 'Assets/Spotlight1.png',
                  title: 'TIX ID Box Office (11-17 November)',
                  views: 88,
                  likes: 12,
                ),
                BoxOfficeWidget(
                  imagePath: 'Assets/Spotlight2.png',
                  title: 'Film Terbaik Minggu Ini',
                  views: 102,
                  likes: 50,
                ),
                BoxOfficeWidget(
                  imagePath: 'Assets/Spotlight1.png',
                  title: 'Update Film Terkini',
                  views: 75,
                  likes: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BoxOfficeWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final int views;
  final int likes;

  const BoxOfficeWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.views,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 10), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            width: double.infinity,
            
            ),
          ),
          SizedBox(height: 8),
          Text(
            title, 
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.remove_red_eye, size: 14, color: Colors.grey), 
              SizedBox(width: 4),
              Text(
                '$views', 
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(width: 10),
              Icon(Icons.favorite_border, size: 14, color: Colors.grey), 
              SizedBox(width: 4),
              Text(
                '$likes', 
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
