import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TemperatureData> barData = [
      TemperatureData(day: "Mon", temp: 20, color: Colors.green),
      TemperatureData(day: "Tue", temp: 22, color: Colors.blue),
      TemperatureData(day: "Wed", temp: 10, color: Colors.red),
      TemperatureData(day: "Thu", temp: 20, color: Colors.yellow),
      TemperatureData(day: "Fri", temp: 28, color: Colors.purple),
      TemperatureData(day: "Sat", temp: 24, color: Colors.orange),
      TemperatureData(day: "Sun", temp: 9, color: Colors.pink),
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
                      const Text("Average Temperature"),
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
                    legend: Legend(isVisible: true, position: LegendPosition.auto),
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries<TemperatureData, String>>[
                      ColumnSeries<TemperatureData, String>(
                          dataSource: barData,
                          xValueMapper: (TemperatureData temp, _) => temp.day,
                          yValueMapper: (TemperatureData temp, _) => temp.temp,
                          width: 0.4,
                          yAxisName: "Temperature",
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

class TemperatureData {
  TemperatureData({required this.day, required this.temp, required this.color});
  final String day;
  final double temp;
  final Color color;
}
