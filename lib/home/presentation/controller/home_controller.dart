import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/home/repository/home_repository.dart';
import 'package:movie_app/home/repository/models/movie_response.dart';

/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

class HomeController extends GetxController {
  final HomeRepository repository;
  var count = 0.obs;

  HomeController({required this.repository});

  void increment() {
    repository.getMovie()
    .then((value) => _success(value.results) )
    .catchError((error) => debugPrint(error.toString()) );
  }

  void _success(List<MovieResponse> movie) {
    for (var element in movie) { debugPrint(element.title); }
  }
}