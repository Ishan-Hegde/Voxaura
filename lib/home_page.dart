import 'package:flutter/material.dart';
import 'package:voxaura/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('VoxAura'),
          centerTitle: true,
          leading: const Icon(Icons.menu),
        ),
        //Virtual Assistant Circular Picutre
        body: Column(children: [
          Stack(children: [
            Center(
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Pallete.assistantCircleColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
                height: 130,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/virtualAssistant.png',
                      ),
                    )))
          ]),
          //Chat Bubble
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
              ).copyWith(
                top: 30,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Pallete.borderColor,
                ),
              ),
              child: const Text(
                'Good Morning, how may I assist you today?',
                style: TextStyle(fontSize: 20, color: Pallete.whiteColor),
              )),
        ]));
  }
}
