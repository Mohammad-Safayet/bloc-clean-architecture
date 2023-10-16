import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:weather_app/core/constants/app_values.dart';
import 'package:weather_app/core/routes/app_pages.dart';
import 'package:weather_app/core/utils/error_handling/failure_entity.dart';
import 'package:weather_app/modules/shared/base/base_view.dart';
import 'package:weather_app/modules/shared/widgets/loading.dart';
import 'package:weather_app/modules/weather/astronomy/domain/entities/astronomy.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/bloc/astronomy_bloc.dart';
import 'package:weather_app/modules/weather/astronomy/presentation/widgets/astronomy_info.dart';

class AstronomyView extends BaseView<AstronomyBloc, Astronomy> {
  @override
  void error(BuildContext context, FailureEntity entity,) {
    context.go(Routes.ERROR, extra: entity);
  }

  @override
  Widget initial(BuildContext context, AstronomyBloc bloc,) {
    bloc.add(const GetAstronomyData());

    return const LoadingWidget();
  }

  @override
  Widget success(BuildContext context, AstronomyBloc bloc, Astronomy data,) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppValues.padding,
      ),
      child: AstronomyInfoView(
        title: "Astronomy",
      ),
    );
  }
}
