class GetUser {
	num? personId;
	String? name;
	DateTime? birthDate;
	num? age;
	num? nationalityId;

	GetUser({
		this.personId, 
		this.name, 
		this.birthDate, 
		this.age, 
		this.nationalityId, 
	});

	factory GetUser.fromPersonId0NameStringBirthDate20240505T000202261ZAge0NationalityId0(Map<String, dynamic> json) {
		return GetUser(
			personId: num.tryParse(json['personID'].toString()),
			name: json['name']?.toString(),
			birthDate: json['birthDate'] == null
						? null
						: DateTime.tryParse(json['birthDate'].toString()),
			age: num.tryParse(json['age'].toString()),
			nationalityId: num.tryParse(json['nationalityID'].toString()),
		);
	}



	Map<String, dynamic> toPersonId0NameStringBirthDate20240505T000202261ZAge0NationalityId0() {
		return {
			if (personId != null) 'personID': personId,
			if (name != null) 'name': name,
			if (birthDate != null) 'birthDate': birthDate?.toIso8601String(),
			if (age != null) 'age': age,
			if (nationalityId != null) 'nationalityID': nationalityId,		};
	}
}
