import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_design/views/HomeView/massageScreen/massage_Screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeView> {
  List chatList = [
    {
      'name': "MD Opi",
      'image':
          "https://images.unsplash.com/photo-1609010697446-11f2155278f0?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmVzc2lvbmFsJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
      'last_message': 'Hi, Opi!! How are you',
      'time': '12:00 AM',
      'count': '0',
    },
    {
      'name': "MD Jahid ",
      'image':
          "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
      'last_message': 'Hi, Programmar!!',
      'time': '4:00 AM',
      'count': "5",
    },
    {
      'name': "MD Sourav",
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRl6cNRDLvGhjRGtxkl_2caFEqnOKs3kU-Qg&s",
      'last_message': 'Hi, Programmar!! Please give me a reply',
      'time': '9:00 AM',
      'count': '9+',
    },
    {
      'name': "MD Rakib",
      'image':
          "https://burst.shopifycdn.com/photos/stylish-man-in-bow-tie.jpg?width=1000&format=pjpg&exif=0&iptc=0",
      'last_message': 'Programmar give me a change ',
      'time': '12:00 AM',
      'count': '6',
    },
    {
      'name': "MD Asraful",
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLaPPl5uEJ0T-nQwq1TdGl1P9xDp5fRMKYtzIw0LR7UE1qUB3wO7coVRoytPbAyJifpC0&usqp=CAU",
      'last_message': ' How are you!!! ',
      'time': '12:00 AM',
      'count': '0',
    },
    {
      'name': "Rupok",
      'image':
          "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?a=1&b=1&s=612x612&w=0&k=20&c=u5RPl326UFf1oyrM1iLFJtqdQ3K28TdBdSaSPKeCrdc=",
      'last_message': 'Hi, Programmar!! How are you',
      'time': '12:00 AM',
      'count': '8',
    },
    {
      'name': "Rahat",
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0xmuMA-b_c6EhYvqpeCYAlaTi4i8ub5hGNIc79yNtJrVeX7u___5sFXuMH7htoEgZhxs&usqp=CAU",
      'last_message': 'Hi, Programmar!! How are you',
      'time': '12:00 AM',
      'count': '9+',
    },
    {
      'name': "Robiul",
      'image':
          "https://burst.shopifycdn.com/photos/silhouette-of-a-persons-profile-at-sunset.jpg?width=1000&format=pjpg&exif=0&iptc=0",
      'last_message': 'Hi, Programmar!! How are you',
      'time': '12:00 AM',
      'count': '6',
    },
    {
      'name': "Tuhin",
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6yS-j8wavgR1gk6TOmNm3AEhOR8FYSjcXVQ&s",
      'last_message': 'Hi, Programmar!! How are you',
      'time': '12:00 AM',
      'count': '2',
    },
    {
      'name': "Sayed",
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBdSwwTzzqIn_ach92rh6qut4HaEmno0FBdLkAaT0ncFJh0BdpRXjmtqs6iGk9NNwDum8&usqp=CAU",
      'last_message': 'Hi, Programmar!! How are you',
      'time': '12:00 AM',
      'count': "13",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.7),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white.withOpacity(0.7),
                )),
          ],
          title: const Text(
            "WhatsApp",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(),
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  text: 'CHATS',
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          // shape:
          //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          backgroundColor: Color(0xFF075E54),
          onPressed: () {},
          child: const Icon(
            Icons.message,
            size: 25.0,
            color: Colors.white,
          ),
        ),
        body: TabBarView(children: [
          Text("Hello"),
          ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MassageScreen(
                                  name: chatList[index]['name'],
                                  image: chatList[index]['image'],
                                )));
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(chatList[index]['image']),
                  ),
                  title: Text(
                    chatList[index]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    chatList[index]['last_message'],
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    // maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chatList[index]['time'],
                        style: TextStyle(
                          fontSize: 15.0,
                          color: chatList[index]['time'] == 0
                              ? Colors.black
                              : Color(0xFF10CE62),
                        ),
                      ),
                      chatList[index]['count'] == 0
                          ? SizedBox()
                          : Container(
                              height: 24,
                              width: 25,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF10CE62),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  chatList[index]["count"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                    ],
                  ),
                );
              }),
          Text("Hello"),
          Text("Bangladesh"),
        ]),
      ),
    );
  }
}
