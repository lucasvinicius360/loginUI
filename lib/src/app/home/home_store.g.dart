// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$isloginAtom =
      Atom(name: '_HomeStoreBase.islogin', context: context);

  @override
  bool get islogin {
    _$isloginAtom.reportRead();
    return super.islogin;
  }

  @override
  set islogin(bool value) {
    _$isloginAtom.reportWrite(value, super.islogin, () {
      super.islogin = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_HomeStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  @override
  String toString() {
    return '''
islogin: ${islogin},
loading: ${loading}
    ''';
  }
}
