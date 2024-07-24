import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Chapter {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  int? numberOfAyahs;
  String? revelationType;
  Chapter({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.numberOfAyahs,
    this.revelationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation': englishNameTranslation,
      'numberOfAyahs': numberOfAyahs,
      'revelationType': revelationType,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      number: map['number'] != null ? map['number'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      englishName: map['englishName'] != null ? map['englishName'] as String : null,
      englishNameTranslation: map['englishNameTranslation'] != null ? map['englishNameTranslation'] as String : null,
      numberOfAyahs: map['numberOfAyahs'] != null ? map['numberOfAyahs'] as int : null,
      revelationType: map['revelationType'] != null ? map['revelationType'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Chapter.fromJson(String source) => Chapter.fromMap(json.decode(source) as Map<String, dynamic>);
}
