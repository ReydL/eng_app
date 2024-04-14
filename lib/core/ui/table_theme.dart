import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TableTheme extends StatelessWidget {
  final String firstHeader;
  final String secondHeader;
  final List<String> firstExamples;
  final List<String> firstDescription;
  final List<String> secondDescription;
  final List<String> secondExamples;
  final bool borderTop;

  const TableTheme({
    super.key,
    required this.firstHeader,
    required this.secondHeader,
    required this.firstExamples,
    required this.secondExamples,
    required this.borderTop,
    required this.firstDescription,
    required this.secondDescription,
  });

  @override
  Widget build(BuildContext context) {
    final headersStyle = Theme.of(context)
        .primaryTextTheme
        .bodyMedium
        ?.copyWith(fontWeight: FontWeight.w600);
    final descriptionStyle =
        headersStyle?.copyWith(fontWeight: FontWeight.w500);
    final exampleStyle = Theme.of(context)
        .primaryTextTheme
        .labelSmall
        ?.copyWith(fontWeight: FontWeight.w500);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryPurple,
          width: 1,
        ),
        borderRadius: BorderRadius.vertical(
          top: borderTop ? const Radius.circular(12) : Radius.zero,
          bottom: borderTop ? Radius.zero : const Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                firstHeader,
                style: headersStyle,
              ),
              Text(
                secondHeader,
                style: headersStyle,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: firstDescription
                    .map((e) => Text(e, style: descriptionStyle))
                    .toList(),
              ),
              Column(
                children: secondDescription
                    .map((e) => Text(e, style: descriptionStyle))
                    .toList(),
              ),
            ],
          ),
          Text(
            'Examples',
            style: headersStyle,
          ),
          Row(
            children: [
              Column(
                children: firstExamples
                    .map((e) => Text(
                          e,
                          style: exampleStyle,
                        ))
                    .toList(),
              ),
              Column(
                children: secondExamples
                    .map((e) => Text(
                          e,
                          style: exampleStyle,
                        ))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
