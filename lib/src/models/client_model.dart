import '../constans.dart';

class ClientModel {
  final int clientID;
  final String name;
  final String lastName;
  final String gender;
  final DateTime birthday;

  ClientModel(
      this.clientID, this.name, this.lastName, this.gender, this.birthday);

  ClientModel.fromJson(Map<String, dynamic> parsedJson)
      : clientID = parsedJson[CLIENT_ID] ?? '',
        name = parsedJson[CLIENT_NAME] ?? '',
        lastName = parsedJson[CLIENT_LAST_NAME] ?? '',
        gender = parsedJson[CLIENT_GENDER] ?? '',
        birthday = DateTime.tryParse(parsedJson[CLIENT_BIRTHDATE]) ?? null;

  Map<String, dynamic> toMap() => <String, dynamic>{
        CLIENT_ID: clientID,
        CLIENT_NAME: name,
        CLIENT_LAST_NAME: lastName,
        CLIENT_GENDER: gender,
        CLIENT_BIRTHDATE: birthday
      };

  String toString() => """CLIENT_ID : $clientID|::|
        NAME: $name|::|
        LAST_NAME: $lastName|::|
        GENDER: $gender|::|
        BIRTHDATE: $birthday """;
}
