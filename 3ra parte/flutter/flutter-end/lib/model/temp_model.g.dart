// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TempModel _$TempModelFromJson(Map<String, dynamic> json) {
  return TempModel(
    (json['temp'] as num)?.toDouble(),
    (json['temp_min'] as num)?.toDouble(),
    (json['temp_max'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TempModelToJson(TempModel instance) => <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
