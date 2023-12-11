// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      kind: $enumDecode(_$NotificationKindEnumMap, json['type'],
          unknownValue: NotificationKind.unknown),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] == null
          ? null
          : Note.fromJson(json['note'] as Map<String, dynamic>),
      reaction: json['reaction'] as String?,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'type': _$NotificationKindEnumMap[instance.kind]!,
      'user': instance.user,
      'note': instance.note,
      'reaction': instance.reaction,
    };

const _$NotificationKindEnumMap = {
  NotificationKind.unknown: 'unknown',
  NotificationKind.reaction: 'reaction',
  NotificationKind.renote: 'renote',
  NotificationKind.follow: 'follow',
};
