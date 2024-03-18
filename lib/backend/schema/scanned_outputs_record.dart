import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ScannedOutputsRecord extends FirestoreRecord {
  ScannedOutputsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "meal" field.
  String? _meal;
  String get meal => _meal ?? '';
  bool hasMeal() => _meal != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "authenticated" field.
  String? _authenticated;
  String get authenticated => _authenticated ?? '';
  bool hasAuthenticated() => _authenticated != null;

  void _initializeFields() {
    _meal = snapshotData['meal'] as String?;
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _authenticated = snapshotData['authenticated'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scanned_outputs');

  static Stream<ScannedOutputsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScannedOutputsRecord.fromSnapshot(s));

  static Future<ScannedOutputsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScannedOutputsRecord.fromSnapshot(s));

  static ScannedOutputsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScannedOutputsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScannedOutputsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScannedOutputsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScannedOutputsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScannedOutputsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScannedOutputsRecordData({
  String? meal,
  DateTime? timeStamp,
  String? uid,
  String? authenticated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meal': meal,
      'timeStamp': timeStamp,
      'uid': uid,
      'authenticated': authenticated,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScannedOutputsRecordDocumentEquality
    implements Equality<ScannedOutputsRecord> {
  const ScannedOutputsRecordDocumentEquality();

  @override
  bool equals(ScannedOutputsRecord? e1, ScannedOutputsRecord? e2) {
    return e1?.meal == e2?.meal &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.uid == e2?.uid &&
        e1?.authenticated == e2?.authenticated;
  }

  @override
  int hash(ScannedOutputsRecord? e) => const ListEquality()
      .hash([e?.meal, e?.timeStamp, e?.uid, e?.authenticated]);

  @override
  bool isValidKey(Object? o) => o is ScannedOutputsRecord;
}
