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
      'typing': true,
      'messages': [
        {
          'message': 'Ok, let me check this out for a moment, thank you for your patient',
          'sender': false,
          'time': '11:31 AM',
        },
        {
          'message': 'Sure your order number is #234565',
          'sender': true,
          'time': '11:32 AM',
        },
        {
          'message': 'Ok, let me check this out for a moment, thank you for your patient',
          'sender': false,
          'time': '11:33 AM',
        },
      ]
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
      'typing': false,
      'messages': [
        {
          'message': 'Try to connect my account to new device and could not use a hand...',
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234566',
          'sender': true,
          'time': '11:33 AM',
        },
        {
          'message': 'Try to connect my account to new device and could not use a hand...',
          'sender': false,
          'time': '11:34 AM',
        },
      ]
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
      'typing': true,
      'messages': [
        {
          'message': "Everything was working fine until today - now the screen won't loading",
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234564',
          'sender': true,
          'time': '11:32 AM',
        },
        {
          'message': "Everything was working fine until today - now the screen won't loading",
          'sender': false,
          'time': '11:32 AM',
        },
      ]
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
      'typing': false,
      'messages': [
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234563',
          'sender': true,
          'time': '11:34 AM',
        },
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:35 AM',
        },
      ]
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
      'typing': true,
      'messages': [
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234562',
          'sender': true,
          'time': '11:32 AM',
        },
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:36 AM',
        },
      ]
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
      'typing': false,
      'messages': [
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234561',
          'sender': true,
          'time': '11:35 AM',
        },
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:38 AM',
        },
      ]
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
      'typing': true,
      'messages': [
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:32 AM',
        },
        {
          'message': 'Sure your order number is #234541',
          'sender': true,
          'time': '11:34 AM',
        },
        {
          'message': "Ok, let me check this out for a moment, thank you for your patient",
          'sender': false,
          'time': '11:36 AM',
        },
      ]
    },
  ];
}
