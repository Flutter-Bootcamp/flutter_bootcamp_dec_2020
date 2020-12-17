import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/bloc/person_bloc.dart';
import 'package:food_app/events/person_event.dart';
import 'package:food_app/model/person.dart';

// if i want to change a state, i have to use BlocConsumer

class PersonList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: BlocConsumer<PersonBloc, List<Person>>(
        
        buildWhen: (List<Person> previous, List<Person> current){
          return true;
        },

        listenWhen: (List<Person> previous, List<Person> current){
          if(current.length > previous.length) {
            return true;
          } else {
            return false;
          }
        },

        builder: (context, personList){
          return ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              itemCount: personList.length,
              itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                    title: Text(personList[index].name),
                    onTap: () => BlocProvider.of<PersonBloc>(context).add(PersonEvent.delete(index)),
                  ),
                );
              }
          );
        },
        listener: (BuildContext context, personList){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Person added')));
      },
      ),
    );
  }

}