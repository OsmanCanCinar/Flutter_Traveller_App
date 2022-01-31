import 'package:travel_app/model/location.dart';

import '../../style.dart';
import 'package:flutter/material.dart';

const locationTileHeight = 100.0;

class LocationTile extends StatelessWidget {

  final Location location;

  const LocationTile(this.location, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: defaultPaddingHorizontal),
      height: locationTileHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            location.name.toUpperCase(),
            key: Key('location_tile_name_${location.id}'),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: titleLightTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                location.tourPackageName.toUpperCase(),
                style: captionTextStyle,
              ),
              Text(
                location.userItinerarySummary.toUpperCase(),
                style: subTitleTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
