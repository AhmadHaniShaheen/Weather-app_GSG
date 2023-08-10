import 'package:flutter/material.dart';
import 'package:weather_app_gsg/models/location.dart';
import 'package:weather_app_gsg/models/weather_model.dart';
import 'package:weather_app_gsg/services/weahter_data.dart';
import 'package:weather_app_gsg/utilities/blur_container.dart';

class HompPage extends StatefulWidget {
  final WeatherModel weatherData;
  const HompPage({super.key, required this.weatherData});

  @override
  State<HompPage> createState() => _HompPageState();
}

class _HompPageState extends State<HompPage> {
  // late Future<Weather> fetchWeather;

  @override
  void initState() {
    // String descriptoin=widget.weatherData.getMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.weatherData;
    // var message=widget.weatherData.getMessage();
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
            Column(
              children: [
                BlurContainer(
                  widget: Text(
                    data.getWeatherIcon(),
                    style: const TextStyle(
                      fontSize: 48,
                    ),
                  ),
                ),
                const SizedBox(
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
                          '${data.temp.round()}°',
                          style: const TextStyle(
                            fontSize: 56,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
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
                BlurContainer(
                    widget: Text(
                  data.cityName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            BlurContainer(
              widget: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  data.getMessage(),
                  style: const TextStyle(
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
    //     body: FutureBuilder(
    //   future: fetchWeather,
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       return Container(
    //         padding: const EdgeInsets.all(32),
    //         width: double.infinity,
    //         height: double.infinity,
    //         decoration: const BoxDecoration(
    //           image: DecorationImage(
    //             image: NetworkImage(
    //                 'https://media.istockphoto.com/id/477110708/photo/weather-forecast.webp?b=1&s=170667a&w=0&k=20&c=cJDnRfarWTRVrTRGBv82aQUYmkgZp3FTCSLKLXdrcCU='),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: [
    //             ElevatedButton(
    //                 onPressed: () async {
    //                   Position p = await _determinePosition();
    //                   print(p);
    //                 },
    //                 child: const Text('test')),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Container(
    //                   padding: const EdgeInsets.all(8),
    //                   decoration: BoxDecoration(
    //                     color: Colors.transparent.withOpacity(0.1),
    //                     borderRadius: BorderRadius.circular(10),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.black.withOpacity(0.2),
    //                         blurRadius: 9.0,
    //                       ),
    //                     ],
    //                   ),
    //                   child: const Text(
    //                     'Todya',
    //                     textAlign: TextAlign.center,
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   padding: const EdgeInsets.all(8),
    //                   decoration: BoxDecoration(
    //                     color: Colors.transparent.withOpacity(0.1),
    //                     borderRadius: BorderRadius.circular(10),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.black.withOpacity(0.2),
    //                         blurRadius: 9.0,
    //                       ),
    //                     ],
    //                   ),
    //                   child: const Icon(
    //                     Icons.search,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 24,
    //             ),
    //             Column(
    //               children: [
    //                 const BlurContainer(
    //                     widget: Text(
    //                   'Palstine',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 24,
    //                   ),
    //                 )),
    //                 const SizedBox(
    //                   height: 8,
    //                 ),
    //                 const Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   children: [
    //                     BlurContainer(
    //                         widget: Row(
    //                       children: [
    //                         Text(
    //                           '27°',
    //                           style: TextStyle(
    //                             fontSize: 56,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           width: 8,
    //                         ),
    //                         Text(
    //                           'Now',
    //                           style: TextStyle(
    //                             fontSize: 32,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                       ],
    //                     )),
    //                   ],
    //                 ),
    //                 const SizedBox(
    //                   height: 16,
    //                 ),
    //                 BlurContainer(
    //                   widget: Text(
    //                     '${snapshot.data!.main}',
    //                     style: const TextStyle(
    //                       fontSize: 16,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 24,
    //             ),
    //             const BlurContainer(
    //               widget: Align(
    //                 alignment: Alignment.topLeft,
    //                 child: Text(
    //                   'descriptoin',
    //                   style: TextStyle(
    //                     fontSize: 16,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     } else if (snapshot.hasError) {
    //       return Center(child: Text('${snapshot.error}'));
    //     }
    //     return const Center(child: CircularProgressIndicator());
    //   },
    // ));
  }
}
