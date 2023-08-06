import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/model/place_item.dart';

final List<PlaceItem> _placeItems = [];

class FavoritePlacesNotifier extends StateNotifier<List<PlaceItem>> {
  FavoritePlacesNotifier() : super(_placeItems);

  void addFavoritePlace(PlaceItem place) {
    state = [...state, place];
  }
}

final favoritePlacesNotifier =
    StateNotifierProvider<FavoritePlacesNotifier, List<PlaceItem>>(
        (ref) => FavoritePlacesNotifier());
