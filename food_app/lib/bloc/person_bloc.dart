import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/events/person_event.dart';
import 'package:food_app/model/person.dart';

  class PersonBloc extends Bloc<PersonEvent, List<Person>>{

    @override
    List<Person> get initialState => List<Person>();

    @override
    Stream<List<Person>> mapEventToState(PersonEvent event) async* {
      switch(event.eventType){
        case EventType.add:
          List<Person> newState = List.from(state); // state è lo stato della classe bloc
          if(event.person != null){
            newState.add(event.person);
          }
          //yield is like return, but it doesn't interrupt function's flow
          yield newState;
          break;
        case EventType.delete:
          List<Person> newState = List.from(state);
          newState.removeAt(event.personIndex);
          yield newState;
          break;
        default:
          throw Exception('Event not found $event');
      }
    }
  }

