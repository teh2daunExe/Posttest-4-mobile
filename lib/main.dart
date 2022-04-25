import 'package:flutter/material.dart';
import 'package:posttest4_reza_1915016131/MainPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest4_reza_1915016131/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'posttest 4 1915016131 M.fahreza',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const landingPage(),
    );
  }
}

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome Friend',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 45,
                    color: Color.fromARGB(255, 44, 150, 236),
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Text(
                'To My Page',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(24, 143, 240, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Container(
                width: 550,
                height: 225,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/lobby.png'),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Text(
                'Lobby Page',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 236, 66, 35),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                width: 120,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return bottomBar();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 8, 243, 212),
                  ),
                  child: Text(
                    'masuk',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 80, 233, 238),
    );
  }
}

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  final List<BottomNavigationBarItem> _myItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: '',
    ),
  ];

  final List<Widget> _myViews = [
    MainPage(),
    SecondPage(),
    Container(
      color: Colors.red,
    ),
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myViews.elementAt(_pageIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: _myItems,
        onTap: (int newIndex) {
          setState(
            () {
              _pageIndex = newIndex;
            },
          );
        },
      ),
    );
  }
}
