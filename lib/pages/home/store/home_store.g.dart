// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  Computed<dynamic>? _$formattedMonthComputed;

  @override
  dynamic get formattedMonth => (_$formattedMonthComputed ??= Computed<dynamic>(
          () => super.formattedMonth,
          name: 'HomeStoreBase.formattedMonth'))
      .value;
  Computed<dynamic>? _$monthlyAmountComputed;

  @override
  dynamic get monthlyAmount =>
      (_$monthlyAmountComputed ??= Computed<dynamic>(() => super.monthlyAmount,
              name: 'HomeStoreBase.monthlyAmount'))
          .value;

  final _$finalDateAtom = Atom(name: 'HomeStoreBase.finalDate');

  @override
  DateTime get finalDate {
    _$finalDateAtom.reportRead();
    return super.finalDate;
  }

  @override
  set finalDate(DateTime value) {
    _$finalDateAtom.reportWrite(value, super.finalDate, () {
      super.finalDate = value;
    });
  }

  final _$finalAmountAtom = Atom(name: 'HomeStoreBase.finalAmount');

  @override
  double get finalAmount {
    _$finalAmountAtom.reportRead();
    return super.finalAmount;
  }

  @override
  set finalAmount(double value) {
    _$finalAmountAtom.reportWrite(value, super.finalAmount, () {
      super.finalAmount = value;
    });
  }

  final _$totalMonthsAtom = Atom(name: 'HomeStoreBase.totalMonths');

  @override
  int get totalMonths {
    _$totalMonthsAtom.reportRead();
    return super.totalMonths;
  }

  @override
  set totalMonths(int value) {
    _$totalMonthsAtom.reportWrite(value, super.totalMonths, () {
      super.totalMonths = value;
    });
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void incrementDate() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.incrementDate');
    try {
      return super.incrementDate();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementDate() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.decrementDate');
    try {
      return super.decrementDate();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFinalAmount(double newFinalAmount) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setFinalAmount');
    try {
      return super.setFinalAmount(newFinalAmount);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
finalDate: ${finalDate},
finalAmount: ${finalAmount},
totalMonths: ${totalMonths},
formattedMonth: ${formattedMonth},
monthlyAmount: ${monthlyAmount}
    ''';
  }
}
