import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplateRecord extends FirestoreRecord {
  TemplateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "html" field.
  String? _html;
  String get html => _html ?? '';
  bool hasHtml() => _html != null;

  void _initializeFields() {
    _subject = snapshotData['subject'] as String?;
    _html = snapshotData['html'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('template');

  static Stream<TemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplateRecord.fromSnapshot(s));

  static Future<TemplateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplateRecord.fromSnapshot(s));

  static TemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplateRecordData({
  String? subject,
  String? html,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'subject': subject,
      'html': html,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplateRecordDocumentEquality implements Equality<TemplateRecord> {
  const TemplateRecordDocumentEquality();

  @override
  bool equals(TemplateRecord? e1, TemplateRecord? e2) {
    return e1?.subject == e2?.subject && e1?.html == e2?.html;
  }

  @override
  int hash(TemplateRecord? e) =>
      const ListEquality().hash([e?.subject, e?.html]);

  @override
  bool isValidKey(Object? o) => o is TemplateRecord;
}
