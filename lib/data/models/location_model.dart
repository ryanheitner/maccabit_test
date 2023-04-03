import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final int id;
  final String name;
  final String? type;
  final String? dimension;

  LocationModel(
      {required this.id,
      required this.name,
      this.type,
      this.dimension});

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'],
      type: json['type'],
      dimension: json['dimension'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
    };
  }

  @override
  List<Object> get props => [id, name];
}
