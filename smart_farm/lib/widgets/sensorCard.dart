import 'package:flutter/material.dart';

class SensorCard extends StatelessWidget {
  final String sensor;
  final String sensorValue;
  final String sensorIcon;

  const SensorCard(
      {super.key,
      required this.sensor,
      required this.sensorValue,
      required this.sensorIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color:  Colors.grey.shade300,
          border: Border.all(color: Colors.brown.shade100, width: 2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 42, child: Image.asset(sensorIcon)),
          const SizedBox(height: 8),
          Text(
            sensorValue.toString(),
            style: TextStyle(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
          const SizedBox(height: 8),
          Text(
            sensor,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}
