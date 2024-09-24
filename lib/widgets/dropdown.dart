import 'package:flutter/material.dart';

class Dropdownlisttask extends StatefulWidget {
  const Dropdownlisttask({super.key});

  @override
  State<Dropdownlisttask> createState() => _DropdownlisttaskState();
}

class _DropdownlisttaskState extends State<Dropdownlisttask> {
  final _itemlist = ["Location", "kerala", "Karnataka", "Delhi", "Hariyana"];
  String _initialitem = "Location";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 230, 222),
            borderRadius: BorderRadius.circular(10)),
        child: DropdownButton(
            isExpanded: true,
            // icon: const Icon(

            //   // Icons.keyboard_arrow_down,
            //   // size: 30,

            // ),

            value: _initialitem,
            onTap: () {},
            onChanged: (String? changevalue) {
              setState(() {
                _initialitem = changevalue!;
              });
            },
            items: _itemlist.map((uservalue) {
              return DropdownMenuItem(
                  value: uservalue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((uservalue)),
                  ));
            }).toList()),
      ),
    );
  }
}

//_________________________________________________________________
class AlertBox extends StatefulWidget {
  const AlertBox({super.key});

  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('choose treatment'),
        ],
      ),
    );
  }
}
