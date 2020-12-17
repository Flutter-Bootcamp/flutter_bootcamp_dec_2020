import 'package:food_app/model/person.dart';

  enum EventType {add, delete}

  class PersonEvent {
    Person person;
    int personIndex;
    EventType eventType;

    PersonEvent.add(Person person){
      this.eventType = EventType.add;
      this.person = person;
    }

    PersonEvent.delete(int index){
      this.eventType = EventType.delete;
      this.personIndex = index;
    }
  }

