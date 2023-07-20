import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/model/place_item.dart';

final List<PlaceItem> _placeItems = [
  const PlaceItem(title: 'New Orleans'),
  const PlaceItem(title: 'Ricamab'),
  const PlaceItem(title: 'Malibou'),
];

// final placesProvider = Provider((ref) {
//   return _placeItems;
// });

class FavoritePlacesNotifier extends StateNotifier<List<PlaceItem>> {
  FavoritePlacesNotifier() : super(_placeItems);

  void addFavoritePlace(PlaceItem place) {
    // state = [];

    state = [...state, place];
  }
}

final favoritePlacesNotifier =
    StateNotifierProvider<FavoritePlacesNotifier, dynamic>(
        (ref) => FavoritePlacesNotifier());
