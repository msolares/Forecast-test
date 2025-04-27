//
// import 'package:flutter/material.dart';
//
// class WeatherSliverDelegate extends SliverPersistentHeaderDelegate {
//   final String title;
//   final Widget info;
//   final Color backgroundColor;
//   final double minExtentHeight;
//   final double maxExtentHeight;
//
//   WeatherSliverDelegate({
//     required this.title,
//     required this.info,
//     required this.backgroundColor,
//     required this.minExtentHeight,
//     required this.maxExtentHeight,
//   });
//
//   @override
//   double get minExtent => minExtentHeight;
//   @override
//   double get maxExtent => maxExtentHeight;
//
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//     final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
//     final opacity = (1.0 - progress).clamp(0.0, 1.0);
//     final scale = (1.0 - progress * 0.3).clamp(0.7, 1.0);
//
//     return Container(
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16),
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Positioned(
//               bottom: 16,
//               left: 16,
//               child: Transform.scale(
//                 scale: scale,
//                 alignment: Alignment.bottomLeft,
//                 child: Opacity(
//                   opacity: opacity,
//                   child: Text(
//                     title,
//                     style: const TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             info,
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   bool shouldRebuild(covariant WeatherSliverDelegate oldDelegate) {
//     return oldDelegate.title != title ||
//         oldDelegate.items != items ||
//         oldDelegate.backgroundColor != backgroundColor;
//   }
// }