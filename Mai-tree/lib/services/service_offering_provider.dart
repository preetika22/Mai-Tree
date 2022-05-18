import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../view_models/service_offering.dart';

class ServiceOfferingProvider{
  Future<List<ServiceOffering>> fetchServiceOfferings() async {
    // TODO: This will eventually be replaced with an http call to API server
    final String response = await rootBundle.loadString('assets/data/service-offerings.json');

    final jsonData = json.decode(response);
    return List<ServiceOffering>.from(jsonData.map((x) => ServiceOffering.fromJson(x)));
  }
}