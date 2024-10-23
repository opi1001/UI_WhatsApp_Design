import 'package:flutter/material.dart';

class MassageScreen extends StatefulWidget {
  final String name;
  final String image;

  const MassageScreen({super.key, required this.name, required this.image});

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {
  List<Map> chatList = [
    {
      "massage": 'Hello',
      "it_me": true,
      "timeing": '4:00',
    },
    {
      "massage": 'Hi',
      "it_me": false,
      "timeing": '4:01',
    },
    {
      "massage": 'How are you',
      "it_me": true,
      "timeing": '4:02',
    },
    {
      "massage": 'fine',
      "it_me": false,
      "timeing": '4:03',
    },
    {
      "massage": 'What are you doing',
      "it_me": true,
      "timeing": '4:04',
    },
    {
      "massage": 'Now i am writing programming',
      "it_me": false,
      "timeing": '4:05',
    },
    {
      "massage": 'Oh! That is good',
      "it_me": true,
      "timeing": '4:07',
    },
    {
      "massage": 'Yeah Yeah',
      "it_me": false,
      "timeing": '5:00',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E55),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
          title: Expanded(
            child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(widget.image),
                ),
                title: Text(
                  widget.name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Last Seen 7:00 PM",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                trailing: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ],
                )),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(50),
                  itemCount: chatList.length,
                  itemBuilder: (context, index) {
                    final opi = chatList[index];
                    return Column(
                      crossAxisAlignment: opi["it_me"] == true
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              constraints: const BoxConstraints(maxWidth: 200),
                              decoration: BoxDecoration(
                                  color: opi['it_me'] == true
                                      ? Color(0xFF075E55)
                                      : Colors.black,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Center(
                                  child: Text(
                                opi["massage"],
                                style: const TextStyle(color: Colors.white),
                              )),
                            ),
                            Text(opi['timeing']),
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                prefix: Icon(Icons.emoji_emotions_outlined),
                                suffix: Icon(
                                  Icons.link,
                                  size: 30.0,
                                ),
                                hintText: ' messages',
                                hintStyle: TextStyle(fontSize: 20),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xFF075E55),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
