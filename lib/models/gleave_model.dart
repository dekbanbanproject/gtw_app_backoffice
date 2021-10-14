import 'dart:convert';

class GleaveModel {
  final String LEAVE_YEAR_ID;
  final String LEAVE_BECAUSE;
  final String LEAVE_DATE_BEGIN;
  final String LEAVE_DATE_END;
  final String LEAVE_PERSON_FULLNAME;
  GleaveModel({
    required this.LEAVE_YEAR_ID,
    required this.LEAVE_BECAUSE,
    required this.LEAVE_DATE_BEGIN,
    required this.LEAVE_DATE_END,
    required this.LEAVE_PERSON_FULLNAME,
  });

  GleaveModel copyWith({
    String? LEAVE_YEAR_ID,
    String? LEAVE_BECAUSE,
    String? LEAVE_DATE_BEGIN,
    String? LEAVE_DATE_END,
    String? LEAVE_PERSON_FULLNAME,
  }) {
    return GleaveModel(
      LEAVE_YEAR_ID: LEAVE_YEAR_ID ?? this.LEAVE_YEAR_ID,
      LEAVE_BECAUSE: LEAVE_BECAUSE ?? this.LEAVE_BECAUSE,
      LEAVE_DATE_BEGIN: LEAVE_DATE_BEGIN ?? this.LEAVE_DATE_BEGIN,
      LEAVE_DATE_END: LEAVE_DATE_END ?? this.LEAVE_DATE_END,
      LEAVE_PERSON_FULLNAME: LEAVE_PERSON_FULLNAME ?? this.LEAVE_PERSON_FULLNAME,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'LEAVE_YEAR_ID': LEAVE_YEAR_ID,
      'LEAVE_BECAUSE': LEAVE_BECAUSE,
      'LEAVE_DATE_BEGIN': LEAVE_DATE_BEGIN,
      'LEAVE_DATE_END': LEAVE_DATE_END,
      'LEAVE_PERSON_FULLNAME': LEAVE_PERSON_FULLNAME,
    };
  }

  factory GleaveModel.fromMap(Map<String, dynamic> map) {
    return GleaveModel(
      LEAVE_YEAR_ID: map['LEAVE_YEAR_ID'] == null ? '' : map['LEAVE_YEAR_ID'],
      LEAVE_BECAUSE: map['LEAVE_BECAUSE'] == null ? '' :  map['LEAVE_BECAUSE'],
      LEAVE_DATE_BEGIN: map['LEAVE_DATE_BEGIN'] == null ? '' :  map['LEAVE_DATE_BEGIN'],
      LEAVE_DATE_END: map['LEAVE_DATE_END'] == null ? '' :  map['LEAVE_DATE_END'],
      LEAVE_PERSON_FULLNAME: map['LEAVE_PERSON_FULLNAME'] == null ? '' :  map['LEAVE_PERSON_FULLNAME'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GleaveModel.fromJson(String source) => GleaveModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GleaveModel(LEAVE_YEAR_ID: $LEAVE_YEAR_ID, LEAVE_BECAUSE: $LEAVE_BECAUSE, LEAVE_DATE_BEGIN: $LEAVE_DATE_BEGIN, LEAVE_DATE_END: $LEAVE_DATE_END,LEAVE_PERSON_FULLNAME:$LEAVE_PERSON_FULLNAME)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is GleaveModel &&
      other.LEAVE_YEAR_ID == LEAVE_YEAR_ID &&
      other.LEAVE_BECAUSE == LEAVE_BECAUSE &&
      other.LEAVE_DATE_BEGIN == LEAVE_DATE_BEGIN &&
      other.LEAVE_DATE_END == LEAVE_DATE_END &&
      other.LEAVE_PERSON_FULLNAME == LEAVE_PERSON_FULLNAME;
  }

  @override
  int get hashCode {
    return LEAVE_YEAR_ID.hashCode ^
      LEAVE_BECAUSE.hashCode ^
      LEAVE_DATE_BEGIN.hashCode ^
      LEAVE_DATE_END.hashCode ^
      LEAVE_PERSON_FULLNAME.hashCode;
  }
}
