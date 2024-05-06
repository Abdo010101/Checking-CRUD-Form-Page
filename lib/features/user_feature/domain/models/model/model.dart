class Model {
  num? personId;
  String? name;
  String? birthDate;
  num? age;
  num? nationalityId;

  Model({
    this.personId,
    this.name,
    this.birthDate,
    this.age,
    this.nationalityId,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      personId: num.tryParse(json['personID'].toString()),
      name: json['name']?.toString(),
      birthDate: json['birthDate']?.toString(),
      age: num.tryParse(json['age'].toString()),
      nationalityId: num.tryParse(json['nationalityID'].toString()),
    );
  }

  Map<String, dynamic>
      toPersonId1NameNameBirthDate20230504T000000Age10000000000000000000000000000NationalityId123PersonId123454NameMohsen23BirthDate20240506T052647345Age24000000000000000000000000000NationalityId123456789PersonId123456NameNaderBirthDate20240506T052647345Age30000000000000000000000000000NationalityId0PersonId63773785NameMoSalahBirthDate00010101T000000Age00000000000000000000000000000NationalityId0PersonId321084003NameJaneDoeBirthDate00010101T000000Age34000000000000000000000000000NationalityId0PersonId321084007NameEissaBirthDate20240430T200408803Age25454000000000000000000000000NationalityId0PersonId321084014NameThisBirthDate20240503T000000Age22000000000000000000000000000NationalityId1374PersonId321084015NameAhmedBirthDate20240501T000000Age11000000000000000000000000000NationalityId13476PersonId321084016NameAhmed2BirthDate20240501T000000Age11000000000000000000000000000NationalityId13476PersonId321084017NameAhmedEditedBirthDate20240501T000000Age11000000000000000000000000000NationalityId13476PersonId321084019NameMohamedBirthDate20010505T000000Age23000000000000000000000000000NationalityId0PersonId321084020NameMahmoudBirthDate20140501T000000Age10000000000000000000000000000NationalityId0PersonId321084021NameAhmedMahmoudBirthDate20180505T000000Age60000000000000000000000000000NationalityId301072009PersonId321084022NameIsmailBirthDate20140506T000000Age10000000000000000000000000000NationalityId123456789PersonId321084024NameCristianoBirthDate19850205T000000Age39000000000000000000000000000NationalityId12684965PersonId321084026NameStringBirthDate20240505T000058166Age00000000000000000000000000000NationalityId0PersonId321084027NameStringBirthDate20240505T145221988Age00000000000000000000000000000NationalityId0PersonId321084028NameMyNewPersonNameBirthDate20240505T145221988Age00000000000000000000000000000NationalityId0PersonId321084029NameMyNewPersonNameBirthDate20240505T145221988Age00000000000000000000000000000NationalityId0PersonId321084030NameMySecondNewPersonNameBirthDate20240505T145221988Age00000000000000000000000000000NationalityId0PersonId321084040NameMoSalahBirthDate20240506T052647345Age54000000000000000000000000000NationalityId8PersonId321084045NameOmarBirthDate20240506T052647345Age43000000000000000000000000000NationalityId1PersonId321084048NameAliBirthDate20240506T052647345Age30000000000000000000000000000NationalityId3PersonId321084049NameOthmanBirthDate20240506T052647345Age48000000000000000000000000000NationalityId4PersonId321084050NameMohammedBirthDate20240506T052647345Age45000000000000000000000000000NationalityId1PersonId321084052NameBirthDate20010730T000000Age22000000000000000000000000000NationalityId30107509() {
    return {
      if (personId != null) 'personID': personId,
      if (name != null) 'name': name,
      if (birthDate != null) 'birthDate': birthDate,
      if (age != null) 'age': age,
      if (nationalityId != null) 'nationalityID': nationalityId,
    };
  }
}
