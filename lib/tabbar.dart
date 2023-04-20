import 'package:flutter/material.dart';
import 'import.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    super.initState();
  }

  bool _load = false;

  Future<void> onCLick() async {
    setState(() {
      _load = true;
    });
    await Future.delayed(const Duration(milliseconds: 400));
    setState(() {
      _load = false;
    });
  }

  var i = 0;
  var color = Colors.blueGrey[900];

  @override
  Widget build(BuildContext context) {
    switch (i) {
      case 0:
        color = const Color.fromARGB(255, 15, 27, 33);
        break;
      case 1:
        color = const Color.fromARGB(255, 38, 80, 36);
        break;
      case 2:
        color = const Color.fromARGB(255, 75, 64, 31);
        break;
      case 3:
        color = const Color.fromARGB(255, 54, 38, 56);
        break;
      case 4:
        color = const Color.fromARGB(255, 33, 20, 26);
        break;
      default:
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(207, 19, 32, 39),
        title: Text(
          'DERMANHANALAR',
          style: textStyle(24, Colors.amber),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        bottom: TabBar(
          indicator: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color.fromARGB(255, 15, 14, 46),
          ),
          indicatorColor: Colors.yellow[700],
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.yellow[700],
          tabs: const [
            Tab(
              icon: Icon(Icons.medical_services),
              child: Text('Tebip'),
            ),
            Tab(icon: Icon(Icons.medical_services), text: 'Şypaly\nçomuç'),
            Tab(
              icon: Icon(Icons.medical_services),
              child: Text('Ýowşan'),
            ),
            Tab(
              icon: Icon(Icons.medical_services),
              child: Text('Boý\nbodron', textAlign: TextAlign.center),
            ),
            Tab(
              icon: Icon(Icons.medical_services),
              child: Text('Saglyk'),
            ),
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          onTap: (value) {
            setState(() {
              i = _tabController!.index;
              onCLick();
              pills.shuffle();
              // print(pills.length);
            });
          },
        ),
      ),
      backgroundColor: color,
      body: _load
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            tebip(context),
                            shypaly(context),
                            yowshan(context),
                            boybodron(context),
                            saglyk(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.elliptical(100, 50),
                          topRight: Radius.elliptical(100, 50),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(107, 41, 37, 27),
                            Colors.green[700]!,
                            const Color.fromARGB(107, 41, 37, 27),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 70,
        highlightElevation: 80,
        // highlightElevation: 3,
        backgroundColor: Colors.amber,
        focusColor: Colors.red,
        splashColor: Colors.blueGrey[900],
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const CustomSearchDelegate()));
        },
        child: Icon(
          Icons.search,
          color: Colors.blueGrey[900],
          size: 30,
        ),
      ),
    );
  }
}
