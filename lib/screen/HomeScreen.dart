import 'package:flutter/material.dart';
import 'package:isolates/screen/Ext/AssetJsonService.dart';
import 'package:isolates/widgets/ButtonView.dart';
import 'package:isolates/widgets/CircularProgressIndicatorWidget.dart';
import 'package:isolates/widgets/ListItemView.dart';

import '../model/MovieModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movies> movies = [];
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Isolates demo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: ButtonView(
                        tittle: "Load without Isolate",
                        onTap: () async {
                          setState(() => loading = true);
                          MovieModel _movieModel =
                              await widget.loadWithoutIsolate();
                          print(
                              "loadWithoutIsolate succ call ${_movieModel.movies?[0].title}");

                          setState(() {
                            loading = false;
                            movies = _movieModel?.movies ?? [];
                          });
                        })),
                const SizedBox(width: 10),
                Expanded(
                    child: ButtonView(
                  tittle: "Load with Isolate",
                  buttonColor: Colors.green,
                  onTap: () async {
                    if (!loading) {
                      setState(() => loading = true);

                      MovieModel _movieModel = await widget.loadWithIsolate();

                      setState(() {
                        print("loadWithIsolate succ call");
                        loading = false;
                        movies = _movieModel?.movies ?? [];
                      });
                    }
                  },
                )),
              ],
            ),
          ),
          Expanded(
              child: loading
                  ? const CircularProgressIndicatorWidget()
                  : ListItemView(
                      movies: movies,
                    ))
        ],
      ),
    );
  }
}
