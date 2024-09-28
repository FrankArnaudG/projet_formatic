import 'package:flutter/material.dart';
import '../../widgets/get_a_loan_app_bar.dart';
import '../../widgets/loan_app_form_bar.dart';
import 'package:projet_formatic/page/loan_app_form/page3.dart';

class LoanAppFormPage2 extends StatelessWidget {
  const LoanAppFormPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: GetALoanAppBar(),
        ),

        body: Column(
          children: [
            LoanAppFormBar(),
            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Step 2 of 4",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey[300],
                    color: Colors.orange,
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Non-Financial Evaluation",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),

                  SizedBox(height: 25),

                  Text(
                    "Number of Dependants",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),

                    hint: Text("Select Number of Dependants"),

                    items: [
                      DropdownMenuItem(
                        value: "5000",
                        child: Text("5,000"),
                      ),
                      DropdownMenuItem(
                        value: "10000",
                        child: Text("10,000"),
                      ),
                    ],
                    onChanged: (String? value) {
                      // pour gerer le changement de selection
                    },
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Number of Children",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),

                    hint: Text("Select Number of Children"),

                    items: [
                      DropdownMenuItem(
                        value: "5000",
                        child: Text("5,000"),
                      ),
                      DropdownMenuItem(
                        value: "10000",
                        child: Text("10,000"),
                      ),
                    ],
                    onChanged: (String? value) {
                      // pour gerer le changement de selection
                    },
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Number of Mouth at Adress",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),

                    hint: Text("Select Number of Mouth at Adress"),

                    items: [
                      DropdownMenuItem(
                        value: "5000",
                        child: Text("5,000"),
                      ),
                      DropdownMenuItem(
                        value: "10000",
                        child: Text("10,000"),
                      ),
                    ],
                    onChanged: (String? value) {
                      // pour gerer le changement de selection
                    },
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Health Status of Dependants",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      fillColor: Colors.grey[300],
                      filled: true,
                    ),

                    hint: Text("Health Status of Dependants"),

                    items: [
                      DropdownMenuItem(
                        value: "5000",
                        child: Text("5,000"),
                      ),
                      DropdownMenuItem(
                        value: "10000",
                        child: Text("10,000"),
                      ),
                    ],
                    onChanged: (String? value) {
                      // pour gerer le changement de selection
                    },
                  ),

                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoanAppFormPage3(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(horizontal: 125, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Save & Continue",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
