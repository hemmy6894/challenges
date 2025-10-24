import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pchallenges/chat/assets/assets.dart';

class MessageTile extends StatefulWidget {
  final Map<String, dynamic> message;
  final Size size;

  const MessageTile({super.key, required this.message, required this.size});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    double width = widget.size.width * 0.69;
    return menu(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: widget.message['sender']
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              spacing: 4,
              children: [
                Container(
                  width: width,
                  decoration: widget.message['sender']
                      ? decorationSender()
                      : decorationReceiver(),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    widget.message['message'],
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Text(
                  widget.message['time'],
                  style: const TextStyle(
                    color: Colors.white38,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration decorationSender() {
    return BoxDecoration(
      color: AppAssets.foreColorLightBlue,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(6),
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    );
  }

  BoxDecoration decorationReceiver() {
    return BoxDecoration(
      color: AppAssets.bgDark,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(6),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    );
  }

  CupertinoContextMenu menu({required Widget child}) {
    return CupertinoContextMenu(
      actions: <Widget>[
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
            // Add your send logic here
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (String icon in ["💙", "🤩", "👍", "🙌", "🙏"])
                Text(icon, style: TextStyle(fontSize: 25)),
              CircleAvatar(child: Icon(Icons.add)),
            ],
          ),
        ),
        if (widget.message['sender'])
          CupertinoContextMenuAction(
            onPressed: () {
              Navigator.pop(context);
              // Add your send logic here
            },
            trailingIcon: Icons.edit,
            child: const Text("Edit"),
          ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
            // Add your copy logic here
          },
          trailingIcon: CupertinoIcons.reply,
          child: const Text("Reply"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
            // Add your copy logic here
          },
          trailingIcon: CupertinoIcons.star,
          child: const Text("Star"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
            // Add your copy logic here
          },
          trailingIcon: Icons.arrow_forward,
          child: const Text("Forward"),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
            // Add your copy logic here
          },
          trailingIcon: CupertinoIcons.doc_on_clipboard,
          child: const Text("Copy"),
        ),
        CupertinoContextMenuAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
            // Add your delete logic here
          },
          trailingIcon: CupertinoIcons.delete,
          child: const Text("Delete"),
        ),
      ],
      child: child,
    );
  }
}
