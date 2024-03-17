import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceModel {
  final int id;
  final String name;
  final LatLng latLang;

  PlaceModel({
    required this.id,
    required this.name,
    required this.latLang,
  });
}

List<PlaceModel> places = [
  PlaceModel(
    id: 1,
    name: 'فندق الشيراتون',
    latLang: const LatLng(33.5133345593196, 36.27367052537844),
  ),
  PlaceModel(
    id: 2,
    name: 'المطعم الصحي',
    latLang: const LatLng(33.51922511995146, 36.29409183009238),
  ),
  PlaceModel(
    id: 3,
    name: 'مدرسة دار السلام',
    latLang: const LatLng(33.51699787673108, 36.29024017794701),
  ),
  PlaceModel(
    id: 4,
    name: 'كارما كافيه',
    latLang: const LatLng(33.51889416773142, 36.286055931883794),
  ),
];
