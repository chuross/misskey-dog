import 'package:freezed_annotation/freezed_annotation.dart';

part 'instance.freezed.dart';
part 'instance.g.dart';

@freezed
abstract class Instance with _$Instance {
  const factory Instance({
    required String? name,
    required String iconUrl,
    required String? themeColor,
  }) = _Instance;

  factory Instance.fromJson(Map<String, dynamic> json) => _$InstanceFromJson(json);
}
