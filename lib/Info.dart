import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:vazifalar/iphone.dart';

class Service {
  Future getCurrency() async {
    try {
      Response response =
          await Dio().get("https://nbu.uz/uz/exchange-rates/json/");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => jsonp.fromJson(e))
            .toList();
      }
    } catch (e) {
      debugPrint("xato: $e");
    }
  }
}
