import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final dio = Dio();

  void getHttp() async {
    final response = await dio.get('https://api.thingspeak.com/channels/1892757/fields/1.json?api_key=7OM78QN7VLVZI8OX&results=2');
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Farm"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Temperature: "),
            Text("Humidity: "),
            Text("Light Intensity: "),
            ElevatedButton(onPressed: (() => getHttp()), child: Text("Fetch"))
          ],
        ),
      ),
    );
  }
}
