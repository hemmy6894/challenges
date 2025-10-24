import 'package:flutter/material.dart';
import 'package:pchallenges/chat/assets/assets.dart';
import 'package:pchallenges/chat/message.dart';

class ChatTile extends StatefulWidget {
  final Map<String, dynamic> chat;

  const ChatTile({super.key, required this.chat});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ChatView(chat: widget.chat),
            fullscreenDialog: true,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 15,
          children: [
            Stack(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: widget.chat['color'],
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.chat['icon'],
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (widget.chat['online'])
                  Positioned(
                    right: size.height * 0.0036,
                    top: size.height * 0.01,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppAssets.bgDark,
                            borderRadius: BorderRadius.all(
                              Radius.circular(size.height * 0.1),
                            ),
                          ),
                        ),
                        Container(
                          width: 11,
                          height: 11,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(11),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.chat['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        widget.chat['time'],
                        style: TextStyle(
                          color: Colors.white24,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.chat['chat'],
                          style: TextStyle(
                            color: widget.chat['read']
                                ? Colors.white38
                                : Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      if (!widget.chat['read'])
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppAssets.foreColorLightBlue,
                          ),
                          child: Center(child: Text(widget.chat['chat_count'])),
                        ),
                    ],
                  ),
                  Divider(thickness: 0.2, color: Colors.grey,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
