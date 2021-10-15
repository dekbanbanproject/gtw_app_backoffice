import 'dart:convert';

class GleaveModel {
  final String ID;
  final String LEAVE_YEAR_ID;
  final String LEAVE_BECAUSE;
  final String LEAVE_DATE_BEGIN;
  final String LEAVE_DATE_END;
  final String LEAVE_PERSON_FULLNAME;
  final String LEADER_PERSON_ID;
  GleaveModel({
    required this.ID,
    required this.LEAVE_YEAR_ID,
    required this.LEAVE_BECAUSE,
    required this.LEAVE_DATE_BEGIN,
    required this.LEAVE_DATE_END,
    required this.LEAVE_PERSON_FULLNAME,
    required this.LEADER_PERSON_ID,
  });

  GleaveModel copyWith({
    String? ID,
    String? LEAVE_YEAR_ID,
    String? LEAVE_BECAUSE,
    String? LEAVE_DATE_BEGIN,
    String? LEAVE_DATE_END,
    String? LEAVE_PERSON_FULLNAME,
    String? LEADER_PERSON_ID,
  }) {
    return GleaveModel(
      ID: ID ?? this.ID,
      LEAVE_YEAR_ID: LEAVE_YEAR_ID ?? this.LEAVE_YEAR_ID,
      LEAVE_BECAUSE: LEAVE_BECAUSE ?? this.LEAVE_BECAUSE,
      LEAVE_DATE_BEGIN: LEAVE_DATE_BEGIN ?? this.LEAVE_DATE_BEGIN,
      LEAVE_DATE_END: LEAVE_DATE_END ?? this.LEAVE_DATE_END,
      LEAVE_PERSON_FULLNAME:
          LEAVE_PERSON_FULLNAME ?? this.LEAVE_PERSON_FULLNAME,
      LEADER_PERSON_ID: LEADER_PERSON_ID ?? this.LEADER_PERSON_ID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ID': ID,
      'LEAVE_YEAR_ID': LEAVE_YEAR_ID,
      'LEAVE_BECAUSE': LEAVE_BECAUSE,
      'LEAVE_DATE_BEGIN': LEAVE_DATE_BEGIN,
      'LEAVE_DATE_END': LEAVE_DATE_END,
      'LEAVE_PERSON_FULLNAME': LEAVE_PERSON_FULLNAME,
      'LEADER_PERSON_ID': LEADER_PERSON_ID,
    };
  }

  factory GleaveModel.fromMap(Map<String, dynamic> map) {
    return GleaveModel(
      ID: map['ID'] == null ? '' : map['ID'],
      LEAVE_YEAR_ID: map['LEAVE_YEAR_ID'] == null ? '' : map['LEAVE_YEAR_ID'],
      LEAVE_BECAUSE: map['LEAVE_BECAUSE'] == null ? '' : map['LEAVE_BECAUSE'],
      LEAVE_DATE_BEGIN:
          map['LEAVE_DATE_BEGIN'] == null ? '' : map['LEAVE_DATE_BEGIN'],
      LEAVE_DATE_END:
          map['LEAVE_DATE_END'] == null ? '' : map['LEAVE_DATE_END'],
      LEAVE_PERSON_FULLNAME: map['LEAVE_PERSON_FULLNAME'] == null
          ? ''
          : map['LEAVE_PERSON_FULLNAME'],
      LEADER_PERSON_ID: map['LEADER_PERSON_ID'] == null ? '' : map['LEADER_PERSON_ID'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GleaveModel.fromJson(String source) =>
      GleaveModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GleaveModel(ID:$ID,LEAVE_YEAR_ID: $LEAVE_YEAR_ID, LEAVE_BECAUSE: $LEAVE_BECAUSE, LEAVE_DATE_BEGIN: $LEAVE_DATE_BEGIN, LEAVE_DATE_END: $LEAVE_DATE_END,LEAVE_PERSON_FULLNAME:$LEAVE_PERSON_FULLNAME,LEADER_PERSON_ID:$LEADER_PERSON_ID,)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GleaveModel &&
        other.ID == ID &&
        other.LEAVE_YEAR_ID == LEAVE_YEAR_ID &&
        other.LEAVE_BECAUSE == LEAVE_BECAUSE &&
        other.LEAVE_DATE_BEGIN == LEAVE_DATE_BEGIN &&
        other.LEAVE_DATE_END == LEAVE_DATE_END &&
        other.LEAVE_PERSON_FULLNAME == LEAVE_PERSON_FULLNAME &&
        other.LEADER_PERSON_ID == LEADER_PERSON_ID;
  }

  @override
  int get hashCode {
    return ID.hashCode ^
        LEAVE_YEAR_ID.hashCode ^
        LEAVE_BECAUSE.hashCode ^
        LEAVE_DATE_BEGIN.hashCode ^
        LEAVE_DATE_END.hashCode ^
        LEAVE_PERSON_FULLNAME.hashCode ^
        LEADER_PERSON_ID.hashCode;
  }
}
