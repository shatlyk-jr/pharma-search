import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'import.dart';

class CustomSearchDelegate extends StatefulWidget {
  const CustomSearchDelegate({Key? key}) : super(key: key);

  @override
  _CustomSearchDelegateState createState() => _CustomSearchDelegateState();
}

class _CustomSearchDelegateState extends State<CustomSearchDelegate> {
  List<Map<String, dynamic>> foundPills = [];
  @override
  initState() {
    // at the beginning, all users are shown
    foundPills = pillls;

    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = pillls;
    } else {
      results = pillls
          .where((user) => user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundPills = results;
    });
  }

  TextEditingController textEditingController = TextEditingController();
  bool isFull = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 41, 41),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text('Gözleg'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    side: BorderSide(width: 1, color: Colors.amber)),
                color: Colors.blueGrey[900],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    inputFormatters: [],
                    controller: textEditingController,
                    cursorColor: Colors.amber,
                    style: const TextStyle(
                      fontFamily: 'Monsterrat',
                      fontSize: 16,
                      color: Colors.amber,
                    ),
                    //
                    onChanged: (value) {
                      _runFilter(value);
                      if (value.isNotEmpty) {
                        setState(() {
                          isFull = true;
                        });
                      } else if (value.isEmpty) {
                        setState(() {
                          isFull = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Gözleg',
                      labelStyle: const TextStyle(color: Colors.amber),
                      suffixIcon: IconButton(
                          onPressed: () {
                            isFull
                                ? setState(() {
                                    isFull = true;
                                    textEditingController.clear();
                                    foundPills.clear();
                                  })
                                : null;
                          },
                          icon: Icon(
                            isFull ? Icons.close : Icons.search,
                            color: Colors.amber,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              isFull
                  ? const Center(
                      child: Text('Netije', style: TextStyle(color: Colors.amber, fontSize: 20)))
                  : Container(),
              const SizedBox(
                height: 20,
              ),
              isFull
                  ? Expanded(
                      child: foundPills.isNotEmpty
                          ? ListView.builder(
                              itemCount: foundPills.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  key: ValueKey(Random().nextInt(foundPills[index]["id"])),
                                  color: Colors.amberAccent,
                                  elevation: 4,
                                  margin: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14.0, vertical: 4),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Image(
                                              image: AssetImage(foundPills[index]['img']),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              foundPills[index]['name'],
                                              style: textStyle(20, Colors.black),
                                            ),
                                            Card(
                                              margin: const EdgeInsets.symmetric(vertical: 4),
                                              color: const Color.fromARGB(255, 24, 39, 47),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Text(
                                                  '${foundPills[index]["price"].toString()} TMT',
                                                  style: textStyle(
                                                      16, Color.fromARGB(255, 255, 255, 0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: 70,
                                          width: 80,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            color: Color.fromARGB(255, 11, 13, 22),
                                          ),
                                          child: Center(
                                            child: Text(
                                              foundPills[index]['type'],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )
                          : const Text(
                              'Gözleg boýunça maglumat tapylmady',
                              style: TextStyle(fontSize: 24, color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                    )
                  : Column(
                      children: const [
                        Text(
                          'Gözleg boşlugyna gerek dermanyň adyny ýazyň',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.amber,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> pillls = [
  {'type': 'Saglyk', 'id': 20, 'img': 'images/s-evavit.png', 'name': 'Evavit', 'price': 69.60},
  {'type': 'Boý-bodron', 'id': 4, 'img': 'images/boy-eva.png', 'name': 'Evavit', 'price': 70.00},
  {'type': 'Ýowşan', 'id': 20, 'img': 'images/4.png', 'name': 'Evavit', 'price': 72.60},
  {'type': 'Tebip', 'id': 4, 'img': 'images/4.png', 'name': 'Evavit', 'price': 74.50},
  {'type': 'Şypaly-çomuç', 'id': 4, 'img': 'images/lz-eva.png', 'name': 'Evavit', 'price': 77.00},
  //
  {'type': 'Ýowşan', 'id': 21, 'img': 'images/16.png', 'name': 'БОБЕНАК-П  ', 'price': 7.50},
  {'type': 'Saglyk', 'id': 21, 'img': 'images/16.png', 'name': 'БОБЕНАК-П  ', 'price': 8.50},
  {'type': 'Şypaly-çomuç', 'id': 21, 'img': 'images/16.png', 'name': 'БОБЕНАК-П  ', 'price': 9.00},
  {'type': 'Tebip', 'id': 17, 'img': 'images/16.png', 'name': 'БОБЕНАК-П ', 'price': 9.80},
  {'type': 'Boý-bodron', 'id': 21, 'img': 'images/16.png', 'name': 'БОБЕНАК-П  ', 'price': 10.50},
  //
  {'type': 'Şypaly-çomuç', 'id': 22, 'img': 'images/10.png', 'name': 'Ламбротин', 'price': 25.00},
  {'type': 'Tebip', 'id': 22, 'img': 'images/10.png', 'name': 'Ламбротин', 'price': 26.80},
  {'type': 'Ýowşan', 'id': 22, 'img': 'images/10.png', 'name': 'Ламбротин', 'price': 28.50},
  {'type': 'Boý-bodron', 'id': 22, 'img': 'images/10.png', 'name': 'Ламбротин', 'price': 31.00},
  {'type': 'Saglyk', 'id': 10, 'img': 'images/10.png', 'name': 'Ламбротин', 'price': 33.00},

  ///2022-11-25-22-09-02.png
  {'type': 'Tebip', 'id': 7, 'img': 'images/7.png', 'name': 'Медизин', 'price': 21.00},
  {'type': 'Ýowşan', 'id': 23, 'img': 'images/7.png', 'name': 'Медизин', 'price': 22.50},
  {'type': 'Saglyk', 'id': 7, 'img': 'images/7.png', 'name': 'Медизин', 'price': 24.00},
  {'type': 'Boý-bodron', 'id': 7, 'img': 'images/7.png', 'name': 'Медизин', 'price': 25.00},
  {'type': 'Şypaly-çomuç', 'id': 7, 'img': 'images/7.png', 'name': 'Медизин', 'price': 26.00},
  //
  {'type': 'Saglyk', 'id': 15, 'img': 'images/14.png', 'name': 'Берлиприл 20 mg', 'price': 93.00},
  {'type': 'Ýowşan', 'id': 24, 'img': 'images/14.png', 'name': 'Берлиприл 20 mg', 'price': 97.00},
  {
    'type': 'Şypaly-çomuç',
    'id': 15,
    'img': 'images/14.png',
    'name': 'Берлиприл 20 mg',
    'price': 99.00
  },
  {
    'type': 'Boý-bodron',
    'id': 15,
    'img': 'images/14.png',
    'name': 'Берлиприл 20 mg',
    'price': 101.80
  },
  {'type': 'Tebip', 'id': 15, 'img': 'images/14.png', 'name': 'Берлиприл 20 mg', 'price': 105.00},
  //
  {'type': 'Ýowşan', 'id': 25, 'img': 'images/3.png', 'name': 'Миг-400', 'price': 29.00},
  {'type': 'Saglyk', 'id': 3, 'img': 'images/3.png', 'name': 'Миг-400', 'price': 33.00},
  {'type': 'Boý-bodron', 'id': 3, 'img': 'images/3.png', 'name': 'Миг-400', 'price': 35.00},
  {'type': 'Şypaly-çomuç', 'id': 3, 'img': 'images/3.png', 'name': 'Миг-400', 'price': 38.00},
  {'type': 'Tebip', 'id': 3, 'img': 'images/3.png', 'name': 'Миг-400', 'price': 41.00},
  //
  {'type': 'Tebip', 'id': 18, 'img': 'images/17.png', 'name': 'Квамател', 'price': 28.00},
  {'type': 'Şypaly-çomuç', 'id': 26, 'img': 'images/17.png', 'name': 'Квамател', 'price': 37.00},
  {'type': 'Boý-bodron', 'id': 26, 'img': 'images/17.png', 'name': 'Квамател', 'price': 44.00},
  {'type': 'Ýowşan', 'id': 26, 'img': 'images/17.png', 'name': 'Квамател', 'price': 48.00},
  {'type': 'Saglyk', 'id': 26, 'img': 'images/17.png', 'name': 'Квамател', 'price': 49.50},
  //
  {'type': 'Şypaly-çomuç', 'id': 6, 'img': 'images/6.png', 'name': 'Дексалгин', 'price': 97.00},
  {'type': 'Saglyk', 'id': 27, 'img': 'images/6.png', 'name': 'Дексалгин', 'price': 108.00},
  {'type': 'Boý-bodron', 'id': 6, 'img': 'images/6.png', 'name': 'Дексалгин', 'price': 110.70},
  {'type': 'Ýowşan', 'id': 6, 'img': 'images/6.png', 'name': 'Дексалгин', 'price': 112.00},
  {'type': 'Tebip', 'id': 6, 'img': 'images/6.png', 'name': 'Дексалгин', 'price': 113.80},
  //
  {'type': 'Ýowşan', 'id': 28, 'img': 'images/18.png', 'name': 'Боро плюс', 'price': 3.50},
  {'type': 'Tebip', 'id': 19, 'img': 'images/18.png', 'name': 'Боро плюс', 'price': 4.00},
  {'type': 'Saglyk', 'id': 19, 'img': 'images/18.png', 'name': 'Боро плюс', 'price': 5.70},
  {'type': 'Şypaly-çomuç', 'id': 19, 'img': 'images/18.png', 'name': 'Боро плюс', 'price': 6.40},
  {'type': 'Boý-bodron', 'id': 19, 'img': 'images/18.png', 'name': 'Боро плюс', 'price': 7.00},
  //
  {'type': 'Saglyk', 'id': 8, 'img': 'images/8.png', 'name': 'Корвалол ', 'price': 15.00},
  {'type': 'Tebip', 'id': 8, 'img': 'images/8.png', 'name': 'Корвалол ', 'price': 15.70},
  {'type': 'Ýowşan', 'id': 29, 'img': 'images/8.png', 'name': 'Корвалол ', 'price': 16.50},
  {'type': 'Şypaly-çomuç', 'id': 8, 'img': 'images/8.png', 'name': 'Корвалол ', 'price': 17.90},
  {'type': 'Boý-bodron', 'id': 8, 'img': 'images/8.png', 'name': 'Корвалол ', 'price': 19.00},
  //
  {'type': 'Tebip', 'id': 13, 'img': 'images/12.png', 'name': 'Энап НЛ 20', 'price': 57.00},
  {'type': 'Saglyk', 'id': 13, 'img': 'images/12.png', 'name': 'Энап НЛ 20', 'price': 58.80},
  {'type': 'Boý-bodron', 'id': 13, 'img': 'images/12.png', 'name': 'Энап НЛ 20', 'price': 60.00},
  {'type': 'Ýowşan', 'id': 30, 'img': 'images/12.png', 'name': 'Энап НЛ 20', 'price': 62.00},
  {'type': 'Şypaly-çomuç', 'id': 13, 'img': 'images/12.png', 'name': 'Энап НЛ 20', 'price': 67.00},
  //
  {'type': 'Ýowşan', 'id': 31, 'img': 'images/1.png', 'name': 'ЦИНЕПАР', 'price': 28.00},
  {'type': 'Boý-bodron', 'id': 1, 'img': 'images/1.png', 'name': 'ЦИНЕПАР', 'price': 32.00},
  {'type': 'Şypaly-çomuç', 'id': 1, 'img': 'images/1.png', 'name': 'ЦИНЕПАР', 'price': 33.00},
  {'type': 'Saglyk', 'id': 1, 'img': 'images/1.png', 'name': 'ЦИНЕПАР', 'price': 34.60},
  {'type': 'Tebip', 'id': 1, 'img': 'images/1.png', 'name': 'ЦИНЕПАР', 'price': 36.00},
  //
  {'type': 'Boý-bodron', 'id': 2, 'img': 'images/2.png', 'name': 'Доктор МОМ', 'price': 66.00},
  {'type': 'Saglyk', 'id': 2, 'img': 'images/2.png', 'name': 'Доктор МОМ', 'price': 69.30},
  {'type': 'Tebip', 'id': 2, 'img': 'images/2.png', 'name': 'Доктор МОМ', 'price': 71.00},
  {'type': 'Şypaly-çomuç', 'id': 2, 'img': 'images/2.png', 'name': 'Доктор МОМ', 'price': 74.00},
  {'type': 'Ýowşan', 'id': 37, 'img': 'images/2.png', 'name': 'Доктор МОМ', 'price': 77.00},
  //
  {'type': 'Şypaly-çomuç', 'id': 9, 'img': 'images/9.png', 'name': 'АКБАР (AKBAR)', 'price': 5.00},
  {'type': 'Ýowşan', 'id': 32, 'img': 'images/9.png', 'name': 'АКБАР (AKBAR)', 'price': 6.00},
  {'type': 'Tebip', 'id': 9, 'img': 'images/9.png', 'name': 'АКБАР (AKBAR)', 'price': 8.00},
  {'type': 'Saglyk', 'id': 9, 'img': 'images/9.png', 'name': 'АКБАР (AKBAR)', 'price': 8.30},
  {'type': 'Boý-bodron', 'id': 9, 'img': 'images/9.png', 'name': 'АКБАР (AKBAR)', 'price': 8.80},
  //
  {'type': 'Tebip', 'id': 5, 'img': 'images/5.png', 'name': 'Тримол', 'price': 10.00},
  {'type': 'Şypaly-çomuç', 'id': 5, 'img': 'images/5.png', 'name': 'Тримол', 'price': 12.00},
  {'type': 'Saglyk', 'id': 5, 'img': 'images/5.png', 'name': 'Тримол', 'price': 13.70},
  {'type': 'Boý-bodron', 'id': 5, 'img': 'images/5.png', 'name': 'Тримол', 'price': 15.40},
  {'type': 'Ýowşan', 'id': 35, 'img': 'images/5.png', 'name': 'Тримол', 'price': 16.00},
  //
  {'type': 'Ýowşan', 'id': 16, 'img': 'images/15.png', 'name': 'Эритромициновая', 'price': 14.00},
  {
    'type': 'Boý-bodron',
    'id': 12,
    'img': 'images/11.png',
    'name': 'Эритромициновая',
    'price': 16.00
  },
  {
    'type': 'Şypaly-çomuç',
    'id': 12,
    'img': 'images/11.png',
    'name': 'Эритромициновая',
    'price': 17.00
  },
  {'type': 'Saglyk', 'id': 12, 'img': 'images/11.png', 'name': 'Эритромициновая', 'price': 18.00},
  {'type': 'Tebip', 'id': 12, 'img': 'images/11.png', 'name': 'Эритромициновая', 'price': 19.00},
  //
  {'type': 'Tebip', 'id': 14, 'img': 'images/13.png', 'name': 'Эрфлюсал', 'price': 588.00},
  {'type': 'Saglyk', 'id': 14, 'img': 'images/13.png', 'name': 'Эрфлюсал', 'price': 590.00},
  {'type': 'Şypaly-çomuç', 'id': 14, 'img': 'images/13.png', 'name': 'Эрфлюсал', 'price': 600.00},
  {'type': 'Boý-bodron', 'id': 14, 'img': 'images/13.png', 'name': 'Эрфлюсал', 'price': 610.00},
  {'type': 'Ýowşan', 'id': 34, 'img': 'images/13.png', 'name': 'Эрфлюсал', 'price': 620.00},
  //
];
