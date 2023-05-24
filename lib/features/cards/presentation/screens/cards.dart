import 'package:flutter/material.dart';

import '../../../../widgets/app_text.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AppText(text: 'Cards Screen',),
      ),
    );
  }
}
