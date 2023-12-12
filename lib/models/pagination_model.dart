import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericPagedResponse<T> {
  final int currentPage;
  final int perPage;
  final int totalCount;
  final List<T> data;

  GenericPagedResponse(
      this.currentPage, this.perPage, this.data, this.totalCount);

  bool get hasNextPage {
    return (totalCount - (currentPage * perPage)) > 0;
  }

  factory GenericPagedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$GenericPagedResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T) toJson) =>
      _$GenericPagedResponseToJson(this, toJson);
}
