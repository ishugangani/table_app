import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtNumber = TextEditingController();
  int n = 0;
  List table = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Multiplication Table"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
              txtNumber.clear();
              },
              icon: Icon(Icons.refresh)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: txtNumber,
                decoration: InputDecoration(
                  hintText: "Enter the number...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.teal.shade800,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  String number = txtNumber.text;
                  setState(() {
                    n = int.parse(number);
                  });
                },
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 365,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(2),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      "$n x 1 = ${n * 1}",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("$n x 2 = ${n * 2}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 3 = ${n * 3}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 4 = ${n * 4}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 5 = ${n * 5}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 6 = ${n * 6}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 7 = ${n * 7}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 8 = ${n * 8}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 9 = ${n * 9}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
                    Text("$n x 10 = ${n * 10}",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    SizedBox(height: 5,),
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
