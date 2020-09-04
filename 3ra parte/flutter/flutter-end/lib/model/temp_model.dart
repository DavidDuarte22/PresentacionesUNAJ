
import 'package:json_annotation/json_annotation.dart';

part 'temp_model.g.dart';

@JsonSerializable()
class TempModel {
  double temp;
  @JsonKey(name: 'temp_min')
  double tempMin;
  @JsonKey(name: 'temp_max')
  double tempMax;

  TempModel(this.temp, this.tempMin, this.tempMax);

  factory TempModel.fromJson(Map<String, dynamic> json) => _$TempModelFromJson(json);

  Map<String, dynamic> toJson() => _$TempModelToJson(this);
}