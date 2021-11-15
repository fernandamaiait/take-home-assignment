// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
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
  String toString() {
    return '''
finalDate: ${finalDate}
    ''';
  }
}
