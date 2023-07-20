import 'package:favorite_places/model/place_item.dart';
import 'package:favorite_places/providers/places_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNewPlaceScreen extends ConsumerStatefulWidget {
  const AddNewPlaceScreen({super.key});

  @override
  ConsumerState<AddNewPlaceScreen> createState() => _AddNewPlaceScreenState();
}

class _AddNewPlaceScreenState extends ConsumerState<AddNewPlaceScreen> {
  final _formKey = GlobalKey<FormState>();
  var _enteredPlace = '';

  void _savePlace() {
    _formKey.currentState!.save();
    PlaceItem newPlace = PlaceItem(title: _enteredPlace);
    ref.read(favoritePlacesNotifier.notifier).addFavoritePlace(newPlace);
    print(_enteredPlace);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Place'),
                ),
                onSaved: (value) {
                  _enteredPlace = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: _savePlace, child: const Text('Add')),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Test'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
