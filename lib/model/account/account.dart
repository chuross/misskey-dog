// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/user/user.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const Account._();

  const factory Account({
    required String token,
    required User user,
    String? host,
  }) = _Account;

  String get apiBaseUrl => 'https://$host';

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}
