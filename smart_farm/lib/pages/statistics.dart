import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Statistics"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Statistics",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "09 Feb 2023",
                      style: GoogleFonts.poppins(fontSize: 12),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text("Week"),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
                width: width,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Average Temperature"),
                      Text(
                        "30c",
                        style: GoogleFonts.poppins(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 400,
              width: width,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<TemperatureData, String>>[
                  LineSeries<TemperatureData, String>(
                      dataSource: <TemperatureData>[
                        TemperatureData(day: 'Mon', temp: 10),
                        TemperatureData(day: 'Tue', temp: 12),
                        TemperatureData(day: 'Wed', temp: 12),
                        TemperatureData(day: 'Thu', temp: 15),
                        TemperatureData(day: 'Fri', temp: 10),
                        TemperatureData(day: 'Sat', temp: 20),
                        TemperatureData(day: 'Sun', temp: 18),
                      ],
                      xValueMapper: (TemperatureData temp, _) => temp.day,
                      yValueMapper: (TemperatureData temp, _) => temp.temp,
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TemperatureData {
  TemperatureData({required this.day, required this.temp});
  final String day;
  final double temp;
}
