import 'package:flutter/material.dart';

class Promosi extends StatefulWidget {
  @override
  _TestPromosiState createState() => _TestPromosiState();
}

class _TestPromosiState extends State<Promosi>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.0,
      child: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
          _buildAdPage("Assets/Promosi.png"),
          _buildAdPage("Assets/Promosi1.png"),
          _buildAdPage("Assets/Promosi2.png"),
        ],
      ),
    );
  }

  Widget _buildAdPage(String image) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  18,
                  (index) => _buildDot(index),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.5),
      width: _currentPage == index ? 9.0 : 5.0,
      height: _currentPage == index ? 9.0 : 5.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.black : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
