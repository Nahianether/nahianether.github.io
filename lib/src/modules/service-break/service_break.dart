import 'package:flutter/material.dart';

import 'components/body.dart' show ServiceBreakBody;

class ServiceBreak extends StatelessWidget {
  const ServiceBreak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ServiceBreakBody(),
      ),
    );
  }
}
