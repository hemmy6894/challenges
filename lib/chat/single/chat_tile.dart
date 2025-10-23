import 'package:flutter/material.dart';
import 'package:pchallenges/chat/assets/assets.dart';

class ChatTile extends StatefulWidget {
  final Map<String, dynamic> chat;

  const ChatTile({super.key, required this.chat});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 15,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.height * 0.1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: widget.chat['color'],
                  borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuery.of(context).size.height * 0.1),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.chat['icon'],
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              if (widget.chat['online'])
                Positioned(
                  right: MediaQuery.of(context).size.height * 0.0036,
                  top: MediaQuery.of(context).size.height * 0.01,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.017,
                        height: MediaQuery.of(context).size.height * 0.017,
                        decoration: BoxDecoration(
                          color: AppAssets.bgDark,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              MediaQuery.of(context).size.height * 0.1,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.013,
                        height: MediaQuery.of(context).size.height * 0.013,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              MediaQuery.of(context).size.height * 0.1,
                            ),
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
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      widget.chat['time'],
                      style: TextStyle(
                        color: Colors.white24,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
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
                          fontSize: 16,
                        ),
                      ),
                    ),
                    if (!widget.chat['read'])
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: AppAssets.foreColorLightBlue,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child: Text(widget.chat['chat_count'])),
                      ),
                  ],
                ),
                // Divider(thickness: 0.005,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
