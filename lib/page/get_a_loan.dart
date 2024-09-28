import 'package:flutter/material.dart';
import 'package:projet_formatic/page/user_dashboard/user_dashboard.dart';
import '../widgets/get_a_loan_app_bar.dart';

class GetALoan extends StatelessWidget {
  const GetALoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: GetALoanAppBar(),
        ),

        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get A Loan",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Hello, Note that you’re about to apply for a loan, and a mandatory account will be opened for you. Also, you’re required to complete some details below.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "Registration Fee",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "You are Required to complete THIS before you can apply for loan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/profil.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => UserDashboard(),
                          ));
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "Source Documents",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "You are Required to complete THIS before you can apply for loan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/profil.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "Guarantor's Detail",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "You are Required to complete THIS before you can apply for loan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/profil.jpg'),
                              fit: BoxFit.cover,
                              opacity: 0.7,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
