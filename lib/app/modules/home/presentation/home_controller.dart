import 'package:ezmenu/app/modules/home/domain/usecases/get_current_location_usecase.dart';
import 'package:ezmenu/app/shared/mixins/loading_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong2/latlong.dart" as lat_lng;

import 'home_state.dart';

class HomeController extends ValueNotifier<HomeState> with LoadingMixin {
  final GetCurrentLocationUsecase _getCurrentLocationUsecase;

  HomeController(this._getCurrentLocationUsecase) : super(InitHomeState()) {
    init();
  }

  final mapController = MapController();

  Future<void> init() async {
    final result = await _getCurrentLocationUsecase();

    result.fold(
      (l) => value = ErrorHomeState(message: l.message ?? 'Error'),
      (r) {
        value = SuccessHomeState(currentPosition: r!);
        mapController.move(lat_lng.LatLng(r.latitude, r.longitude), 16.0);
      },
    );
  }
}
