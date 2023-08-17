import 'package:book_yourfly/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeField extends StatefulWidget {
  final String? datefield;

  DateTimeField({super.key, required this.datefield});

  @override
  State<DateTimeField> createState() => _DateTimeFieldState();
}

class _DateTimeFieldState extends State<DateTimeField> {
  @override
  TextEditingController dateinput = TextEditingController();

  Widget build(BuildContext context) {
    return TextField(
        style: const TextStyle(color: Colors.white),
        cursorHeight: 0,
        keyboardType: TextInputType.none,
        controller: dateinput, //editing controller of this TextField
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.white, width: 2)),
          label: TextWidget(
              text: widget.datefield.toString(), color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          suffixIcon: const Icon(Icons.calendar_today, color: Colors.white),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              // DateTime.now() - not to allow to choose before today.
              lastDate: DateTime(2101));
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              dateinput.text =
                  formattedDate; //set output date to TextField value.
            });
          }
        });
  }
}
