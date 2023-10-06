import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationAlertDialog extends StatelessWidget {
  const LocationAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 850,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: [
          Container(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Location Details',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Press on the location and get the direction in Map',
                  style: TextStyle(fontSize: 12.1),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Trichy',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launch(
                                    'https://maps.app.goo.gl/N1QaVwhUd9M4HgmE9');
                              },
                              child: const Text(
                                'Trichy,',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Karur',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launch(
                                    'https://maps.app.goo.gl/jA3ftT9gURgCHnLc9');
                              },
                              child: const Text(
                                'Karur',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Dindigul',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launch('https://maps.app.goo.gl/npHDFzQsTAKNdNBa9');
                              },
                              child: const Text(
                                'Dindigul',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Madurai',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launch('https://maps.app.goo.gl/adE5ejJHzoeU2yNF8');
                              },
                              child: const Text(
                                'Madurai',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Thanjavur',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                            launch('https://maps.app.goo.gl/xkZAttDyWqPw6iEZ8');
                              },
                              child: const Text(
                                'Thanjavur',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tharagampatti',
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                launch('https://maps.app.goo.gl/oaAMumC4rC7ch8Z88');
                              },
                              child: const Text(
                                'Tharagampatti',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14.0),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
