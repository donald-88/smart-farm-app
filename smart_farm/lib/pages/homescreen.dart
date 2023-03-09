import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    void getHttp() async {
      final response = await dio.get(
          'https://api.thingspeak.com/channels/1892757/fields/1.json?api_key=7OM78QN7VLVZI8OX&results=2');
      print(response);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello NxtGen,"),
      ),
      body: Column(),
    );
  }
}
