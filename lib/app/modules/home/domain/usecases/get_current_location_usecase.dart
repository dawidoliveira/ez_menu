import 'package:dartz/dartz.dart';
import 'package:ezmenu/app/modules/home/infra/device/location_service.dart';
import 'package:ezmenu/app/modules/home/infra/utils/errors.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentLocationUsecase {
  final LocationService _locationService;

  GetCurrentLocationUsecase(this._locationService);

  Future<Either<Failure, Position?>> call() async {
    return await _locationService.getCurrentPosition();
  }
}
