import 'package:flutter/material.dart';
import 'constants.dart';

class ServiceBookingScreen extends StatefulWidget {
  static const routeName = '/service_booking';
  const ServiceBookingScreen({Key? key}) : super(key: key);

  @override
  _ServiceBookingScreenState createState() => _ServiceBookingScreenState();
}

class _ServiceBookingScreenState extends State<ServiceBookingScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        title: const Text(Constants.appName),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Center(child: Text('Service Booking Form. Service Id = $args')),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                },
                child: const Text('Submit'),
              ),
            )
          ],
        ),)
    );
  }
}