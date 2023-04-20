import 'package:flutter/material.dart';

List<String> inf = [
  '',
  'Kesellerde ýeňil we orta agyrlyk agyry sindromy: - faringit, tonzillit, otit serişdesi ýollary (öd ýollary) - peşew ýoly (böwrek kolikasy) - beýni damarlary (migren) - aýal jyns organlary (algodysmenoreýa, adnexit) - muskul ulgamy, artikulýar dokumalar (tenosynowit, bursit) - nerw, mialgiýa - trawmatiki we operasiýadan soňky agyry - diş agyry - febril sindromy.',
  'Доктор МОМ çagalar we ulular üçin üsgülewüge garşy şerbet 100 ml',
  'Dowamly keseller (simptomatiki bejergi) (osteoartrit, revmatoid artrit, çagalarda ýetginjek revmatoid artriti, perikarditde agyrynyň, gyzzyrmanyň we çişmegiň peselmegi (miokard infarkty bar bolan ýagdaýynda sirke kislotasy), ulularda we çagalarda sowukda ýeňil we orta agyry, dümew, bokurdak agyry, kelle agyry (migreni goşmak bilen), diş agyrylary, myşsa agyrylary.',
  'Evavit aýallar üçin ösümlik şerbet 150 ml. Ulanylyşy: günde 2- 3 gezek 10 ml -den',
  'Ulanyş üçin görkezmeler • Kellagyry, migren, • Diş agyry, • Neýralgiýa, • Dismenoreýa, • Temperaturanyň ýokarlanmagy.',
  'Ulanmak üçin görkezmeler - Dürli gelip çykyşdaky agyry sindromyny ýeňilleşdirmek (operasiýadan soňky agyry, süňk metastazlary bilen agyry, trawmatikden soňky agyry, böwrek kolikasy, algomenoreýa, siyatika, siyatika, newrologiýa, diş agyrylary ýaly), - muskul-skelet ulgamynyň ýiti we dowamly çişme, çişme-degeneratiw we metabolik kesellerini simptomatiki bejermek.',
  'Allergiki keselleriň simptomatiki bejergisi: • Hroniki (köp ýyllyk) allergiki rinit, • Möwsümleýin allergiki rinit, • Allergiki konýunktiwit, • Hroniki idiopatiki ürtiker, • Atopik dermatit',
  'Корвалол damjasy 25 ml',
  'АКБАР (AKBAR) №10 GERDEJIKLER',
  'Ламбротин üsgülewüge garşy şerbet 100 ml ulanmak üçin görkezmeler: bronhial astma, bronhit, öýken keseli, bronhektaz, dem alyş kynçylyklary',
  'Эритромициновая göz mazy 10 gr',
  'Энап НЛ 20, 20 mg/12,5 mg №20 gerdejikler, arterial gipertoniýany we ýürek ýetmezçiligini bejermek üçin, gan aýlanyşyny gowulandyrmak üçin',
  'Эрфлюсал 5/500 порошок для ингаляций 60 доз, dem alyş ýollarynda döreýän näsazlyklar üçin poroşok',
  'Берлиприл 20 mg №30 gerdejikler, arterial gipertoniýany we ýürek ýetmezçiligini bejermek üçin',
  'Эритромициновая göz mazy 1% 10 gr',
  'Steroid däl çişmä garşy dermanlar (NSAID). Agyry we çişmegi, bogun ýa-da arka agyrysyny, gut hüjümlerini, böwrek daşlaryny ýa-da beýleki şikesleri azaltmaga kömek edýär. Agyry azaltmak we gyzzyrmany azaltmak. BOBENAC P-iň kynçylyklary: Aşgazan-içege bozulmalary, kelle agyry, baş aýlanmak, ýuwulmak, aşgazan-içege gan akmagy, aşgazan ýarasy, böwrek ýetmezçiligi.',
  'Квамател п/о 40 mg №14 gerdejikler, aşgazana kesellerine garşy ulanylýan derman serişdesi',
  'Боро плюс Antiseptiki krem, ösümlik gül 25 % 25 ml. Kesilenlere, ýanmalara, dyrnaçaklara, ýarylmalara we deriniň gyjyndyrylmagyna garşy gury deri üçin profilaktiki krem',
];

final List<Map<String, dynamic>> pills = [
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
  {'type': 'Şypaly-çomuç', 'id': 15, 'img': 'images/14.png', 'name': 'Берлиприл 20 mg', 'price': 99.00},
  {'type': 'Boý-bodron', 'id': 15, 'img': 'images/14.png', 'name': 'Берлиприл 20 mg', 'price': 101.80},
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
  {'type': 'Boý-bodron', 'id': 12, 'img': 'images/11.png', 'name': 'Эритромициновая', 'price': 16.00},
  {'type': 'Şypaly-çomuç', 'id': 12, 'img': 'images/11.png', 'name': 'Эритромициновая', 'price': 17.00},
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
textStyle(double size, Color color) => TextStyle(
      fontSize: size,
      color: color,
      fontFamily: 'Monsterrat',
    );
