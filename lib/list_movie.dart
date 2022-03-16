
import 'package:flutter/material.dart';

class ListMovie extends StatelessWidget {
  final String original_language, original_title, trailer, overview, poster_path, release_date, title;
  final int id, vote_count;
  final double popularity, vote_average;


  const ListMovie(
      {Key? key,
        required this.id,
        required this.original_language,
        required this.original_title,
        required this.trailer,
        required this.overview,
        required this.poster_path,
        required this.release_date,
        required this.title,
        required this.popularity,
        required this.vote_average,
        required this.vote_count,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("$original_title")
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(
                poster_path,
                width: 200,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                original_title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              tonton(),
              Text(
                "Release Date : ${(release_date)}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Language : ${(original_language)}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Popularity : ${(popularity)}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Vote Count : ${(vote_count)}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Vote Average : ${(vote_average)}",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tonton() {
    return Container(
      child:
      OutlinedButton(
        onPressed: () {

        },
        child: Text("Watch Trailer"),
      ),
    );
  }
}
