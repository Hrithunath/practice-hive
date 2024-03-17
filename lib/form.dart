import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final formkey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final phonenumbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: namecontroller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    print('Phone Number is required');
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: phonenumbercontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'PhoneNumber'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    print('Name is required');
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
               ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(backgroundColor: Colors.black), child: Text('Save',style: TextStyle(color: Colors.yellow),))
            ],
          ),
        ),
      ),
    );
  }
}
