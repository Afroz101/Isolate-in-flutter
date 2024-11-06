import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';
import 'package:flutter/services.dart';
import 'package:isolates/model/MovieModel.dart';
import 'package:isolates/screen/HomeScreen.dart';

extension AssetJsonService on HomeScreen {

  Future<MovieModel> loadWithoutIsolate() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final String response = await rootBundle.loadString('assets/movie.json');
    final data = json.decode(response);
    final model = MovieModel.fromJson(data);
    heavyTask();
    return model;
  }

  Future<MovieModel> loadWithIsolate() async {
    final String response = await rootBundle.loadString('assets/movie.json');
    final receivePort = ReceivePort();
    await Isolate.spawn(_processJson, [receivePort.sendPort, response]);
    final message = await receivePort.first;
    return message;
  }

// The isolate function to process JSON.
  Future<void> _processJson(List<dynamic> args) async {
    final sendPort = args[0] as SendPort;
    final jsonString = args[1] as String;
    final data = json.decode(jsonString);
    final model = MovieModel.fromJson(data);
    heavyTask();
    sendPort.send(model);
  }

  void heavyTask() {
    int total = 0;
    for (int i = 0; i < 500000000; i++) {
      total += (i * 2);
    }
    log("FINAL TOTAL: $total");
  }
}
