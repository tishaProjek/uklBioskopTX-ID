import 'package:flutter/material.dart';
import 'package:ukl/Widgets/BioskopWidget.dart';
import 'package:ukl/Widgets/Jakarta.dart';

class BioskopPage extends StatelessWidget {
  const BioskopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Jakarta(),
                automaticallyImplyLeading: false, // Menghapus ikon default back

        
      ),
            body: const BioskopWidget(), // Menggunakan widget dari file terpisah

    );
  }
}
