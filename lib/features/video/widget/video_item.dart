import 'package:cached_network_image/cached_network_image.dart';
import 'package:eng_app/core/theme/app_colors.dart';
import 'package:eng_app/features/video/model/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoItem extends StatelessWidget {
  final Video video;

  const VideoItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(Uri.parse(video.url));
      },
      child: Container(
        height: 211,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: video.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppColors.primaryPurple,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(video.title),
                    SvgPicture.asset('assets/images/play_icon.svg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
