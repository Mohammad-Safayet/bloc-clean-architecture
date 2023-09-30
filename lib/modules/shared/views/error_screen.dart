import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_screen.dart';

class ErrorScreen extends BaseScreen {
  ErrorScreen({
    Key? key,
    required this.failureEntity,
  }) : super(key: key);

  final FailureEntity? failureEntity;

  @override
  Widget body(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.errorContainer,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            failureEntity != null
                ? failureEntity!.title
                : "Unexpected error occurred",
            style: TextStyle(
              fontSize: 24.0,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          Text(
            failureEntity != null
                ? failureEntity!.message
                : "The route don't exists",
            style: TextStyle(
              fontSize: 20.0,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          TextButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Theme.of(context).colorScheme.onErrorContainer,
              ),
            ),
            onPressed: () {
              context.go(Routes.HOME);
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.onError,
            ),
            label: Text(
              "go back",
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).colorScheme.onError,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }
}
