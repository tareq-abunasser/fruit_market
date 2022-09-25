import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {Key? key,
      required this.image,
      this.circularRadius = 10.0,
      this.width = 95.00,
      this.height = 95.00,
      this.rightMargin = 20,
      this.leftMargin = 20})
      : super(key: key);

  final ImageProvider<Object> image;
  final double? circularRadius;
  final double width;
  final double height;
  final double rightMargin;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(circularRadius!),
      ),
    );

  }
}

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {Key? key,
      required this.imageUrl,
      required this.width,
      required this.height,
      this.imageKey})
      : super(key: key);
  final String imageUrl;
  final double width;
  final double height;
  final String? imageKey;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        key: Key(imageKey ?? imageUrl),
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Colors.red,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
