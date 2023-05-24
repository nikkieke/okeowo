import 'package:flutter/material.dart';

import '../../../../widgets/app_text.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
        child: AppText(text: 'Transactions Screen',),
    ),
    );
  }
}
