import 'package:flutter/material.dart';
import 'package:pchallenges/chat/assets/assets.dart';
import 'package:pchallenges/chat/single/chat_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeMessage extends StatefulWidget {
  const HomeMessage({super.key});

  @override
  State<HomeMessage> createState() => _HomeMessageState();
}

class _HomeMessageState extends State<HomeMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppAssets.bgDark,
      appBar: appBar(),
      body: ListView.builder(
        itemCount: AppAssets.charts.length,
        itemBuilder: (context, index) {
          return ChatTile(chat: AppAssets.charts[index]);
        },
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: AppAssets.foreColorLightBlue,
        child: Icon(Icons.add, color: Colors.white, size: 40),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white30)),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (Map<String, dynamic> nav in AppAssets.navigations)
                navigationIconBuilder(nav),
            ],
          ),
        ),
      ),
    );
  }

  navigationIconBuilder(Map<String, dynamic> nav) {
    return Stack(
      children: [
        SvgPicture.asset(
          nav['icon'],
          width: 50,
          height: 50,
          colorFilter: ColorFilter.mode(
            nav['active'] ? AppAssets.foreColorLightBlue : Colors.white,
            BlendMode.srcIn,
          ),
          semanticsLabel: 'Red dash paths',
        ),
        if (nav['isCount'])
          Positioned(
            right: 1,
            top: 1,
            child: Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: Center(
                child: Text(
                  nav['count'],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: AppAssets.bgDark,
      title: Row(
        children: [
          Text(
            "Inbox",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            " (3)",
            style: TextStyle(fontSize: 16, color: AppAssets.foreColorLightBlue),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
    );
  }
}
