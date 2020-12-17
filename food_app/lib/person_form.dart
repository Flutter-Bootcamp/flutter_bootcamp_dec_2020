import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/person_bloc.dart';
import 'package:food_app/events/person_event.dart';
import 'package:food_app/model/person.dart';
import 'person_list.dart';

class PersonForm extends StatefulWidget {
  @override
  _PersonFormState createState() => _PersonFormState();
}

class _PersonFormState extends State<PersonForm> {
  String _personName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd7deff),
      appBar: AppBar(title: Text('Flutter Bootcamp 2020')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'That\'s BLoC',
                style: TextStyle(fontSize: 42),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'New person'),
                style: TextStyle(fontSize: 22),
                onChanged: (text) {
                  setState(() {
                    _personName = text;
                  });
                },
              ),
              PersonList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        //first add method: adding the event to PersonBloc
        //second add method: our add (Person) method
        onPressed: () => BlocProvider.of<PersonBloc>(context).add(
          PersonEvent.add(Person(_personName)),
        ),
      ),
    );
  }
}