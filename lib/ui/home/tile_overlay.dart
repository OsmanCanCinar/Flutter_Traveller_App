import 'package:flutter/material.dart';
import 'location_tile.dart';
import '../../model/location.dart';

class TileOverlay extends StatelessWidget {
  const TileOverlay(this.location, {Key? key}) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 3.5),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: LocationTile(location),
        ),
      ],
    );
  }
}
