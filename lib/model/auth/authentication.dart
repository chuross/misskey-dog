// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
abstract class Authentication with _$Authentication {
  const factory Authentication({
    @JsonKey(name: 'token') required String token,
  }) = _AuthCompletion;

  factory Authentication.fromJson(Map<String, dynamic> json) => _$AuthenticationFromJson(json);
}
