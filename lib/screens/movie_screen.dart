import 'package:flutter/material.dart';
import 'package:iron_app/widgets/movies_widget.dart';

class MovieScreen extends StatelessWidget {
  String imgName = "Iron Man 1";
  MovieScreen({super.key, required this.imgName});

  List icons = [
    Icons.add,
    Icons.favorite_border,
    Icons.download,
    Icons.share,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/cover.jpg",
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            )),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.amber.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 8)
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/$imgName.jpg",
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.amber,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.amber.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8)
                              ]),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            size: 60,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int index = 0; index < icons.length; index++)
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF292B37),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF292B37)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 4)
                                ]),
                            child: Icon(
                              icons[index],
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          imgName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Iron Man is a superhero appearing in American comic books published by Marvel Comics. Co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: MoviesWidget(titleWrite: "Recommended"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
