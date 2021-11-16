import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:take_home_assignment/design_system/utils.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  DateTime finalDate = new DateTime(
      DateTime.now().year, DateTime.now().month + 1, DateTime.now().day);
  @observable
  double finalAmount = 0.00;
  @observable
  int totalMonths = 1;

  @computed
  get formattedMonth => new DateFormat.MMMM().format(finalDate);

  @computed
  get monthlyAmount => formatCurrency(finalAmount / totalMonths);

  @action
  void incrementDate() {
    finalDate =
        new DateTime(finalDate.year, finalDate.month + 1, finalDate.day);
    totalMonths = totalMonths + 1;
  }

  @action
  void decrementDate() {
    finalDate =
        new DateTime(finalDate.year, finalDate.month - 1, finalDate.day);
    totalMonths = totalMonths - 1;
  }

  @action
  void setFinalAmount(double newFinalAmount) {
    finalAmount = newFinalAmount;
  }
}
