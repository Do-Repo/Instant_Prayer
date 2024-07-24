import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:instant_prayer/models/quran.model.dart';
import 'package:instant_prayer/models/chapter.model.dart';

import 'package:http/http.dart' as http;
import 'package:instant_prayer/provider/app.provider.dart';
import 'package:provider/provider.dart';

class QuranService {
  static Future<List<Chapter>> getChapters() async {
    try {
      String url = "http://api.alquran.cloud/v1/surah";

      var request = await http.get(Uri.parse(url));
      var response = json.decode(request.body)['data'] as List;

      return response.map((e) => Chapter.fromMap(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  static Future<List<Quran>> getSurah(int number) async {
    try {
      String url = "http://api.alquran.cloud/v1/surah/$number/editions/quran-uthmani,en.asad";

      var request = await http.get(Uri.parse(url));
      var response = json.decode(request.body)['data'] as List;

      return response.map((e) => Quran.fromMap(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
