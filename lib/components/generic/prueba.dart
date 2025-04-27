import 'package:flutter/material.dart';

class WeatherSliverAppBar extends StatelessWidget {
  final String title;
  final double expandedHeight;
  final Color backgroundColor;

  const WeatherSliverAppBar({
    super.key,
    required this.title,
    this.expandedHeight = 200.0,
    this.backgroundColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: expandedHeight,
      backgroundColor: backgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: backgroundColor,
        ),
        title: _WeatherTitle(title: title),
        titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
      ),
    );
  }
}

class _WeatherTitle extends StatelessWidget {
  final String title;

  const _WeatherTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings? settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    double collapseFactor = 1.0;

    if (settings != null) {
      collapseFactor = (settings.currentExtent - settings.minExtent) / (settings.maxExtent - settings.minExtent);
      collapseFactor = collapseFactor.clamp(0.0, 1.0);
    }

    return Opacity(
      opacity: collapseFactor,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20 + (10 * collapseFactor), // crece cuando está expandido
        ),
      ),
    );
  }
}
