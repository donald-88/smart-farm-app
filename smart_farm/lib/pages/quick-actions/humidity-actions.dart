import 'package:flutter/material.dart';

class HumidityActions extends StatelessWidget {
  const HumidityActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Humidity"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Container(),
          Column(children: [
            const Text("Quick Actions"),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.green[200]),
                ),
                Container()
              ],
            )
          ])
        ],
      ),
    );
  }
}
