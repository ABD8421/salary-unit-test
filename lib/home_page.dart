import 'package:flutter/material.dart';
import 'my_function.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var hourController= TextEditingController();
  int? salary;
  MyFunction mf=MyFunction();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: hourController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Hour"
              ),
            ),
          ),

          SizedBox(height: 20,),

          ElevatedButton(

              onPressed: (){

                int hour= int.parse(hourController.text.toString());
                if(hour==null)
                  {
                    salary=0;
                  }

                setState(() {
                  salary=mf.calculateSalary(hour);
                });


              },
              child: Text("Calculate",
              style: TextStyle(
                color: Colors.cyan,
              ),)),

          if(salary !=null) ...[
            SizedBox(height: 20,),
            Text("$salary TK")
          ]

        ],
      ),
    );
  }
}