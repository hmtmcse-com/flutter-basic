import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(FormSubmission()));

class FormSubmission extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var _inputValues = Map();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Submission Example Code'),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomTextFormField(
                  labelText: "Name *",
                  hintText: 'Please enter name',
                  onChange: (value) {
                    _inputValues['name'] = value;
                  },
                ),
                CustomTextFormField(
                  labelText: "Title",
                  hintText: 'Please enter title',
                  initialValue: "This is Title",
                  onChange: (value) {
                    _inputValues['title'] = value;
                  },
                ),
                CustomTextFormField(
                  labelText: "Password",
                  hintText: 'Please enter password',
                  isPassword: true,
                  onChange: (value) {
                    _inputValues['password'] = value;
                  },
                ),
                CustomTextFormField(
                  labelText: "Description",
                  maxLines: 4,
                  onChange: (value) {
                    _inputValues['description'] = value;
                  },
                ),
                CustomRadioListTile(
                  labelText: "Gender",
                  valueAndName: {
                    'male': 'Male',
                    'female': 'Female',
                    'other': 'Other',
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    print(_inputValues);
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomRadioListTile extends StatefulWidget {
  final String labelText;
  final ValueChanged<String>? onChange;
  final Map<dynamic, String> valueAndName;

  const CustomRadioListTile({
    required this.labelText,
    this.onChange,
    required this.valueAndName,
  });

  @override
  State<StatefulWidget> createState() {
    return _CustomRadioListTile();
  }
}

class _CustomRadioListTile extends State<CustomRadioListTile> {
  String? _groupValue = "";

  _onChange(String? value) {
    if (widget.onChange != null && value != null) {
      widget.onChange!(value);
    }
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    if (widget.valueAndName.isNotEmpty) {
      widgets.add(
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(3, 0, 0, 0),
          title: Text(widget.labelText),
        ),
      );
    }
    widget.valueAndName.forEach((key, value) {
      widgets.add(
        RadioListTile<String>(
          contentPadding: EdgeInsets.fromLTRB(6, 0, 0, 0),
          onChanged: (value) {
            _onChange(value);
          },
          title: Text(value),
          value: key,
          groupValue: _groupValue,
        ),
      );
    });
    return Column(
      children: widgets,
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final String? initialValue;
  final int? maxLines;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;
  final bool isPassword;
  final bool isEmail;

  const CustomTextFormField({
    required this.labelText,
    this.hintText,
    this.initialValue,
    this.validator,
    this.onChange,
    this.maxLines = 1,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: TextFormField(
        onChanged: onChange,
        validator: validator,
        initialValue: initialValue,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
        obscureText: isPassword ? true : false,
        keyboardType: isEmail ? TextInputType.emailAddress : (maxLines != null ? TextInputType.multiline : TextInputType.text),
      ),
    );
  }
}
