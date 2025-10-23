import 'package:flutter/material.dart';

class AppAssets {
  static Color bgDark = Color(0xFF161729);
  static Color foreColorLightBlue = Color(0xFF2BCBFF);

  static List<Map<String, dynamic>> navigations = [
    {"icon": 'assets/chat.svg', 'count': '21', 'active': true, 'isCount': true},
    {
      "icon": 'assets/image.svg',
      'count': '0',
      'active': false,
      'isCount': false,
    },
    {
      "icon": 'assets/binoculars.svg',
      'count': '0',
      'active': false,
      'isCount': false,
    },
    {
      "icon": 'assets/support.svg',
      'count': '0',
      'active': false,
      'isCount': false,
    },
    {
      "icon": 'assets/setting.svg',
      'count': '0',
      'active': false,
      'isCount': false,
    },
  ];

  static List<Map<String, dynamic>> charts = [
    {
      "icon": 'MF',
      'name': 'Maria Farnanda',
      'chat':
          'Ok, let me check this out for a moment, thank you for your patient',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFF60AAC7),
      'read': false,
      'online': true,
    },
    {
      "icon": 'MJ',
      'name': 'Mkie James',
      'chat':
          'Try to connect my account to new device and could not use a hand...',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFF805AD5),
      'read': false,
      'online': true,
    },
    {
      "icon": 'DR',
      'name': 'David Romano',
      'chat':
          "Everything was working fine until today - now the screen won't loading",
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFFCA9162),
      'read': false,
      'online': false,
    },
    {
      "icon": 'SL',
      'name': 'Shay Levy',
      'chat':
          'Ok, let me check this out for a moment, thank you for your patient',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFF41A567),
      'read': true,
      'online': true,
    },
    {
      "icon": 'GM',
      'name': 'Greg McDonald',
      'chat':
          'Ok, let me check this out for a moment, thank you for your patient',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFFCB7DB9),
      'read': true,
      'online': false,
    },
    {
      "icon": 'SL',
      'name': 'Shay Levy',
      'chat':
          'Ok, let me check this out for a moment, thank you for your patient',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFFAD9B53),
      'read': true,
      'online': false,
    },
    {
      "icon": 'GM',
      'name': 'Greg McDonald',
      'chat':
          'Ok, let me check this out for a moment, thank you for your patient',
      'chat_count': '3',
      'time': '11:32 AM',
      'color': Color(0xFFB57256),
      'read': true,
      'online': false,
    },
  ];
}
