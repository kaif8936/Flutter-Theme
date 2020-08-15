import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _switchBetween = true;

  ThemeData _light = ThemeData(
    backgroundColor: Colors.black,
    brightness: Brightness.light,
    accentColor: Colors.yellow,
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
  );
  ThemeData _dark = ThemeData(
    backgroundColor: Colors.white,
    brightness: Brightness.dark,
    accentColor: Colors.blue[100],
    primaryColor: Colors.white,
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );
  void _onShow(bool value) {
    setState(
      () {
        _switchBetween = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switchBetween ? _dark : _light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) => Container(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        '   LEARN FLUTTER',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'SWITCH DARK & LIGHT IN FLUTTER',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                            fontSize: 50,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.freepnglogos.com/uploads/google-play-png-logo/google-severs-music-studio-png-logo-21.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.freepnglogos.com/uploads/app-store-logo-png/file-app-store-ios-custom-size-18.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://img.icons8.com/color/48/000000/flutter.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 30.0,
                              color: Colors.black.withOpacity(0.3),
                              offset: Offset(10, 20),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('asset/profile.png'),
                        ),
                        title: Text(
                          'MOHD KAIF',
                          style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        subtitle: Text(
                          '@coding.kaif',
                          style: TextStyle(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          'SWIPE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 240),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).accentColor,
                      ),
                      child: Icon(
                        Icons.brightness_7,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300, left: 200),
                    child: Switch(
                      value: _switchBetween,
                      onChanged: _onShow,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
