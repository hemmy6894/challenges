import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pchallenges/chat/assets/assets.dart';
import 'package:pchallenges/chat/single/message_tile.dart';

class ChatView extends StatefulWidget {
  final Map<String, dynamic> chat;

  const ChatView({super.key, required this.chat});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  Size size = Size(0, 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppAssets.bgDark,
      appBar: appBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: widget.chat['messages'].length,
          itemBuilder: (context, index) {
            return MessageTile(
              message: widget.chat['messages'][index],
              size: size,
            );
          },
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                spacing: 6,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.attach_file, color: Colors.grey.shade600,),
                        hintText: 'Type a massage',
                        // labelText: 'Type a massage',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        fillColor: Colors.grey.shade800,
                        hoverColor: Colors.grey.shade800,
                        focusColor: Colors.grey.shade800,
                        filled: true,
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String? value) {},
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: AppAssets.foreColorLightBlue,
                    child: Icon(Icons.mic, size: 25, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  appBar() {
    return AppBar(
      backgroundColor: AppAssets.bgDark,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      title: Row(
        spacing: 15,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: widget.chat['color'],
              borderRadius: BorderRadius.all(Radius.circular(45)),
            ),
            child: Center(
              child: Text(
                widget.chat['icon'],
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chat['name'],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (widget.chat['typing'])
                Text(
                  'typing ...',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w300,
                  ),
                ),
            ],
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
