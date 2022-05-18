import 'dart:convert';

class ServiceOffering {
  final int serviceId;
  final String name;
  final String brief;

  ServiceOffering({ required this.serviceId, required this.name, required this.brief});

  factory ServiceOffering.fromJson(Map<String, dynamic> json){
    return ServiceOffering(
      serviceId: json['serviceId'],
      name: json['name'],
      brief: json['brief'],
    );
  }

  Map<String, dynamic> toJson() => {
    "serviceId": serviceId,
    "name": name,
    "brief": brief,
  };
}