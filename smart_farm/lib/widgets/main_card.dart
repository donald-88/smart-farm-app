// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final double temperture;
  final int day;
  final int month;
  final int year;
  final String weather;
  final String imageSrc;

  const MainCard({
    super.key,
    required this.temperture,
    required this.day,
    required this.month,
    required this.year,
    required this.weather,
    required this.imageSrc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 226, 243, 233),
            border: Border.all(color: Colors.brown.shade100, width: 1.5),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 40, child: Image.asset('assets/icons/drop.png')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today, March 2023",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rainy",
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                  ],
                ),
                Text(
                  '${temperture.toString()}°c',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ],
            ),
            Divider(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 40,
                    child: Image.asset('assets/icons/rain.png')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today, March 2023",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sunny",
                      style:
                          TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                  ],
                ),
                Text('${(temperture - 5).toString()}°c',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
