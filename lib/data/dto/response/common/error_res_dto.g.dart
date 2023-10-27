// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_res_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResDto _$$_ErrorResDtoFromJson(Map<String, dynamic> json) =>
    _$_ErrorResDto(
      code: json['code'] as int? ?? -1,
      status: json['status'] as int? ?? -1,
      errorMessage: json['errorMessage'] as String? ?? '',
      errorDetail: json['errorDetail'] as String? ?? '',
      errorTitle: json['errorTitle'] as String? ?? '',
      data: json['data'],
      isHandledAlready: json['isHandledAlready'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ErrorResDtoToJson(_$_ErrorResDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'errorMessage': instance.errorMessage,
      'errorDetail': instance.errorDetail,
      'errorTitle': instance.errorTitle,
      'data': instance.data,
      'isHandledAlready': instance.isHandledAlready,
    };
