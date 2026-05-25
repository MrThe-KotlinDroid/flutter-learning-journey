import 'package:flutter/material.dart';

class Module12class1 extends StatelessWidget {
  const Module12class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Login Screen'), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text('Login here...!', style: TextStyle(fontSize: 24)),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  labelText: 'Enter Phone Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  filled: true,
                  fillColor: Colors.grey.shade100,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  } else if (value.length < 11) {
                    return 'Enter a valid phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),

              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  filled: true,
                  fillColor: Colors.grey.shade100,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }else if(value.length < 6){
                    return 'Password must be grater than 6 character';
                  }else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {

                    }
                  },
                  child: Text('Login'),
                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
