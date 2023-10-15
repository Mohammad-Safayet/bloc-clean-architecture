import 'package:flutter/material.dart';

import 'package:weather_app/core/constants/app_text_styles.dart';
import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';
import 'package:weather_app/modules/shared/widgets/error_button.dart';

class ErrorScreen extends BaseScreen {
  ErrorScreen({
    Key? key,
    required this.failureEntity,
    required this.actions,
  }) : super(key: key);

  final FailureEntity? failureEntity;
  final List<ErrorButtonWidget> actions;

  @override
  Widget body(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.error,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(
        AppValues.padding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            failureEntity != null
                ? failureEntity!.title
                : "Unexpected error occurred",
            style: AppTextStyles.errorTitle,
          ),
          Text(
            failureEntity != null
                ? failureEntity!.message
                : "The route don't exists",
            style: AppTextStyles.errorDesc,
          ),
          ...actions,
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }
}
