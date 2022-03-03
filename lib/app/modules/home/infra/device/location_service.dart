import 'package:dartz/dartz.dart';
import 'package:ezmenu/app/modules/home/infra/utils/errors.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<bool> checkServiceIsEnabled() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    return serviceEnabled;
  }

  Future<bool> getPermission() async {
    LocationPermission permission;

    final isServiceEnabled = await checkServiceIsEnabled();

    if (!isServiceEnabled) return false;

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) return true;

    permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) return false;

    return true;
  }

  Future<Either<Failure, Position>> getCurrentPosition() async {
    final isAllowed = await getPermission();

    if (!isAllowed) return Left(Failure(message: "Sem permissão."));

    return Right((await Geolocator.getLastKnownPosition() ??
        await Geolocator.getCurrentPosition()));
  }
}
