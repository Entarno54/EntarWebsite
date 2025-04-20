import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ender Entertainment',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 213, 26),
        ),
        fontFamily: "Winky Rough",
      ),
      home: const MyHomePage(
        title: 'Ender Entertainment',
        icon: Icons.favorite,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.icon});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final IconData icon;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Builder(
          builder: (BuildContext context) {
            return Image(
              image: NetworkImage(
                "http://entarapi.xyz/images/6570091b94dd64342fa5d64cee7708d0.png",
              ),
            );
          },
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                "My own projects:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Ultimate Funkin'",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                              "http://entarapi.xyz/images/Screenshot_20250126_201215.png",
                            ),
                            width: 200,
                            height: 150,
                          ),
                          Image(
                            image: NetworkImage(
                              "http://entarapi.xyz/images/Screenshot_20250126_201230.png",
                            ),
                            width: 200,
                            height: 150,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                              "http://entarapi.xyz/images/Screenshot_20250126_201125.png",
                            ),
                            width: 200,
                            height: 150,
                          ),
                          Image(
                            image: NetworkImage(
                              "http://entarapi.xyz/images/Screenshot_20250126_201153.png",
                            ),
                            width: 200,
                            height: 150,
                          ),
                        ],
                      ),
                      FloatingActionButton.extended(
                        label: Text(
                          "Open game page",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed:
                            () => _launchUrl(
                              "https://www.roblox.com/games/77723352776553/BETA-Ultimate-Funkin",
                            ),
                      ),
                      //PROJECT 2
                      //PROJECT 2
                      Text("\n\n"),
                      Text(
                        "Gravity Gun Physics Test Place",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Row(
                        children: [
                          Image(
                            image: NetworkImage(
                              "https://tr.rbxcdn.com/180DAY-3e7a9a53344e6dd736082d55aa50b2fb/768/432/Image/Png/noFilter",
                            ),
                            width: 400,
                            height: 300,
                          ),
                        ],
                      ),
                      FloatingActionButton.extended(
                        label: Text(
                          "Open game page",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed:
                            () => _launchUrl(
                              "https://www.roblox.com/games/18778461137/Gravity-Gun-Tech-Demo",
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Text("\n\n"),
              Text(
                "Groups i work for:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text("\n\n"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  FloatingActionButton.extended(
                    label: Text(
                      "Phoenix Laboratories",
                      style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed:
                        () => _launchUrl(
                          "https://www.roblox.com/communities/7324652/PL-PHOENIX-LABORATORIES#!/about",
                        ),
                  ),
                  Image(
                    image: NetworkImage(
                      "https://tr.rbxcdn.com/180DAY-a4ac6b030eca5f3839391a0ba876c04d/150/150/Image/Webp/noFilter",
                    ),
                  ),
                  FloatingActionButton.extended(
                    label: Text(
                      "ULTRA",
                      style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed:
                        () => _launchUrl(
                          "https://www.roblox.com/communities/596408/U-L-T-R-A#!/about",
                        ),
                  ),
                  Image(
                    image: NetworkImage(
                      "https://tr.rbxcdn.com/180DAY-cfa7f0db8da2728757629abcf55f21db/150/150/Image/Webp/noFilter",
                    ),
                  ),
                  FloatingActionButton.extended(
                    label: Text(
                      "Spirepoint Institute",
                      style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed:
                        () => _launchUrl(
                          "https://www.roblox.com/communities/34376118/Spirepoint-Institute#!/about",
                        ),
                  ),
                  Image(
                    image: NetworkImage(
                      "https://tr.rbxcdn.com/180DAY-5d0ab7697e950ce0d7dfef6737009210/150/150/Image/Webp/noFilter",
                    ),
                  ),
                ],
              ),
              Text("\n\n"),
              Text(
                "My socials:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text("\n"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  FloatingActionButton(
                    onPressed:
                        () => _launchUrl("https://www.youtube.com/@entar4577"),
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeKN3zsQdLc-xPggCwHs75iVLEaqLlKec9EA&s",
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed:
                        () => _launchUrl(
                          "https://discord.com/users/923104746510905355",
                        ),
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0nrxwLV6cMNmFTmTNrAuXpu4SEq5DW38QeA&s",
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed:
                        () => _launchUrl(
                          "https://discord.com/users/923104746510905355",
                        ),
                    child: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0nrxwLV6cMNmFTmTNrAuXpu4SEq5DW38QeA&s",
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [Text("Some stupidass website by Entar™")],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String link) async {
  final Uri evilLink = Uri.parse(link);
  if (!await launchUrl(evilLink)) {
    throw Exception('Could not launch $evilLink');
  }
}
