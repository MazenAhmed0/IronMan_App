import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iron_app/widgets/movies_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 4)
                          ]),
                      child: const Icon(Icons.favorite, color: Colors.redAccent),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Image.asset(
                        "assets/images/iron-man.png",
                        height: MediaQuery.of(context).size.height / 2.2,
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Iron Man",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold)),
                    ),
                    const Text(
                      "Tony Stark",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 50,
                )
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Iron Man is a superhero appearing in American comic books published by Marvel Comics. Co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MoviesWidget(titleWrite: "Movies")
          ],
        ),
      )),
    );
  }
}
