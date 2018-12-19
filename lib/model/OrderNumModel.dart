import 'package:flutter_app/model/BaseResponse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'OrderNumModel.g.dart';

@JsonSerializable()
class OrderNumModel extends BaseResponse {
  OrderNumReal data;


  OrderNumModel(this.data) : super('', '');

  factory OrderNumModel.fromJson(Map<String, dynamic> json) =>
      _$OrderNumModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderNumModelToJson(this);

  @override
  String toString() {
    return 'OrderNumModel{data: $data,status: $status,message:$message}';
  }



}

@JsonSerializable()
class OrderNumReal  {
  String number_of_unpaid_orders;
  String number_of_unexecuted_orders;
  String user_id;


  OrderNumReal(this.number_of_unpaid_orders, this.number_of_unexecuted_orders,
      this.user_id) ;

  factory OrderNumReal.fromJson(Map<String, dynamic> json) =>
      _$OrderNumRealFromJson(json);

  Map<String, dynamic> toJson() => _$OrderNumRealToJson(this);

  @override
  String toString() {
    return 'OrderNumModel{number_of_unpaid_orders: $number_of_unpaid_orders, number_of_unexecuted_orders: $number_of_unexecuted_orders, user_id: $user_id}';
  }


}

