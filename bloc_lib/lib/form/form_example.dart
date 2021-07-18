import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(FormExample()));

class FormExample extends StatelessWidget {
  List<DropdownMenuItem<int>> dropdownList = [
    DropdownMenuItem(
      child: new Text('Female'),
      value: 1,
    ),
    DropdownMenuItem(
      child: new Text('Male'),
      value: 0,
    )
  ];


  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Example Code'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: this.textEditingController,
                  onChanged: (value) {print(value);},
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Please Enter Email',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please Enter Password',
                  ),
                  obscureText: true,
                ),
                DropdownButton(
                  items: dropdownList,
                  hint: new Text('Select Gender'),
                  isExpanded: true,
                ),
                RadioListTile<String>(
                    onChanged: (value) {
                      print(value);
                    },
                    title: const Text('Single'),
                    value: 'single',
                    groupValue: 'single'),
                RadioListTile<String>(
                    onChanged: (value) {},
                    title: const Text('Married'),
                    value: 'married',
                    groupValue: 'married'),
                CheckboxListTile(
                  onChanged: (value) {},
                  value: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: new Text(
                    'I agree to the terms and condition',
                  ),
                ),
                SwitchListTile(
                  onChanged: (value) {
                    print(value);
                  },
                  value: true,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                // Add TextFormFields and ElevatedButton here.
              ],
            ),
          ),
        ),
      ),
    );
  }
}
