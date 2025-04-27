// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class WeatherSliverCard extends StatelessWidget {
//   final String title;
//   final Widget info;
//   final List<String> items;
//   final Color backgroundColor;
//
//   const WeatherSliverCard({
//     required this.title,
//     required this.info,
//     required this.items,
//     required this.backgroundColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverPersistentHeader(
//       pinned: true,
//       delegate: WeatherSliverDelegate(
//         title: title,
//         items: items,
//         info: info,
//         backgroundColor: backgroundColor,
//         minExtentHeight: 100,
//         maxExtentHeight: 300,
//       ),
//     );
//   }
// }