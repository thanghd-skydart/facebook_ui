import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive/lib/config/palate.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.imgUrl,
    this.isActive,
    this.hasActive,
    this.hasBorder = false,
  }) : super(key: key);
  final String imgUrl;
  final bool? isActive;
  final bool? hasActive;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palatte.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imgUrl),
          ),
        ),
        (hasActive != null && hasActive!)
            ? Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: (isActive != null && isActive!)
                        ? Palatte.online
                        : Palatte.offline,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                ),
              )
            : const SizedBox.shrink(),
            
      ],
    );
  }
}
