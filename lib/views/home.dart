import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app_gsg/utilities/blur_container.dart';

class HompPage extends StatefulWidget {
  const HompPage({super.key});

  @override
  State<HompPage> createState() => _HompPageState();
}

class _HompPageState extends State<HompPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://media.istockphoto.com/id/477110708/photo/weather-forecast.webp?b=1&s=170667a&w=0&k=20&c=cJDnRfarWTRVrTRGBv82aQUYmkgZp3FTCSLKLXdrcCU='),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 9.0,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Todya',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 9.0,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Column(
              children: [
                BlurContainer(
                    widget: Text(
                  'Palstine',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BlurContainer(
                        widget: Row(
                      children: [
                        Text(
                          '27°',
                          style: TextStyle(
                            fontSize: 56,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Now',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                BlurContainer(
                  widget: Text(
                    'cityName',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const BlurContainer(
              widget: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'descriptoin',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
