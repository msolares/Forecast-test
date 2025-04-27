import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          WeatherSliverCard(
            title: 'Hoy - Barcelona',
            backgroundColor: Colors.blueAccent,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 20°C'),
          ),
          WeatherSliverCard(
            title: 'Mañana - Madrid',
            backgroundColor: Colors.deepOrange,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 22°C'),
          ),
          WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),WeatherSliverCard(
            title: 'Pasado - Sevilla',
            backgroundColor: Colors.green,
            items: List.generate(10, (index) => 'Hora ${index + 1} - 25°C'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 50), // Espaciado extra al final
          ),
        ],
      ),
    );
  }
}

class WeatherSliverCard extends StatelessWidget {
  final String title;
  final List<String> items;
  final Color backgroundColor;

  const WeatherSliverCard({
    super.key,
    required this.title,
    required this.items,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _WeatherSliverDelegate(
        title: title,
        items: items,
        backgroundColor: backgroundColor,
        minExtentHeight: 100,
        maxExtentHeight: 300,
      ),
    );
  }
}

class _WeatherSliverDelegate extends SliverPersistentHeaderDelegate {
  final String title;
  final List<String> items;
  final Color backgroundColor;
  final double minExtentHeight;
  final double maxExtentHeight;

  _WeatherSliverDelegate({
    required this.title,
    required this.items,
    required this.backgroundColor,
    required this.minExtentHeight,
    required this.maxExtentHeight,
  });

  @override
  double get minExtent => minExtentHeight;
  @override
  double get maxExtent => maxExtentHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
    final opacity = (1.0 - progress).clamp(0.0, 1.0);
    final scale = (1.0 - progress * 0.3).clamp(0.7, 1.0);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: 16,
              left: 16,
              child: Transform.scale(
                scale: scale,
                alignment: Alignment.bottomLeft,
                child: Opacity(
                  opacity: opacity,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: maxExtentHeight - shrinkOffset,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: items.map((e) => ListTile(title: Text(e))).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _WeatherSliverDelegate oldDelegate) {
    return oldDelegate.title != title ||
        oldDelegate.items != items ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}
