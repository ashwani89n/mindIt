import 'package:flutter/material.dart';

class StretchScreen extends StatelessWidget {
  StretchScreen({Key? key}) : super(key: key);

  final List<String> textItems = [
    'Stretching for Beginners',
    'Hamstring Stretch',
    'Standing Quadriceps Stretch',
    'FR-EPIK',
  ];

  final List<String> textItemsDesc = [
    'Stand in a straight line with your arms outstretched. Bend your knees and reach your chest. Hold the stretch for 30 seconds.Repeat on the other side. Do 2-3 sets of each stretch.',
    'Stand up straight with feet hip-width apart. Bend right knee, grab ankle with right hand, keep left leg straight and engage core. Gently pull heel toward buttocks, feel stretch in right thigh. Hold 20-30 seconds, then switch sides.',
    'Stand with feet hip-width apart. Step forward with right foot, bend right knee, keep left leg straight. Reach for right toes, back straight, engage core. Hold for 15-30 seconds, then switch sides.',
    'Forearm Rest, Engaged core, Press Into foot, Keep back straight. Stand on one leg, bend other leg back, grab foot, keep back straight, engage core. Pull heel toward buttocks for thigh stretch. Hold 20-30 sec, switch sides.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Connect with your breath, embrace the stretch...',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: 4, // Set the number of items in the list
              itemBuilder: (context, index) {
                final imagePath = "assets/Step1_$index.PNG";

                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Container(
                          width: 130,
                          height: 170,
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            height: 170,
                            color: Colors.black,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Align text to the left
                              children: [
                                Text(
                                  textItems[index],
                                  // Use main text from the array
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(
                                  height: 4,
                                ), // Add spacing between main text and description
                                Text(
                                  textItemsDesc[
                                      index], // Use description text from the array
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
