import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Quran {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  int? numberOfAyahs;
  List<Ayah>? ayahs;
  Quran({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.numberOfAyahs,
    this.ayahs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation': englishNameTranslation,
      'revelationType': revelationType,
      'numberOfAyahs': numberOfAyahs,
      'ayahs': ayahs?.map((x) => x.toMap()).toList(),
    };
  }

  factory Quran.fromMap(Map<String, dynamic> map) {
    return Quran(
      number: map['number'] != null ? map['number'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      englishName: map['englishName'] != null ? map['englishName'] as String : null,
      englishNameTranslation: map['englishNameTranslation'] != null ? map['englishNameTranslation'] as String : null,
      revelationType: map['revelationType'] != null ? map['revelationType'] as String : null,
      numberOfAyahs: map['numberOfAyahs'] != null ? map['numberOfAyahs'] as int : null,
      ayahs: map['ayahs'] != null
          ? List<Ayah>.from(
              (map['ayahs'] as List<dynamic>).map<Ayah?>(
                (x) => Ayah.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quran.fromJson(String source) => Quran.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Ayah {
  int? number;
  String? text;
  int? numberInSurah;
  bool? sajda;
  Ayah({
    this.number,
    this.text,
    this.numberInSurah,
    this.sajda,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'text': text,
      'numberInSurah': numberInSurah,
      'sajda': sajda,
    };
  }

  factory Ayah.fromMap(Map<String, dynamic> map) {
    return Ayah(
      number: map['number'] != null ? map['number'] as int : null,
      text: map['text'] != null ? map['text'] as String : null,
      numberInSurah: map['numberInSurah'] != null ? map['numberInSurah'] as int : null,
      sajda: map['sajda'] != null ? map['sajda'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ayah.fromJson(String source) => Ayah.fromMap(json.decode(source) as Map<String, dynamic>);
}
