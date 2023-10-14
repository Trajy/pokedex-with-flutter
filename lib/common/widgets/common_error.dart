import 'package:flutter/material.dart';

class CommonError extends StatelessWidget {
  const CommonError({super.key, this.error});

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error ?? 'Unknown Error '),
      ),
    );
  }
}