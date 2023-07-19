import 'package:android_clock/analog.dart';
import 'package:android_clock/digital.dart';
import 'package:android_clock/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
        scaffoldBackgroundColor: Color.fromARGB(255, 58, 66, 86),
      ),
      routes: {
        MyRoutes.analog: (context) => const Analog(),
        MyRoutes.digital: (context) => const DigitalWatch(),
        MyRoutes.Home: (context) => const MainPage()
      },
      initialRoute: MyRoutes.Home,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: const Text('Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color(0xE4404B60)),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1.0, color: Colors.white24))),
                    child: const Icon(
                      Icons.access_time,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  title: const Text(
                    'Analog Watch',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.analog);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 12.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1.0, color: Colors.white24))),
                    child: Image.asset(
                      'assets/digital-clock.png',
                      scale: 15.0,
                    ),
                  ),
                  title: const Text(
                    'Digital Watch',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.digital);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
