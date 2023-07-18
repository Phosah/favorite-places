import 'package:favorite_places/model/place_item.dart';
import 'package:flutter/material.dart';
import 'package:favorite_places/widgets/new_place.dart';

class PlacesListScreen extends StatefulWidget {
  const PlacesListScreen({super.key});

  @override
  State<PlacesListScreen> createState() => _PlacesListScreenState();
}

class _PlacesListScreenState extends State<PlacesListScreen> {
  final List _placeItems = [
    const PlaceItem(title: 'New Orleans'),
    const PlaceItem(title: 'Ricamab'),
    const PlaceItem(title: 'Malibou'),
  ];

  void _addNewPlace(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const AddNewPlaceScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text('No places added yet'),
    );

    if (_placeItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: _placeItems.length,
        itemBuilder: ((context, index) {
          // for (final place in _placeItems) {
          //   return ListTile(
          //     title: Text(
          //       place.title,
          //     ),
          //   );
          // }
          final place = _placeItems[index];
          return ListTile(
            title: Text(
              place.title,
            ),
          );
        }),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              _addNewPlace(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: content,
    );
  }
}
