import 'package:flutter/material.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(child: Icon(Icons.person)),
            ),

            Text("silqXjant"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Video Call!");
            },
            icon: Icon(Icons.videocam),
          ),

          IconButton(
            onPressed: () {
              debugPrint("Voice Call!");
            },
            icon: Icon(Icons.call),
          ),

          IconButton(
            onPressed: () {
              debugPrint("Menu!");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("kamu gimana kabarnya?"),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("alhamdulillah baikkk, tapi yazid.."),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("alhamdulillah kalo baik, ada apaa?"),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("aku gk bisa pionering, bantuin aku boleh?"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("amann aja, nanti sama aku dibantuin"),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Tulis pesan...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {
                    debugPrint("Mengirim pesan!");
                  }, 
                  icon: Icon(Icons.send)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
