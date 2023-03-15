// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../util/main_card.dart';
import '../util/sensor_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: prefer_const_literals_to_create_immutables
      body: SafeArea(
        child: Column(
          children: [
            // Appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hi, ',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'NxtGen!',
                            style: TextStyle(fontSize: 26),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'welcome, back!',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 180, 180, 180)),
                          ),
                        ],
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
            SizedBox(height: 25.0),
            //biggest card

            Container(
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
                  dotHeight: 12,
                  dotWidth: 10),
            ),
            SizedBox(
              height: 25,
            ),

            //Sensor cards with icons and measurement
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Sensors',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      SensorCard(
                        sensor: "Temperature",
                        sensorValue: 20,
                        sensorIcon: "assets/icons/temperature-high_48.png",
                      ),
                      SensorCard(
                        sensor: "Light",
                        sensorValue: 60,
                        sensorIcon: "assets/icons/brightness_48.png",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
