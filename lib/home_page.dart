import 'package:flutter/material.dart';
import 'list_movie.dart';
import 'data_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final DataMovie movie = getDataMovie[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListMovie(
                  id: movie.id,
                  original_language: movie.original_language,
                  poster_path: movie.poster_path,
                  trailer: movie.trailer,
                  overview: movie.overview,
                  title: movie.title,
                  original_title: movie.original_title,
                  release_date: movie.release_date,
                  popularity: movie.popularity,
                  vote_average: movie.vote_average,
                  vote_count: movie.vote_count,
                );
              }));
            },
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.network(
                      movie.poster_path,
                      width: 600,
                    ),
                  )),
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                movie.original_title,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Release Date : ${(movie.release_date)}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Popularity : ${(movie.popularity)}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
