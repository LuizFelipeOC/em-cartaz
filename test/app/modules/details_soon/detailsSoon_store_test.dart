import 'package:flutter_test/flutter_test.dart';
import 'package:em_cartaz/app/modules/details_soon/detailsSoon_store.dart';
 
void main() {
  late DetailsSoonStore store;

  setUpAll(() {
    store = DetailsSoonStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}