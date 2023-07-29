import 'package:rxdart/rxdart.dart';
import 'dart:async';

class Valadation{
final _email =BehaviorSubject<String>.seeded('@');
final _message= BehaviorSubject<String>.seeded('');

Stream<String> get email =>_email.stream.transform(validateEmail);
Sink<String> get  sinkEmail =>_email.sink;

Stream<String> get message =>_message.stream.transform(validateMessage);
Sink<String> get  sinkmessage =>_message.sink;

Stream<bool> get submiValadition => Rx.combineLatest2(email, message, (a, b) => true);


final validateEmail= StreamTransformer<String,String>.fromHandlers(handleData: (value, sink){
    if (value.length!=1){
      isEmail(value)?sink.add(value):sink.addError("plese enter correct email");
    }
});


final validateMessage= StreamTransformer<String,String>.fromHandlers(handleData: (value, sink){
    if (value.isNotEmpty){
      value.length>8?sink.add(value):sink.addError("Message should be more then 8 characters");
    
    }
});



static bool isEmail (String email){
  String value=  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(value);
    return regExp.hasMatch(email);
}
}
final valadation=Valadation();