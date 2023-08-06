import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_places/model/place_item.dart';

class UserPlacesNotifier extends StateNotifier<List<PlaceItem>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = PlaceItem(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<PlaceItem>>(
  (ref) => UserPlacesNotifier(),
);
