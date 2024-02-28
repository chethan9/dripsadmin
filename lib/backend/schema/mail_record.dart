import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MailRecord extends FirestoreRecord {
  MailRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "to" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "template" field.
  TemplateMainStruct? _template;
  TemplateMainStruct get template => _template ?? TemplateMainStruct();
  bool hasTemplate() => _template != null;

  // "delivery" field.
  MessageDeliveryStruct? _delivery;
  MessageDeliveryStruct get delivery => _delivery ?? MessageDeliveryStruct();
  bool hasDelivery() => _delivery != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "cc" field.
  List<String>? _cc;
  List<String> get cc => _cc ?? const [];
  bool hasCc() => _cc != null;

  void _initializeFields() {
    _to = snapshotData['to'] as String?;
    _template = TemplateMainStruct.maybeFromMap(snapshotData['template']);
    _delivery = MessageDeliveryStruct.maybeFromMap(snapshotData['delivery']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _cc = getDataList(snapshotData['cc']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mail');

  static Stream<MailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MailRecord.fromSnapshot(s));

  static Future<MailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MailRecord.fromSnapshot(s));

  static MailRecord fromSnapshot(DocumentSnapshot snapshot) => MailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMailRecordData({
  String? to,
  TemplateMainStruct? template,
  MessageDeliveryStruct? delivery,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'to': to,
      'template': TemplateMainStruct().toMap(),
      'delivery': MessageDeliveryStruct().toMap(),
      'createdAt': createdAt,
    }.withoutNulls,
  );

  // Handle nested data for "template" field.
  addTemplateMainStructData(firestoreData, template, 'template');

  // Handle nested data for "delivery" field.
  addMessageDeliveryStructData(firestoreData, delivery, 'delivery');

  return firestoreData;
}

class MailRecordDocumentEquality implements Equality<MailRecord> {
  const MailRecordDocumentEquality();

  @override
  bool equals(MailRecord? e1, MailRecord? e2) {
    const listEquality = ListEquality();
    return e1?.to == e2?.to &&
        e1?.template == e2?.template &&
        e1?.delivery == e2?.delivery &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.cc, e2?.cc);
  }

  @override
  int hash(MailRecord? e) => const ListEquality()
      .hash([e?.to, e?.template, e?.delivery, e?.createdAt, e?.cc]);

  @override
  bool isValidKey(Object? o) => o is MailRecord;
}
