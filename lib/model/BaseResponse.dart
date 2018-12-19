import 'package:json_annotation/json_annotation.dart';

part 'BaseResponse.g.dart';

@JsonSerializable()
class BaseResponse {
  String status;
  String message;

  BaseResponse(this.status, this.message);

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  @override
  String toString() {
    return 'BaseResponse{status: $status, message: $message}';
  }
}
