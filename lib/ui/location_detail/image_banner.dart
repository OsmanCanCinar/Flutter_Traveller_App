import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  final Color _backgroundColor = HexColor('#F3C5C5');

  ImageBanner(this._assetPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
      ),
      child: Hero(
        tag: 'tag',
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
