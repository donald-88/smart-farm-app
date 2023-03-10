import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TemperatureActions extends StatelessWidget {
  const TemperatureActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Temperature"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    tickOffset: 15,
                    labelOffset: 25,
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Text(
                        "60",
                        style: GoogleFonts.poppins(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ))
                    ],
                    minimum: 0,
                    maximum: 150,
                    ranges: <GaugeRange>[
                      GaugeRange(
                        startValue: 0,
                        endValue: 30,
                        color: Colors.blueAccent[100],
                        labelStyle: const GaugeTextStyle(fontFamily: 'Poppins'),
                      ),
                      GaugeRange(
                        startValue: 30,
                        endValue: 50,
                        color: Colors.orangeAccent[100],
                        labelStyle: const GaugeTextStyle(fontFamily: 'Poppins'),
                      ),
                      GaugeRange(
                        startValue: 50,
                        endValue: 80,
                        color: Colors.redAccent[100],
                        labelStyle: const GaugeTextStyle(fontFamily: 'Poppins'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: const [],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Quick Actions",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 132,
                      decoration: BoxDecoration(
                          color: Colors.brown[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.stacked_bar_chart,
                              size: 40,
                              color: Colors.brown,
                            ),
                            Text(
                              "Statistics",
                              style: GoogleFonts.poppins(fontSize: 18),
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 132,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Switch(
                              trackColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.brown.shade100;
                                }
                                return Colors.brown.shade100;
                              }),
                              thumbColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.brown.shade300;
                                }
                                return const Color.fromRGBO(194, 165, 165, 1);
                              }),
                              value: true,
                              onChanged: ((value) => print(value))),
                          Text(
                            "Heater On",
                            style: GoogleFonts.poppins(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
