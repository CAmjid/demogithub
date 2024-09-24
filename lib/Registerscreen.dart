// ignore: file_names
import 'package:flutter/material.dart';
import 'package:loginpage/formatscreen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

List<String> list = ['monday', 'Tuesday', 'wednesday', 'thirsday'];
String dropdownValue = list.first;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'search for treatment'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 55,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 6, 77, 3),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'search',
                      style:
                          TextStyle(color: Color.fromARGB(255, 245, 255, 245)),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'sort by :',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 100),
                child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 250, 244),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: DropdownMenu(
                      initialSelection: list.first,
                      trailingIcon: Icon(Icons.keyboard_arrow_down),
                      hintText: 'Date',
                      onSelected: (value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries:
                          list.map<DropdownMenuEntry<String>>((value) {
                        return DropdownMenuEntry(value: value, label: value);
                      }).toList(),
                    )),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Divider(
              color: Color.fromARGB(255, 123, 121, 121),
            ),
          ),
          Column(
            children: [
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 215, 215, 210),
                    borderRadius: BorderRadius.circular(10)),
                child: const Stack(
                  children: [
                    Positioned(
                      bottom: 1,
                      top: 10,
                      left: 15,
                      child: Text(
                        '1.  vikram sing',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 35,
                      child: Text(
                        'couple combo package',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 19, 187, 56)),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 35,
                      child: Icon(
                        Icons.calendar_month,
                        color: Color.fromARGB(255, 172, 48, 41),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 65,
                      child: Text(
                        '03/01/2024',
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 200,
                      child: Text(
                        'jithesh',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 170,
                      child: Icon(
                        Icons.group,
                        color: Color.fromARGB(255, 174, 64, 42),
                      ),
                    ),
                    Positioned(
                        child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Divider(
                          color: Color.fromARGB(255, 152, 150, 145),
                        ),
                      ),
                    )),
                    Positioned(
                      top: 120,
                      left: 40,
                      child: Text(
                        'view booking details',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 290,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 10, 142, 54),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 215, 215, 210),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Stack(
                    children: [
                      Positioned(
                        bottom: 1,
                        top: 10,
                        left: 15,
                        child: Text(
                          '2.  vikram sing',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        left: 35,
                        child: Text(
                          'couple combo package',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 187, 39)),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 35,
                        child: Icon(
                          Icons.calendar_month,
                          color: Color.fromARGB(255, 172, 48, 41),
                        ),
                      ),
                      Positioned(
                        top: 75,
                        left: 65,
                        child: Text(
                          '03/01/2024',
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 200,
                        child: Text(
                          'jithesh',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 170,
                        child: Icon(
                          Icons.group,
                          color: Color.fromARGB(255, 174, 64, 42),
                        ),
                      ),
                      Positioned(
                          child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 70),
                          child: Divider(
                            color: Color.fromARGB(255, 152, 150, 145),
                          ),
                        ),
                      )),
                      Positioned(
                        top: 120,
                        left: 40,
                        child: Text(
                          'view booking details',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 290,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Formatscreen()));
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 4, 71, 14),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Register Now',
                      style:
                          TextStyle(color: Color.fromARGB(255, 247, 255, 251)),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
