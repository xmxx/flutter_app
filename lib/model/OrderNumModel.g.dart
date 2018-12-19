// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderNumModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderNumModel _$OrderNumModelFromJson(Map<String, dynamic> json) {
  return OrderNumModel(json['data'] == null
      ? null
      : OrderNumReal.fromJson(json['data'] as Map<String, dynamic>))
    ..status = json['status'] as String
    ..message = json['message'] as String;
}

Map<String, dynamic> _$OrderNumModelToJson(OrderNumModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data
    };

OrderNumReal _$OrderNumRealFromJson(Map<String, dynamic> json) {
  return OrderNumReal(json['number_of_unpaid_orders'] as String,
      json['number_of_unexecuted_orders'] as String, json['user_id'] as String);
}

Map<String, dynamic> _$OrderNumRealToJson(OrderNumReal instance) =>
    <String, dynamic>{
      'number_of_unpaid_orders': instance.number_of_unpaid_orders,
      'number_of_unexecuted_orders': instance.number_of_unexecuted_orders,
      'user_id': instance.user_id
    };
