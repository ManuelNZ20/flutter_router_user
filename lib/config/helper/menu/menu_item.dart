import 'package:flutter/material.dart';

class MenuItem {
  
  final String title;
  final String link;
  final IconData iconData;

  const MenuItem({
    required this.title, 
    required this.link, 
    required this.iconData
  });
  
  set iconData(IconData iconData) => iconData = this.iconData;
}

const appMenuItem = <MenuItem>[
  MenuItem(
    title: 'Theme',
    link: '/theme',
    iconData: Icons.dark_mode_outlined
    ),
  MenuItem(
    title: 'Month Employment',
    link: '/monthemployment',
    iconData: Icons.work_outline
    ),
  MenuItem(
    title: 'CV',
    link: '/cv',
    iconData: Icons.description_outlined
    ),
  MenuItem(
    title: 'Suscription',
    link: '/suscription',
    iconData: Icons.mail_outline_rounded
    ),
  MenuItem(
    title: 'Message',
    link: '/message',
    iconData: Icons.messenger_outline_rounded
    ),
  MenuItem(
    title: 'World',
    link: '/world',
    iconData: Icons.language_rounded
    ),
];

