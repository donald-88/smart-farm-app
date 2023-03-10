import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Light extends StatelessWidget {
  const Light({super.key});

  @override
  Widget build(BuildContext context) {
    final List<LightData> barData = [
      LightData(day: "Mon", light: 20, color: Colors.green),
      LightData(day: "Tue", light: 22, color: Colors.blue),
      LightData(day: "Wed", light: 10, color: Colors.red),
      LightData(day: "Thu", light: 20, color: Colors.yellow),
      LightData(day: "Fri", light: 28, color: Colors.purple),
      LightData(day: "Sat", light: 24, color: Colors.orange),
      LightData(day: "Sun", light: 9, color: Colors.pink),
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
                      const Text("Average Light Intensity"),
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
                    series: <ChartSeries<LightData, String>>[
                      ColumnSeries<LightData, String>(
                          color: Colors.red[300],
                          name: "high",
                          dataSource: barData,
                          xValueMapper: (LightData light, _) => light.day,
                          yValueMapper: (LightData light, _) => light.light,
                          width: 0.4,
                          yAxisName: "Light Intesity",
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

class LightData {
  LightData({required this.day, required this.light, required this.color});
  final String day;
  final double light;
  final Color color;
}
