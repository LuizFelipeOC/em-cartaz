import 'package:flutter_test/flutter_test.dart';
import 'package:em_cartaz/app/modules/details_posters/detailsPosters_store.dart';
 
void main() {
  late DetailsPostersStore store;

  setUpAll(() {
    store = DetailsPostersStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}