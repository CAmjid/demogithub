import 'package:flutter/material.dart';

import 'package:loginpage/savesreen.dart';
import 'package:loginpage/widgets/dropdown.dart';

class Formatscreen extends StatefulWidget {
  const Formatscreen({super.key});

  @override
  State<Formatscreen> createState() => _FormatscreenState();
}

class _FormatscreenState extends State<Formatscreen> {
  int count = 0;
  int _selectedvalue = 1;

  // ignore: unused_field
  final List<String> _items = [
    'Location',
    'kerala',
    'karnataka',
    'Delhi',
    'Hariyana'
  ];
  //int count = 0;
  void _increment() {
    setState(() {
      count++;
      print(count);
    });
  }

  void _decrement() {
    setState(() {
      count--;
      print(count);
    });
  }

  void alert(context) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return Column(
            children: [
              AlertDialog(
                title: const Text('choose treatment'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(255, 184, 184, 175),
                        hintText: 'steertet',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    const Text(
                      'Add patient',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(201, 200, 214, 207),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text('Male'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 11, 84, 3),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _increment();
                                  });
                                },
                                child: const Icon(Icons.add)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("$count"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 4, 96, 7),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _decrement();
                                  });
                                },
                                child: const Icon(Icons.remove)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(201, 200, 214, 207),
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text('Female'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 11, 84, 3),
                            child: IconButton(
                                onPressed: () {
                                  _increment();
                                },
                                icon: const Icon(Icons.add)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 4, 96, 7),
                            child: IconButton(
                                onPressed: () {
                                  _decrement();
                                },
                                icon: const Icon(Icons.remove)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 70, 5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Color.fromARGB(255, 246, 255, 246)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Register',
              // style: TextStyle(fontSize: 25),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 146, 144, 140),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Name',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Color.fromARGB(255, 237, 233, 224),
                hintText: 'Enter your full name',
                hintStyle: TextStyle(color: Color.fromARGB(255, 167, 164, 153)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Whatsapp Number',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Color.fromARGB(255, 234, 230, 220),
                hintText: 'Enter your whatsapp number',
                hintStyle: TextStyle(color: Color.fromARGB(255, 165, 162, 151)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Address',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Color.fromARGB(255, 235, 230, 222),
                hintText: 'Enter your full address',
                hintStyle: TextStyle(color: Color.fromARGB(255, 143, 141, 133)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Location',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Dropdownlisttask(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Branch',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Dropdownlisttask(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Treatment',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 204, 196),
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  const Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      '1. couple combo package',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    left: 300,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 184, 93, 57),
                      child: Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 252, 249, 240),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 45,
                    left: 35,
                    child: Text(
                      'Male',
                      style: TextStyle(
                          color: Color.fromARGB(255, 45, 97, 21), fontSize: 15),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 90,
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 176, 173, 167),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          '2',
                          style:
                              TextStyle(color: Color.fromARGB(255, 26, 86, 12)),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 45,
                    left: 150,
                    child: Text(
                      'Female',
                      style: TextStyle(
                          color: Color.fromARGB(255, 45, 97, 21), fontSize: 15),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 210,
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 176, 173, 167),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          '2',
                          style:
                              TextStyle(color: Color.fromARGB(255, 26, 86, 12)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 72, 147, 95),
                  borderRadius: BorderRadius.circular(8)),

              child: TextButton(
                onPressed: () {
                  alert(context);
                },
                child: const Center(
                  child: Text(
                    '+ Add Treatment',
                    style: TextStyle(color: Color.fromARGB(255, 247, 255, 247)),
                  ),
                ),
              ),

              // child: const Center(
              //   child: Text(

              //     'Add Treatment',
              //     style: TextStyle(),
              //   ),
              // ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Total Amount',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: const Color.fromARGB(255, 185, 190, 188),
                filled: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Discount Amount',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: const Color.fromARGB(255, 185, 190, 188),
                filled: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'payment option',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: RadioListTile<int>(
                  title: const Text(
                    'Cash',
                    style: TextStyle(fontSize: 13),
                  ),
                  value: 1,
                  groupValue: _selectedvalue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedvalue = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: RadioListTile<int>(
                  title: const Text(
                    'Card',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  value: 2,
                  groupValue: _selectedvalue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedvalue = value!;
                    });
                  },
                ),
              ),
              Flexible(
                child: RadioListTile<int>(
                  title: const Text(
                    'UPI',
                    style: TextStyle(fontSize: 15),
                  ),
                  value: 3,
                  groupValue: _selectedvalue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedvalue = value!;
                    });
                  },
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Advance Amount',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: const Color.fromARGB(255, 185, 190, 188),
                filled: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Balance Amount',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: const Color.fromARGB(255, 185, 190, 188),
                filled: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'treatment date',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Dropdownlisttask(),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 198, 206, 199),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Color.fromARGB(255, 246, 255, 246),
                            filled: true,
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintText: 'Hour'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 198, 206, 199),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Color.fromARGB(255, 246, 255, 246),
                            filled: true,
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                            hintText: 'Mnutes'),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Savesreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 4, 64, 35),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Color.fromARGB(255, 247, 255, 248)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ]),
      ),
    );
  }
}
