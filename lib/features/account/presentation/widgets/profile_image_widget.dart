import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/custom_images.dart';

import '../../../../core/constants.dart';
import '../../../../core/services/size_config.dart';
import 'circle_icon_widget.dart';

class ProfileImageWidget extends StatelessWidget {
  ProfileImageWidget(
      {Key? key,
      this.imageFile,
      this.imageURL,
      required this.onTap,
      required this.icon})
      : super(key: key);
  String? imageURL;
  final VoidCallback onTap;
  final IconData icon;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          ClipOval(
            child: imageFile == null
                ? CustomNetworkImage(
                    imageUrl: imageURL!,
                    width: SizeConfig.defaultSize! * 12,
                    height: SizeConfig.defaultSize! * 12)
                : Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                    width: SizeConfig.defaultSize! * 12,
                    height: SizeConfig.defaultSize! * 12,
                  ),
            // radius: SizeConfig.defaultSize! * 6,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleIconWidget(
              color: Colors.white,
              edge: 0.5,
              child: CircleIconWidget(
                color: Colors.black,
                edge: 8,
                child: Icon(
                  icon,
                  color: kMainColor,
                  size: 23,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
