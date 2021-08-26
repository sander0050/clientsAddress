import 'package:client_address/src/constans.dart';

class AddressModel {
  final int addressID;
  final int streetNumber;
  final String streetName;
  final String streetSuffix;

  AddressModel(
      this.addressID, this.streetNumber, this.streetName, this.streetSuffix);

  AddressModel.fromJson(Map<String, dynamic> parsedJson)
      : addressID = parsedJson[ADDRESS_ID] ?? '',
        streetNumber = parsedJson[STREET_NUMBER] ?? '',
        streetName = parsedJson[STREET_NAME] ?? '',
        streetSuffix = parsedJson[STREET_SUFFIX] ?? '';

  Map<String, dynamic> toMap() => <String, dynamic>{
        ADDRESS_ID: addressID,
        STREET_NUMBER: streetNumber,
        STREET_NAME: streetName,
        STREET_SUFFIX: streetSuffix
      };

  String toString() => """ADDRESS_ID : $addressID|::|
        STREET_NUMBER: $streetNumber|::|
        STREET_NAME: $streetName|::|
        STREET_SUFFIX: $streetSuffix """;
}
