import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';

import 'package:weather_app/core/constants/app_values.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppValues.padding_4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          const SizedBox(
            width: AppValues.space_6,
          ),
          Text(
            text,
            style: AppTextStyles.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
