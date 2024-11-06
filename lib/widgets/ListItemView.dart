import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:isolates/widgets/CircularProgressIndicatorWidget.dart';
import '../model/MovieModel.dart';

class ListItemView extends StatelessWidget {
  List<Movies> movies = [];

  ListItemView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = movies[index];
        return Container(
          margin: const EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 1.0,
            ),
          ]),
          child: Column(
            children: [
              Row(
                children: [
                  CachedNetworkImage(
                    width: 100,
                    height: 100,
                    imageUrl: item.poster ?? "",
                    imageBuilder: (context, image) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: image, fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey, width: 3),
                      ),
                    ),
                    progressIndicatorBuilder: (_, url, progress) =>
                        DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: const CircularProgressIndicatorWidget(),
                    ),
                    errorWidget: (context, url, error) => Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: const Icon(Icons.image),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textWidget("Title:${item.title ?? ""}"),
                      textWidget("Director:${item.director ?? ""}"),
                      textWidget("Year:${item.year ?? ""}"),
                    ],
                  ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

Widget textWidget(String text) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
  );
}
