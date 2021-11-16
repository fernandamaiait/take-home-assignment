import 'package:flutter_test/flutter_test.dart';
import 'package:take_home_assignment/pages/home/store/home_store.dart';

void main() {
  late HomeStore store;

  setUp(() {
    store = HomeStore();
  });

  group('Testing final amount possibilities', () {
    test(
      'Monthly amount must be the division of the final amount per total months',
      () {
        store.totalMonths = 2;
        expect(store.totalMonths, 2);
        store.setFinalAmount(10000);
        expect(store.finalAmount, 10000);
        expect(store.monthlyAmount, '\$5,000.00');
      },
    );
  });
}
