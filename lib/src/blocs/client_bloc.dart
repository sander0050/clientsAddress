import 'dart:async';
import 'package:rxdart/rxdart.dart';

class ClientBloc {
  final BehaviorSubject<int> _clientID = BehaviorSubject<int>();
  final BehaviorSubject<String> _name = BehaviorSubject<String>();
  final BehaviorSubject<String> _lastName = BehaviorSubject<String>();
  final BehaviorSubject<String> _gender = BehaviorSubject<String>();
  final BehaviorSubject<DateTime> _birthday = BehaviorSubject<DateTime>();

  Stream<int> get clientID => _clientID.stream;
  Stream<String> get name =>
      _name.stream.transform(StreamTransformer<String, String>.fromHandlers(
          handleData: (name, sink) {
        if (name != null) {
          sink.add(name);
        } else {
          sink.addError("Client's Name is required");
        }
      }));
  Stream<String> get lastName =>
      _lastName.stream.transform(StreamTransformer<String, String>.fromHandlers(
          handleData: (lastName, sink) {
        if (lastName != null) {
          sink.add(lastName);
        } else {
          sink.addError("Client's LastName is required");
        }
      }));
  Stream<DateTime> get birthday => _birthday.stream.transform(
          StreamTransformer<DateTime, DateTime>.fromHandlers(
              handleData: (birthday, sink) {
        if (birthday != null) {
          sink.add(birthday);
        } else {
          sink.addError("Client's birthday is required");
        }
      }));
  Stream<String> get gender =>
      _gender.stream.transform(StreamTransformer<String, String>.fromHandlers(
          handleData: (gender, sink) {
        if (gender != null) {
          sink.add(gender);
        } else {
          sink.addError("Client's gender is required");
        }
      }));

  Function(String) get changeName => _name.sink.add;
  Function(String) get changeLastName => _lastName.sink.add;
  Function(String) get changeGender => _gender.sink.add;
  Function(DateTime) get changeBirthday => _birthday.sink.add;

  dispose() {
    _clientID.close();
    _name.close();
    _lastName.close();
    _gender.close();
    _birthday.close();
  }
}
