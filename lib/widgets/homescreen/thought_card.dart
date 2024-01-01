import 'package:flutter/material.dart';
import 'package:quotes_app/core/theme/custom_text_style.dart';

class ThoughtCard extends StatelessWidget {
  final String quote;
  final String author;
  const ThoughtCard({
    super.key,
    required this.quote,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 401,
      height: 306,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5C5C5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                quote,
                style: AppTextStyle.quoteHeading,
              ),
              Text(
                author,
                style: AppTextStyle.bodyTextSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
