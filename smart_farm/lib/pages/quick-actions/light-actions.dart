import 'package:flutter/material.dart';

class LightActions extends StatelessWidget {
  const LightActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Light"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Container(),
          Container(
            child: Column(children: [
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
            ]),
          )
        ],
      ),
    );
  }
}
