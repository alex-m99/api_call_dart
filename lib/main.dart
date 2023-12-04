import 'package:flutter/material.dart';
import 'movie_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies List',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MovieListWidget(),
    );
  }
}

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of movies'),
      ),
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
             return ListTile(
               title: Text(titles[index]),
             );
          }
      ),
    );
  }
}


