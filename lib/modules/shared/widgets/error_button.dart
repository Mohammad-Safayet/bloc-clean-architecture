import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/modules/shared/mixin/base_widget.dart';

class ErrorButtonWidget extends StatelessWidget with BaseWidgetMixin {
  ErrorButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Function onPressed;
  final FaIcon icon;
  final String label;

  @override
  Widget body(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        textStyle: const MaterialStatePropertyAll(
          AppTextStyles.errorButton,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppValues.radius_6,
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          Theme.of(context).colorScheme.errorContainer,
        ),
      ),
      onPressed: () => onPressed(),
      icon: icon,
      label: Text(
        label,
      ),
    );
  }
}
