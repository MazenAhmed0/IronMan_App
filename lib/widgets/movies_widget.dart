import 'package:flutter/material.dart';

import '../screens/movie_screen.dart';

class MoviesWidget extends StatelessWidget {
  String titleWrite = "";
  MoviesWidget({required this.titleWrite});

  List recommendedMovies = [
    "Iron Man 1",
    "Iron Man 2",
    "Iron Man 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleWrite,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Text(
              "See All",
              style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int index = 0; index < recommendedMovies.length; index++)
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieScreen(
                                  imgName: recommendedMovies[index])));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/${recommendedMovies[index]}.jpg",
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
