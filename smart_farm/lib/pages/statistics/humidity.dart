import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Humidity extends StatelessWidget {
  const Humidity({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HumidityData> barData = [
      HumidityData(day: "Mon", humidity: 20, color: Colors.green),
      HumidityData(day: "Tue", humidity: 22, color: Colors.blue),
      HumidityData(day: "Wed", humidity: 10, color: Colors.red),
      HumidityData(day: "Thu", humidity: 20, color: Colors.yellow),
      HumidityData(day: "Fri", humidity: 28, color: Colors.purple),
      HumidityData(day: "Sat", humidity: 24, color: Colors.orange),
      HumidityData(day: "Sun", humidity: 9, color: Colors.pink),
    ];
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
                      const Text("Average Humidity"),
                      Text(
                        "30c",
                        style: GoogleFonts.poppins(
                            fontSize: 32, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 20),
            SizedBox(
                height: 400,
                width: width,
                child: SfCartesianChart(
                    legend: Legend(isVisible: true),
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries<HumidityData, String>>[
                      ColumnSeries<HumidityData, String>(
                          color: Colors.red[300],
                          name: "high",
                          dataSource: barData,
                          xValueMapper: (HumidityData humidity, _) =>
                              humidity.day,
                          yValueMapper: (HumidityData humidity, _) =>
                              humidity.humidity,
                          width: 0.4,
                          yAxisName: "Humidity Intesity",
                          xAxisName: "Days",
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16))),
                    ]))
          ],
        ),
      ),
    );
  }
}

class HumidityData {
  HumidityData(
      {required this.day, required this.humidity, required this.color});
  final String day;
  final double humidity;
  final Color color;
}
