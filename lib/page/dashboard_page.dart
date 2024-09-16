import 'package:flutter/material.dart';
import '../widgets/dashboard_app_bar.dart';
import '../widgets/bottom_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isSecondImageVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: DashboardAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _isSecondImageVisible ? 2 : 1,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      // Premier cadre
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                        child: Stack(
                          children: [
                            Container(
                              height: 168,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      "Jegede Olamide 142657646345",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12, top: 10),
                                    child: Text(
                                      "Beta Savings",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          "NGN5,000",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.visibility,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12, top: 5),
                                    child: Text(
                                      "Ledger Balance NGN 5,321",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            if (!_isSecondImageVisible)
                              Positioned(
                                bottom: -20,
                                left: MediaQuery.of(context).size.width / 2 - 25,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      _isSecondImageVisible ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                                      size: 28,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isSecondImageVisible = !_isSecondImageVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    } else if (index == 1) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
                        child: Stack(
                          children: [
                            Container(
                              height: 168,
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      "Jegede Olamide 142657646345",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12, top: 10),
                                    child: Text(
                                      "Mandatory Account",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "NGN120,000",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Icon(
                                          Icons.visibility,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(left: 12, top: 5),
                                    child: Text(
                                      "Ledger Balance NGN 120,234",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),

                            // pour afficher la fleche sur le deuxieme cadr
                            Positioned(
                              bottom: -21,
                              left: MediaQuery.of(context).size.width / 2 - 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 6,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    _isSecondImageVisible ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                                    size: 28,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isSecondImageVisible = !_isSecondImageVisible;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                ),

                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Quick Actions',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.1),
                                  border: Border.all(color: Colors.purple.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.account_balance_wallet,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Fund Account',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.1),
                                  border: Border.all(color: Colors.purple.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.near_me,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Send Money',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.purple.withOpacity(0.1),
                                  border: Border.all(color: Colors.purple.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.confirmation_number,
                                      size: 30,
                                      color: Colors.orangeAccent,
                                    ),
                                    const SizedBox(height: 5),
                                    const Text(
                                      'Get A Loan',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Beta Savings Transactions',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'No transaction History yet',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //widget pour la bar de navigation
      bottomNavigationBar: BottomBar(),
    );
  }
}
