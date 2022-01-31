import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_app/ui/location_detail/text_section.dart';
import 'package:travel_app/ui/location_detail/image_banner.dart';
import 'package:travel_app/model/location.dart';

class LocationDetail extends StatefulWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  Map data = {};

  Color appBarColor = HexColor('#543c52');

  final locations = Location.fetchAll();

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.body))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    Location location = locations[data['id']];

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        backgroundColor: appBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          ...textSections(location),
        ],
      ),
    );
  }
}
