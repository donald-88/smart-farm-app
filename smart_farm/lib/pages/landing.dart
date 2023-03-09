import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 2,
            width: width,
            child: Image.asset(
              'assets/images/landing_pic.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: height / 2,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(97, 111, 102, 1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Lets Manage Our Green House",
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The green house system is to help you manage your yield easily on your finger tips. ",
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green[600]),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Get Started"),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
