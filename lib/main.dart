import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Silverqueen"),
                    subtitle: Text('Mau dispen gak?'),
                    trailing: Text('50', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Dizayy"),
                    subtitle: Text('Oke'),
                    trailing: Text('50', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Widiee"),
                    subtitle: Text('kapan?'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Abdur"),
                    subtitle: Text('Bareng atuh di motor...'),
                    trailing: Text('4', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Client"),
                    subtitle: Text('kurang element deh zid'),
                    trailing: Text('3', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Ridaxc"),
                    subtitle: Text('jit, jarjit'),
                    trailing: Text('6', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("fira pradanack"),
                    subtitle: Text('iyaa nnt surat mandatnya nyusul'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("khanapi"),
                    subtitle: Text('bsc malem ini yaa..'),
                    trailing: Text('4', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("SAMSUNG INOVSTION CAMPUS (SIC)"),
                    subtitle: Text('Ayoo masuk zoom nya, kuota zoomnya masih banyak kok'),
                    trailing: Text('3', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Albert"),
                    subtitle: Text('iye bet elahh'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Cilla"),
                    subtitle: Text('ihh cilung enak deh'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Haika"),
                    subtitle: Text('zid zdi, gozay'),
                    trailing: Text('8', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Gio"),
                    subtitle: Text('ehh besok jadi seleksi gk?'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("mabar epep"),
                    subtitle: Text('janlup sparing sama kampung sebelah'),
                    trailing: Text('3', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("eskul flutter"),
                    subtitle: Text('segitu saja pertemuan kita kali ini'),
                    trailing: Text('3', style: TextStyle(color: Colors.green)),
                  ),
                ),

                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("PP"),
                    subtitle: Text('itu ceritanya jadi apa?'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.add_circle_outline_sharp),
                  title: Text('My status'),
                  subtitle: Text('Tap to add status update'),
                ),
                Text('Recent updates'),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Dizayyy'),
                  subtitle: Text('2 minutes ago'),
                )
              ],
            ),


            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Dizayyy'),
                  subtitle: Text('15 minutes ago', style: TextStyle(color: Colors.red),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}