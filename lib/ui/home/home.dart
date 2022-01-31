import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travel_app/model/location.dart';
import 'package:travel_app/ui/home/tile_overlay.dart';
import 'package:travel_app/ui/location_detail/image_banner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color appBarColor = HexColor('#543c52');
  final Color _backgroundColor = HexColor('#F3C5C5');


  void _onLocationTap(int locationID) {
    //Navigator.pushReplacementNamed(context, '/location', arguments: {'id': locationID,});
    Navigator.pushNamed(context, '/location', arguments: {
      'id': locationID,
    });
    //Navigator.pushNamed(context, '/location');
  }

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Locations'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) => _itemBuilder(locations[index]),
      ),
    );
  }

  Widget _itemBuilder(Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(location.id),
      key: Key('location_list_item_${location.id}'),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(location.imagePath),
            TileOverlay(
              location,
            )
          ],
        ),
      ),
    );
  }
}

/*
 @override
  Widget build(BuildContext context) {

    final locations  =  Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text('Locations'),
      ),
      body: ListView(
        children: locations.map((location) => GestureDetector(
            child: Text(location.name),
            onTap: () => _onLocationTap(location.id),
        ))
            .toList(),
      ),
    );
  }
 */
