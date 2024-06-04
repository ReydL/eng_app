import 'package:eng_app/features/main/utils/lesson_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final LessonCategory category;
  final VoidCallback? onTap;

  const CategoryItem({required this.category, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    category.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                _buildImage(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    const height = 80.0;
    const width = 85.0;

    if (category.iconPath.endsWith('svg')) {
      return SvgPicture.asset(
        category.iconPath,
        height: height,
        width: width,
      );
    }

    return Image.asset(
      category.iconPath,
      height: height,
      width: width,
    );
  }
}
