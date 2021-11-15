import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'home.store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  DateTime finalDate = DateTime.now();
  @observable
  double monthlyAmount = 0;
  @observable
  double finalAmount = 0;

  int totalMonths = 0;

  @observable
  get formattedMonth => new DateFormat.MMMM().format(finalDate);

  @action
  void incrementDate() {
    finalDate =
        new DateTime(finalDate.year, finalDate.month + 1, finalDate.day);
    totalMonths++;
  }

  @action
  void decrementDate() {
    finalDate =
        new DateTime(finalDate.year, finalDate.month - 1, finalDate.day);
    totalMonths--;
  }
}
