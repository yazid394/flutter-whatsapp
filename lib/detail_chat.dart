import 'package:flutter/material.dart';

// membuat model pesan
class Message {
  final String chat;
  final bool
  isMe; // kenapa bool karena terdapat 2 kondisi antara chat kita dan tidak

  Message({required this.chat, required this.isMe});
}

class DetailChat extends StatefulWidget {
  // ditampung pakai stateful karena kalau stateles yang set state tidak bisa berjalan
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  // tambahkan controller
  TextEditingController textPesan =
      TextEditingController(); // kalau mau buat sebuat input an berfungsi sertakan controller ini

  final List<Message> pesan = [
    // isi pesan
    Message(
      chat: 'Hi! Belajar sore',
      isMe: true,
    ), // pesan dari diri sendiri karena isMe nya true dan posisi di kanan
    Message(
      chat: 'Iyaa...',
      isMe: false,
    ), // pesan posisi di kiri karena isMe false
  ];

  // membaut fungsi tombol kirim
  void kirimPesan() {
    if (textPesan.text.trim().isEmpty) return; // validasi pesan kosong

    setState(() {
      // ubah tampilan
      pesan.add(
        Message(chat: textPesan.text, isMe: true),
      ); // chat ambil dari controller
    });

    textPesan
        .clear(); // kalau misalkan udh terkirim pesannya hapus tulisan yang di inputan

    Future.delayed(const Duration(seconds: 4), () {
      // tambah future untuk menambah fitur balas chat yang bisa diatur kecepatnnya didalam parameter Duration
      if (mounted) {
        setState(() {
          pesan.add(Message(chat: 'Okee siap!', isMe: false));
        });
      }
    });
  }

  @override
  void dispose() {
    // fungsi yang mencegah aplikasi berat, kalau misalkan ada 5 controller berarti buat jadi 5 dispose menyesuaikan jumlah controller
    textPesan.dispose();
    super.dispose();
  }

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

            Text("TemanQ"),
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
            child: ListView.builder(
              // listview builder ini peruntukan untuk data dinamis
              itemCount: pesan.length, // jumlah isi dari list
              itemBuilder: (context, index) {
                // yang nantinya diisi oleh widget apa yang ingin ditampilkan

                final psn = pesan[index];

                return Align(
                  alignment: psn.isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft, // untuk posisi pesan

                  child: Container(
                    // isi pesan
                    margin: EdgeInsets.symmetric(vertical: 5), // atas bawah
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(psn.chat), // ambil chat
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller:
                        textPesan, // tambah controller karena kalau enggak dia gak bakal dipanggil ke tampilan

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
                    // debugPrint("Mengirim pesan!");
                    kirimPesan();
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
