import 'package:flutter/material.dart';

class AddSwimmer extends StatefulWidget {
  @override
  _AddSwimmerState createState() => _AddSwimmerState();
}

class _AddSwimmerState extends State<AddSwimmer> {
  final nameController = TextEditingController();
  final timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              creatTextField('New swimmer', nameController, false),
              SizedBox(height: 8),
              creatTextField('Time of regestration', timeController, true),
              SizedBox(height: 8),
              TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                      backgroundColor: Colors.transparent, fontSize: 15),
                ),
                onPressed: () => _onAddSwimmer(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget creatTextField(String hintText, TextEditingController controller,bool isPickTime) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
            cursorColor: Colors.black87,
            controller: controller,
          ),
        ),
        if(isPickTime) IconButton(onPressed: () {}, icon: Icon(Icons.access_time))
      ],
    );
  }

  _onAddSwimmer() {
    
  }
}
