import 'package:clearance_app/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Welcome to Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Clearance Form'),
            SizedBox(height: 20),
            Container(
              width: 400, // Adjust the width as needed
              child: FormContainerWidget(
                hintText: "Name",
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400, // Adjust the width as needed
              child: FormContainerWidget(
                hintText: "Gender",
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400, // Adjust the width as needed
              child: FormContainerWidget(
                hintText: "Reg No.",
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400, // Adjust the width as needed
              child: FormContainerWidget(
                hintText: "Faculty",
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 400, // Adjust the width as needed
              child: FormContainerWidget(
                hintText: "Department",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Success'),
                      content: Text('Clearance Process Completed'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                ); // Handle submit button press
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
