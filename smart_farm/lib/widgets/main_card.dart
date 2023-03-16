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
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        height: 200,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 226, 243, 233),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40, child: Image.asset('assets/icons/drop.png')),
                Column(
                  children: [
                    Text(
                      "$day/$month/$year",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      weather.toString(),
                      style: TextStyle(color: Colors.grey[800], fontSize: 15),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: temperture.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.blue[800]),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'o',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text: 'C',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  strutStyle: StrutStyle(
                    fontSize: 20.0,
                    height: 1.5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                    color: Color.fromARGB(255, 201, 201, 201), width: 1.0),
              )),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        child: Image.asset('assets/icons/rain.png')),
                    Column(
                      children: [
                        Text(
                          "$day/$month/$year",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          weather.toString(),
                          style:
                              TextStyle(color: Colors.grey[800], fontSize: 15),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: (temperture - 5).toString(),
                        style: TextStyle(fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'o',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                            text: 'C',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      strutStyle: StrutStyle(
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
