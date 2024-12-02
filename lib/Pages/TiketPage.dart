import 'package:flutter/material.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Film Bioskop", style: TextStyle(fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            "Sedang Tayang",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          // Simplified Movie Card
          MovieCard(
            movieTitle: "Bila Esok Ibu Tiada",
            genre: "Drama, Keluarga",
            ageRating: "R 13+",
            rating: "9.2",
            imageUrl: "Assets/Tiket2.png",
          ),
          MovieCard(
            movieTitle: "Santet Segoro Pitu",
            genre: "Horror",
            ageRating: "D 17+",
            rating: "9.0",
            imageUrl: "Assets/Tiket1.png",
          ),
          MovieCard(
            movieTitle: "Gladiator II",
            genre: "Action, Adventure",
            ageRating: "D 17+",
            rating: "9.5",
            imageUrl: "Assets/Tiket.png",
          ),
          MovieCard(
            movieTitle: "Red One",
            genre: "Action, Adventure",
            ageRating: "R 13+",
            rating: "9.3",
            imageUrl: "Assets/Tiket.png",
          ),
          const SizedBox(height: 32),
          const Text(
            "Akan Tayang",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            "Film-film akan tayang segera hadir di bioskop favorit Anda!",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String movieTitle;
  final String genre;
  final String ageRating;
  final String rating;
  final String imageUrl;

  const MovieCard({
    Key? key,
    required this.movieTitle,
    required this.genre,
    required this.ageRating,
    required this.rating,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie Poster
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        ageRating,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
