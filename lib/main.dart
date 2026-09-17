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
            Column(
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