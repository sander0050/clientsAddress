import 'dart:async';
import 'package:rxdart/rxdart.dart';

class AddressBloc {
  final BehaviorSubject<int> _addressID = BehaviorSubject<int>();
  final BehaviorSubject<int> _streetNumber = BehaviorSubject<int>();
  final BehaviorSubject<String> _streetName = BehaviorSubject<String>();
  final BehaviorSubject<String> _streetSuffix = BehaviorSubject<String>();

  Stream<int> get addressID => _addressID.stream;
  Stream<int> get streetNumber =>
      _streetNumber.stream.transform(StreamTransformer<int, int>.fromHandlers(
          handleData: (streetNumber, sink) {
        if (streetNumber != null) {
          sink.add(streetNumber);
        } else {
          sink.addError("Client's streetNumber is required");
        }
      }));
  Stream<String> get streetName => _streetName.stream.transform(
          StreamTransformer<String, String>.fromHandlers(
              handleData: (streetName, sink) {
        if (streetName != null) {
          sink.add(streetName);
        } else {
          sink.addError("Client's streetName is required");
        }
      }));
  Stream<String> get streetSuffix => _streetSuffix.stream.transform(
          StreamTransformer<String, String>.fromHandlers(
              handleData: (streetSuffix, sink) {
        if (streetSuffix != null) {
          sink.add(streetSuffix);
        } else {
          sink.addError("Client's streetSuffix is required");
        }
      }));

  Function(int) get changeStreetNumber => _streetNumber.sink.add;
  Function(String) get changeStreetName => _streetName.sink.add;
  Function(String) get changeStreetSuffix => _streetSuffix.sink.add;

  dispose() {
    _addressID.close();
    _streetNumber.close();
    _streetName.close();
    _streetSuffix.close();
  }
}
