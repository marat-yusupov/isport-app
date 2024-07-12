// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginState on LoginStateBase, Store {
  late final _$authDataAtom =
      Atom(name: 'LoginStateBase.authData', context: context);

  @override
  AuthDataModel? get authData {
    _$authDataAtom.reportRead();
    return super.authData;
  }

  @override
  set authData(AuthDataModel? value) {
    _$authDataAtom.reportWrite(value, super.authData, () {
      super.authData = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'LoginStateBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorAtom = Atom(name: 'LoginStateBase.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$tryLoginAsyncAction =
      AsyncAction('LoginStateBase.tryLogin', context: context);

  @override
  Future<void> tryLogin({required String username, required String password}) {
    return _$tryLoginAsyncAction
        .run(() => super.tryLogin(username: username, password: password));
  }

  @override
  String toString() {
    return '''
authData: ${authData},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
