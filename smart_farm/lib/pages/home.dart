// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/main_card.dart';
import '../widgets/sensorCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //page controller
  final _controller = PageController();

  final List<SensorClass> sensorList = [
    SensorClass(
        sensor: "Temperature",
        value: "20°c",
        sensorIcon: "assets/icons/temperature-high_48.png"),
    SensorClass(
        sensor: "Light",
        value: "58",
        sensorIcon: "assets/icons/brightness_48.png"),
    SensorClass(
        sensor: "Humidity", value: "59", sensorIcon: "assets/icons/drop.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi NxtGen, ',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'welcome, back!',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 180, 180, 180)),
                      ),
                    ],
                  ),
              
                  // user account logo
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.account_circle)),
                ],
              ),
            ),
            //biggest card
              
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MainCard(
                    temperture: 20.0,
                    day: 1,
                    month: 3,
                    year: 2023,
                    weather: "sunny",
                    imageSrc: "brightness",
                  ),
                  MainCard(
                    temperture: 15.0,
                    day: 2,
                    month: 3,
                    year: 2023,
                    weather: "rain",
                    imageSrc: "rain",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade700,
                  dotHeight: 8,
                  dotWidth: 8),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Sensors",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(16),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      childAspectRatio: 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SensorCard(
                      sensor: sensorList[index].sensor,
                      sensorValue: sensorList[index].value,
                      sensorIcon: sensorList[index].sensorIcon,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class SensorClass {
  final String sensor;
  final String value;
  final String sensorIcon;

  SensorClass(
      {required this.sensor, required this.value, required this.sensorIcon});
}
