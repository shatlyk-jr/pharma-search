import 'package:flutter/material.dart';
import '../import.dart';

Center yowshan(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const SizedBox(height: 25.0),
        const Text(
          'Ýowşan dermanhana',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey,
              Color.fromARGB(255, 75, 64, 31),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 30),
              itemCount: pills.length,
              itemBuilder: (context, index) {
                // pills.shuffle();
                if (pills[index]['type'] == 'Ýowşan') {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          color: const Color.fromARGB(189, 25, 41, 49),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 140,
                                  width: 140,
                                  child: Image.asset(pills[index]['img']),
                                ),
                                const SizedBox(width: 18),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pills[index]['name'],
                                      style: textStyle(MediaQuery.of(context).size.width / 18, Colors.amber),
                                    ),
                                    Text(
                                      '${pills[index]['price']} TMT',
                                      style: textStyle(MediaQuery.of(context).size.width / 21,
                                          const Color.fromARGB(255, 188, 163, 74)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ],
    ),
  );
}
