import 'package:flutter/material.dart';

class SensorCard extends StatelessWidget {
  final String sensor;
  final int sensorValue;
  final String sensorIcon;

  const SensorCard(
      {super.key,
      required this.sensor,
      required this.sensorValue,
      required this.sensorIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 140,
        height: 150,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 226, 243, 233),
            border: Border.all(color: Color.fromARGB(255, 8, 194, 64)),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(height: 50, child: Image.asset(sensorIcon)),
            Row(
              children: [
                Text(
                  sensorValue.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text('o C'),
              ],
            ),
            Text(
              sensor,
              style: TextStyle(fontSize: 10, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
