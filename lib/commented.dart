 //  ListView(
        //   children: <Widget>[
        //     const SizedBox(height: 25.0),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 40.0),
        //       child: Row(
        //         children: const <Widget>[
        //           Text('Dermanhana',
        //               style: TextStyle(
        //                   fontFamily: 'Montserrat',
        //                   color: Colors.white,
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 25.0)),
        //           SizedBox(width: 10.0),
        //           Text('',
        //               style: TextStyle(
        //                   fontFamily: 'Montserrat',
        //                   color: Colors.white,
        //                   fontSize: 25.0))
        //         ],
        //       ),
        //     ),
        //     const SizedBox(height: 90.0),
        //     Container(
        //       height: MediaQuery.of(context).size.height,
        //       decoration: const BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
        //       ),
        //       child: ListView(
        //         primary: false,
        //         padding: const EdgeInsets.only(left: 25.0, right: 20.0),
        //         children: <Widget>[
        //           Padding(
        //             padding: const EdgeInsets.only(top: 45.0),
        //             child: SizedBox(
        //               height: MediaQuery.of(context).size.height - 250.0,
        //               child: ListView(
        //                 children: [
        //                   _buildFoodItem(
        //                     'assets/1.png',
        //                     'ЦИНЕПАР',
        //                     ' TMT 32.00',
        //                     context,
        //                     inf: Infos.med1,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/2.png',
        //                     'Доктор МОМ',
        //                     ' TMT 72.00',
        //                     context,
        //                     inf: Infos.med2,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/3.png',
        //                     'Миг-400',
        //                     'TMT 32.00',
        //                     context,
        //                     inf: Infos.med3,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/4.png',
        //                     'Evavit',
        //                     'TMT 77.00',
        //                     context,
        //                     inf: Infos.med4,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/5.png',
        //                     'Тримол',
        //                     'TMT 12.00',
        //                     context,
        //                     inf: Infos.med5,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/6.png',
        //                     'Дексалгин',
        //                     'TMT 112.00',
        //                     context,
        //                     inf: Infos.med6,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/7.png',
        //                     'Медизин',
        //                     'TMT 24.00',
        //                     context,
        //                     inf: Infos.med7,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/8.png',
        //                     'Корвалол ',
        //                     'TMT 15.00',
        //                     context,
        //                     inf: Infos.med8,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/9.png',
        //                     'АКБАР (AKBAR)',
        //                     'TMT 8.00',
        //                     context,
        //                     inf: Infos.med9,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/10.png',
        //                     'Ламбротин',
        //                     'TMT 30.00',
        //                     context,
        //                     inf: Infos.med10,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/11.png',
        //                     'Эритромициновая',
        //                     'TMT 18.00',
        //                     context,
        //                     inf: Infos.med11,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/12.png',
        //                     'Энап НЛ 20',
        //                     'TMT 57.00',
        //                     context,
        //                     inf: Infos.med12,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/13.png',
        //                     'Эрфлюсал',
        //                     'TMT 650.00',
        //                     context,
        //                     inf: Infos.med13,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/14.png',
        //                     'Берлиприл 20 mg',
        //                     'TMT 102.00',
        //                     context,
        //                     inf: Infos.med14,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/15.png',
        //                     'Эритромициновая',
        //                     'TMT 17.00',
        //                     context,
        //                     inf: Infos.med15,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/16.png',
        //                     'БОБЕНАК-П ',
        //                     'TMT 10.00',
        //                     context,
        //                     inf: Infos.med16,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/17.png',
        //                     'Квамател',
        //                     'TMT 61.00',
        //                     context,
        //                     inf: Infos.med17,
        //                   ),
        //                   _buildFoodItem(
        //                     'assets/18.png',
        //                     'Боро плюс',
        //                     'TMT 5.00',
        //                     context,
        //                     inf: Infos.med18,
        //                   )
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: <Widget>[
        //                 Container(
        //                   height: 65.0,
        //                   width: 60.0,
        //                   decoration: BoxDecoration(
        //                     border: Border.all(
        //                         color: Colors.grey,
        //                         style: BorderStyle.solid,
        //                         width: 1.0),
        //                     borderRadius: BorderRadius.circular(10.0),
        //                   ),
        //                   child: const Center(
        //                     child: Icon(Icons.search, color: Colors.black),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 65.0,
        //                   width: 60.0,
        //                   decoration: BoxDecoration(
        //                     border: Border.all(
        //                         color: Colors.grey,
        //                         style: BorderStyle.solid,
        //                         width: 1.0),
        //                     borderRadius: BorderRadius.circular(10.0),
        //                   ),
        //                   child: const Center(
        //                     child:
        //                         Icon(Icons.shopping_basket, color: Colors.black),
        //                   ),
        //                 ),
        //                 Container(
        //                   height: 65.0,
        //                   width: 120.0,
        //                   decoration: BoxDecoration(
        //                       border: Border.all(
        //                           color: Colors.grey,
        //                           style: BorderStyle.solid,
        //                           width: 1.0),
        //                       borderRadius: BorderRadius.circular(10.0),
        //                       color: const Color(0xFF1C1428)),
        //                   child: const Center(
        //                     child: Text(
        //                       'Sargytlar',
        //                       style: TextStyle(
        //                         fontFamily: 'Montserrat',
        //                         color: Colors.white,
        //                         fontSize: 15.0,
        //                       ),
        //                     ),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),