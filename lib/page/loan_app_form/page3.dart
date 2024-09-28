import 'package:flutter/material.dart';

import '../../widgets/get_a_loan_app_bar.dart';

class LoanAppFormPage3 extends StatelessWidget {
  const LoanAppFormPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: GetALoanAppBar(),
        ),
      ),
    );
  }
}
