import 'package:flutter/material.dart';

class BioskopWidget extends StatelessWidget {
  const BioskopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> bioskopList = [
      "AEON MALL JGC CGV",
      "AEON MALL TANJUNG BARAT XXI",
      "AGORA MALL IMAX",
      "AGORA MALL PREMIERE",
      "AGORA MALL XXI",
      "ARION XXI",
      "ARTHA GADING XXI",
      "BASSURA XXI",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Section
    Container(
  color: Colors.grey[200],
  padding: const EdgeInsets.all(16.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.star, color: Colors.blue, size: 28),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Tandai bioskop favoritmu!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
const SizedBox(height: 8),

Container(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20),
  ),
  child: const Center(
    child: Text(
      "Mengerti",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    ),
  ),
),

        SizedBox(height: 16),

        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: bioskopList.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.star_border, color: Colors.grey),
                title: Text(bioskopList[index]),
                trailing: Icon(Icons.chevron_right, color: Colors.grey),
              );
            },
          ),
        ),
      ],
    );
  }
}
