// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'integration.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ManualJsonCollectionReference
    implements
        ManualJsonQuery,
        FirestoreCollectionReference<ManualJsonQuerySnapshot> {
  factory ManualJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ManualJsonCollectionReference;

  static ManualJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ManualJson.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ManualJson value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ManualJson> get reference;

  @override
  ManualJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ManualJsonDocumentReference> add(ManualJson value);
}

class _$ManualJsonCollectionReference extends _$ManualJsonQuery
    implements ManualJsonCollectionReference {
  factory _$ManualJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ManualJsonCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: ManualJsonCollectionReference.fromFirestore,
            toFirestore: ManualJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$ManualJsonCollectionReference._(
    CollectionReference<ManualJson> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<ManualJson> get reference =>
      super.reference as CollectionReference<ManualJson>;

  @override
  ManualJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ManualJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ManualJsonDocumentReference> add(ManualJson value) {
    return reference.add(value).then((ref) => ManualJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ManualJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ManualJsonDocumentReference
    extends FirestoreDocumentReference<ManualJsonDocumentSnapshot> {
  factory ManualJsonDocumentReference(DocumentReference<ManualJson> reference) =
      _$ManualJsonDocumentReference;

  DocumentReference<ManualJson> get reference;

  /// A reference to the [ManualJsonCollectionReference] containing this document.
  ManualJsonCollectionReference get parent {
    return _$ManualJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<ManualJsonDocumentSnapshot> snapshots();

  @override
  Future<ManualJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String value,
  });

  Future<void> set(ManualJson value);
}

class _$ManualJsonDocumentReference
    extends FirestoreDocumentReference<ManualJsonDocumentSnapshot>
    implements ManualJsonDocumentReference {
  _$ManualJsonDocumentReference(this.reference);

  @override
  final DocumentReference<ManualJson> reference;

  /// A reference to the [ManualJsonCollectionReference] containing this document.
  ManualJsonCollectionReference get parent {
    return _$ManualJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<ManualJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return ManualJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<ManualJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return ManualJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? value = _sentinel,
  }) async {
    final json = {
      if (value != _sentinel) "value": value as String,
    };

    return reference.update(json);
  }

  Future<void> set(ManualJson value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is ManualJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class ManualJsonDocumentSnapshot extends FirestoreDocumentSnapshot {
  ManualJsonDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<ManualJson> snapshot;

  @override
  ManualJsonDocumentReference get reference {
    return ManualJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ManualJson? data;
}

abstract class ManualJsonQuery
    implements QueryReference<ManualJsonQuerySnapshot> {
  @override
  ManualJsonQuery limit(int limit);

  @override
  ManualJsonQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ManualJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ManualJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ManualJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ManualJsonQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  ManualJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  });

  ManualJsonQuery orderByValue({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$ManualJsonQuery extends QueryReference<ManualJsonQuerySnapshot>
    implements ManualJsonQuery {
  _$ManualJsonQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<ManualJson> reference;

  ManualJsonQuerySnapshot _decodeSnapshot(
    QuerySnapshot<ManualJson> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return ManualJsonQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<ManualJsonDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: ManualJsonDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return ManualJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<ManualJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<ManualJsonQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  ManualJsonQuery limit(int limit) {
    return _$ManualJsonQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  ManualJsonQuery limitToLast(int limit) {
    return _$ManualJsonQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  ManualJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ManualJsonQuery(query, _collection);
  }

  ManualJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ManualJsonQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  ManualJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ManualJsonQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ManualJsonQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ManualJsonQuery(
      reference.where(
        "value",
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  ManualJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ManualJsonQuery(query, _collection);
  }

  ManualJsonQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ManualJsonDocumentSnapshot? startAtDocument,
    ManualJsonDocumentSnapshot? endAtDocument,
    ManualJsonDocumentSnapshot? endBeforeDocument,
    ManualJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy("value", descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$ManualJsonQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$ManualJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ManualJsonQuerySnapshot
    extends FirestoreQuerySnapshot<ManualJsonQueryDocumentSnapshot> {
  ManualJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<ManualJson> snapshot;

  @override
  final List<ManualJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ManualJsonDocumentSnapshot>> docChanges;
}

class ManualJsonQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements ManualJsonDocumentSnapshot {
  ManualJsonQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<ManualJson> snapshot;

  @override
  ManualJsonDocumentReference get reference {
    return ManualJsonDocumentReference(snapshot.reference);
  }

  @override
  final ManualJson data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AdvancedJsonCollectionReference
    implements
        AdvancedJsonQuery,
        FirestoreCollectionReference<AdvancedJsonQuerySnapshot> {
  factory AdvancedJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$AdvancedJsonCollectionReference;

  static AdvancedJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$AdvancedJsonFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    AdvancedJson value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<AdvancedJson> get reference;

  @override
  AdvancedJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AdvancedJsonDocumentReference> add(AdvancedJson value);
}

class _$AdvancedJsonCollectionReference extends _$AdvancedJsonQuery
    implements AdvancedJsonCollectionReference {
  factory _$AdvancedJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$AdvancedJsonCollectionReference._(
      firestore.collection('firestore-example-app/test/advanced').withConverter(
            fromFirestore: AdvancedJsonCollectionReference.fromFirestore,
            toFirestore: AdvancedJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$AdvancedJsonCollectionReference._(
    CollectionReference<AdvancedJson> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<AdvancedJson> get reference =>
      super.reference as CollectionReference<AdvancedJson>;

  @override
  AdvancedJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AdvancedJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AdvancedJsonDocumentReference> add(AdvancedJson value) {
    return reference
        .add(value)
        .then((ref) => AdvancedJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AdvancedJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AdvancedJsonDocumentReference
    extends FirestoreDocumentReference<AdvancedJsonDocumentSnapshot> {
  factory AdvancedJsonDocumentReference(
          DocumentReference<AdvancedJson> reference) =
      _$AdvancedJsonDocumentReference;

  DocumentReference<AdvancedJson> get reference;

  /// A reference to the [AdvancedJsonCollectionReference] containing this document.
  AdvancedJsonCollectionReference get parent {
    return _$AdvancedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<AdvancedJsonDocumentSnapshot> snapshots();

  @override
  Future<AdvancedJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String? firstName,
    String? lastName,
    int hashCode,
  });

  Future<void> set(AdvancedJson value);
}

class _$AdvancedJsonDocumentReference
    extends FirestoreDocumentReference<AdvancedJsonDocumentSnapshot>
    implements AdvancedJsonDocumentReference {
  _$AdvancedJsonDocumentReference(this.reference);

  @override
  final DocumentReference<AdvancedJson> reference;

  /// A reference to the [AdvancedJsonCollectionReference] containing this document.
  AdvancedJsonCollectionReference get parent {
    return _$AdvancedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<AdvancedJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return AdvancedJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<AdvancedJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return AdvancedJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? firstName = _sentinel,
    Object? lastName = _sentinel,
    Object? hashCode = _sentinel,
  }) async {
    final json = {
      if (firstName != _sentinel) "firstName": firstName as String?,
      if (lastName != _sentinel) "lastName": lastName as String?,
      if (hashCode != _sentinel) "hashCode": hashCode as int,
    };

    return reference.update(json);
  }

  Future<void> set(AdvancedJson value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is AdvancedJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class AdvancedJsonDocumentSnapshot extends FirestoreDocumentSnapshot {
  AdvancedJsonDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<AdvancedJson> snapshot;

  @override
  AdvancedJsonDocumentReference get reference {
    return AdvancedJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AdvancedJson? data;
}

abstract class AdvancedJsonQuery
    implements QueryReference<AdvancedJsonQuerySnapshot> {
  @override
  AdvancedJsonQuery limit(int limit);

  @override
  AdvancedJsonQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AdvancedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AdvancedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AdvancedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AdvancedJsonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  AdvancedJsonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  AdvancedJsonQuery whereHashCode({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  AdvancedJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  AdvancedJsonQuery orderByFirstName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  AdvancedJsonQuery orderByLastName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  AdvancedJsonQuery orderByHashCode({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$AdvancedJsonQuery extends QueryReference<AdvancedJsonQuerySnapshot>
    implements AdvancedJsonQuery {
  _$AdvancedJsonQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<AdvancedJson> reference;

  AdvancedJsonQuerySnapshot _decodeSnapshot(
    QuerySnapshot<AdvancedJson> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return AdvancedJsonQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<AdvancedJsonDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: AdvancedJsonDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return AdvancedJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<AdvancedJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<AdvancedJsonQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  AdvancedJsonQuery limit(int limit) {
    return _$AdvancedJsonQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  AdvancedJsonQuery limitToLast(int limit) {
    return _$AdvancedJsonQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  AdvancedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$AdvancedJsonQuery(query, _collection);
  }

  AdvancedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AdvancedJsonQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  AdvancedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AdvancedJsonQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  AdvancedJsonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$AdvancedJsonQuery(
      reference.where(
        _$AdvancedJsonFieldMap["firstName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  AdvancedJsonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$AdvancedJsonQuery(
      reference.where(
        _$AdvancedJsonFieldMap["lastName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  AdvancedJsonQuery whereHashCode({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$AdvancedJsonQuery(
      reference.where(
        _$AdvancedJsonFieldMap["hashCode"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  AdvancedJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$AdvancedJsonQuery(query, _collection);
  }

  AdvancedJsonQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$AdvancedJsonFieldMap["firstName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$AdvancedJsonQuery(query, _collection);
  }

  AdvancedJsonQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$AdvancedJsonFieldMap["lastName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$AdvancedJsonQuery(query, _collection);
  }

  AdvancedJsonQuery orderByHashCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AdvancedJsonDocumentSnapshot? startAtDocument,
    AdvancedJsonDocumentSnapshot? endAtDocument,
    AdvancedJsonDocumentSnapshot? endBeforeDocument,
    AdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$AdvancedJsonFieldMap["hashCode"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$AdvancedJsonQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$AdvancedJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AdvancedJsonQuerySnapshot
    extends FirestoreQuerySnapshot<AdvancedJsonQueryDocumentSnapshot> {
  AdvancedJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<AdvancedJson> snapshot;

  @override
  final List<AdvancedJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AdvancedJsonDocumentSnapshot>> docChanges;
}

class AdvancedJsonQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements AdvancedJsonDocumentSnapshot {
  AdvancedJsonQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<AdvancedJson> snapshot;

  @override
  AdvancedJsonDocumentReference get reference {
    return AdvancedJsonDocumentReference(snapshot.reference);
  }

  @override
  final AdvancedJson data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class _PrivateAdvancedJsonCollectionReference
    implements
        _PrivateAdvancedJsonQuery,
        FirestoreCollectionReference<_PrivateAdvancedJsonQuerySnapshot> {
  factory _PrivateAdvancedJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$_PrivateAdvancedJsonCollectionReference;

  static _PrivateAdvancedJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$PrivateAdvancedJsonFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    _PrivateAdvancedJson value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<_PrivateAdvancedJson> get reference;

  @override
  _PrivateAdvancedJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<_PrivateAdvancedJsonDocumentReference> add(_PrivateAdvancedJson value);
}

class _$_PrivateAdvancedJsonCollectionReference
    extends _$_PrivateAdvancedJsonQuery
    implements _PrivateAdvancedJsonCollectionReference {
  factory _$_PrivateAdvancedJsonCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$_PrivateAdvancedJsonCollectionReference._(
      firestore
          .collection('firestore-example-app/test/private-advanced')
          .withConverter(
            fromFirestore:
                _PrivateAdvancedJsonCollectionReference.fromFirestore,
            toFirestore: _PrivateAdvancedJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$_PrivateAdvancedJsonCollectionReference._(
    CollectionReference<_PrivateAdvancedJson> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<_PrivateAdvancedJson> get reference =>
      super.reference as CollectionReference<_PrivateAdvancedJson>;

  @override
  _PrivateAdvancedJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return _PrivateAdvancedJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<_PrivateAdvancedJsonDocumentReference> add(
      _PrivateAdvancedJson value) {
    return reference
        .add(value)
        .then((ref) => _PrivateAdvancedJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$_PrivateAdvancedJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class _PrivateAdvancedJsonDocumentReference
    extends FirestoreDocumentReference<_PrivateAdvancedJsonDocumentSnapshot> {
  factory _PrivateAdvancedJsonDocumentReference(
          DocumentReference<_PrivateAdvancedJson> reference) =
      _$_PrivateAdvancedJsonDocumentReference;

  DocumentReference<_PrivateAdvancedJson> get reference;

  /// A reference to the [_PrivateAdvancedJsonCollectionReference] containing this document.
  _PrivateAdvancedJsonCollectionReference get parent {
    return _$_PrivateAdvancedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<_PrivateAdvancedJsonDocumentSnapshot> snapshots();

  @override
  Future<_PrivateAdvancedJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String? firstName,
    String? lastName,
    int hashCode,
  });

  Future<void> set(_PrivateAdvancedJson value);
}

class _$_PrivateAdvancedJsonDocumentReference
    extends FirestoreDocumentReference<_PrivateAdvancedJsonDocumentSnapshot>
    implements _PrivateAdvancedJsonDocumentReference {
  _$_PrivateAdvancedJsonDocumentReference(this.reference);

  @override
  final DocumentReference<_PrivateAdvancedJson> reference;

  /// A reference to the [_PrivateAdvancedJsonCollectionReference] containing this document.
  _PrivateAdvancedJsonCollectionReference get parent {
    return _$_PrivateAdvancedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<_PrivateAdvancedJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return _PrivateAdvancedJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<_PrivateAdvancedJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return _PrivateAdvancedJsonDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? firstName = _sentinel,
    Object? lastName = _sentinel,
    Object? hashCode = _sentinel,
  }) async {
    final json = {
      if (firstName != _sentinel) "firstName": firstName as String?,
      if (lastName != _sentinel) "lastName": lastName as String?,
      if (hashCode != _sentinel) "hashCode": hashCode as int,
    };

    return reference.update(json);
  }

  Future<void> set(_PrivateAdvancedJson value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is _PrivateAdvancedJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class _PrivateAdvancedJsonDocumentSnapshot extends FirestoreDocumentSnapshot {
  _PrivateAdvancedJsonDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<_PrivateAdvancedJson> snapshot;

  @override
  _PrivateAdvancedJsonDocumentReference get reference {
    return _PrivateAdvancedJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final _PrivateAdvancedJson? data;
}

abstract class _PrivateAdvancedJsonQuery
    implements QueryReference<_PrivateAdvancedJsonQuerySnapshot> {
  @override
  _PrivateAdvancedJsonQuery limit(int limit);

  @override
  _PrivateAdvancedJsonQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  _PrivateAdvancedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  _PrivateAdvancedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  _PrivateAdvancedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  _PrivateAdvancedJsonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  _PrivateAdvancedJsonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  _PrivateAdvancedJsonQuery whereHashCode({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  _PrivateAdvancedJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  _PrivateAdvancedJsonQuery orderByFirstName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  _PrivateAdvancedJsonQuery orderByLastName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  });

  _PrivateAdvancedJsonQuery orderByHashCode({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$_PrivateAdvancedJsonQuery
    extends QueryReference<_PrivateAdvancedJsonQuerySnapshot>
    implements _PrivateAdvancedJsonQuery {
  _$_PrivateAdvancedJsonQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<_PrivateAdvancedJson> reference;

  _PrivateAdvancedJsonQuerySnapshot _decodeSnapshot(
    QuerySnapshot<_PrivateAdvancedJson> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return _PrivateAdvancedJsonQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<_PrivateAdvancedJsonDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: _PrivateAdvancedJsonDocumentSnapshot._(
            change.doc, change.doc.data()),
      );
    }).toList();

    return _PrivateAdvancedJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<_PrivateAdvancedJsonQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<_PrivateAdvancedJsonQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  _PrivateAdvancedJsonQuery limit(int limit) {
    return _$_PrivateAdvancedJsonQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  _PrivateAdvancedJsonQuery limitToLast(int limit) {
    return _$_PrivateAdvancedJsonQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$_PrivateAdvancedJsonQuery(query, _collection);
  }

  _PrivateAdvancedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$_PrivateAdvancedJsonQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$_PrivateAdvancedJsonQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$_PrivateAdvancedJsonQuery(
      reference.where(
        _$PrivateAdvancedJsonFieldMap["firstName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$_PrivateAdvancedJsonQuery(
      reference.where(
        _$PrivateAdvancedJsonFieldMap["lastName"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery whereHashCode({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$_PrivateAdvancedJsonQuery(
      reference.where(
        _$PrivateAdvancedJsonFieldMap["hashCode"]!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  _PrivateAdvancedJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$_PrivateAdvancedJsonQuery(query, _collection);
  }

  _PrivateAdvancedJsonQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PrivateAdvancedJsonFieldMap["firstName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$_PrivateAdvancedJsonQuery(query, _collection);
  }

  _PrivateAdvancedJsonQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PrivateAdvancedJsonFieldMap["lastName"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$_PrivateAdvancedJsonQuery(query, _collection);
  }

  _PrivateAdvancedJsonQuery orderByHashCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _PrivateAdvancedJsonDocumentSnapshot? startAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endAtDocument,
    _PrivateAdvancedJsonDocumentSnapshot? endBeforeDocument,
    _PrivateAdvancedJsonDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(_$PrivateAdvancedJsonFieldMap["hashCode"]!,
        descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$_PrivateAdvancedJsonQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$_PrivateAdvancedJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class _PrivateAdvancedJsonQuerySnapshot
    extends FirestoreQuerySnapshot<_PrivateAdvancedJsonQueryDocumentSnapshot> {
  _PrivateAdvancedJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<_PrivateAdvancedJson> snapshot;

  @override
  final List<_PrivateAdvancedJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<_PrivateAdvancedJsonDocumentSnapshot>>
      docChanges;
}

class _PrivateAdvancedJsonQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot
    implements _PrivateAdvancedJsonDocumentSnapshot {
  _PrivateAdvancedJsonQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<_PrivateAdvancedJson> snapshot;

  @override
  _PrivateAdvancedJsonDocumentReference get reference {
    return _PrivateAdvancedJsonDocumentReference(snapshot.reference);
  }

  @override
  final _PrivateAdvancedJson data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class EmptyModelCollectionReference
    implements
        EmptyModelQuery,
        FirestoreCollectionReference<EmptyModelQuerySnapshot> {
  factory EmptyModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$EmptyModelCollectionReference;

  static EmptyModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return EmptyModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    EmptyModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<EmptyModel> get reference;

  @override
  EmptyModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<EmptyModelDocumentReference> add(EmptyModel value);
}

class _$EmptyModelCollectionReference extends _$EmptyModelQuery
    implements EmptyModelCollectionReference {
  factory _$EmptyModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$EmptyModelCollectionReference._(
      firestore.collection('firestore-example-app/test/config').withConverter(
            fromFirestore: EmptyModelCollectionReference.fromFirestore,
            toFirestore: EmptyModelCollectionReference.toFirestore,
          ),
    );
  }

  _$EmptyModelCollectionReference._(
    CollectionReference<EmptyModel> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<EmptyModel> get reference =>
      super.reference as CollectionReference<EmptyModel>;

  @override
  EmptyModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return EmptyModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<EmptyModelDocumentReference> add(EmptyModel value) {
    return reference.add(value).then((ref) => EmptyModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModelDocumentSnapshot> {
  factory EmptyModelDocumentReference(DocumentReference<EmptyModel> reference) =
      _$EmptyModelDocumentReference;

  DocumentReference<EmptyModel> get reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots();

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> set(EmptyModel value);
}

class _$EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModelDocumentSnapshot>
    implements EmptyModelDocumentReference {
  _$EmptyModelDocumentReference(this.reference);

  @override
  final DocumentReference<EmptyModel> reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return EmptyModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return EmptyModelDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> set(EmptyModel value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is EmptyModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class EmptyModelDocumentSnapshot extends FirestoreDocumentSnapshot {
  EmptyModelDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<EmptyModel> snapshot;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final EmptyModel? data;
}

abstract class EmptyModelQuery
    implements QueryReference<EmptyModelQuerySnapshot> {
  @override
  EmptyModelQuery limit(int limit);

  @override
  EmptyModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  EmptyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  EmptyModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  EmptyModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });
}

class _$EmptyModelQuery extends QueryReference<EmptyModelQuerySnapshot>
    implements EmptyModelQuery {
  _$EmptyModelQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<EmptyModel> reference;

  EmptyModelQuerySnapshot _decodeSnapshot(
    QuerySnapshot<EmptyModel> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return EmptyModelQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<EmptyModelDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: EmptyModelDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return EmptyModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<EmptyModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<EmptyModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  EmptyModelQuery limit(int limit) {
    return _$EmptyModelQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  EmptyModelQuery limitToLast(int limit) {
    return _$EmptyModelQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  EmptyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(fieldPath, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$EmptyModelQuery(query, _collection);
  }

  EmptyModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EmptyModelQuery(
      reference.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      _collection,
    );
  }

  EmptyModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$EmptyModelQuery(
      reference.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy(FieldPath.documentId, descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$EmptyModelQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class EmptyModelQuerySnapshot
    extends FirestoreQuerySnapshot<EmptyModelQueryDocumentSnapshot> {
  EmptyModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<EmptyModel> snapshot;

  @override
  final List<EmptyModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<EmptyModelDocumentSnapshot>> docChanges;
}

class EmptyModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements EmptyModelDocumentSnapshot {
  EmptyModelQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<EmptyModel> snapshot;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(snapshot.reference);
  }

  @override
  final EmptyModel data;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmptyModel _$EmptyModelFromJson(Map<String, dynamic> json) => EmptyModel();

const _$EmptyModelFieldMap = <String, String>{};

Map<String, dynamic> _$EmptyModelToJson(EmptyModel instance) =>
    <String, dynamic>{};

AdvancedJson _$AdvancedJsonFromJson(Map<String, dynamic> json) => AdvancedJson(
      firstName: json['first_name'] as String?,
      lastName: json['LAST_NAME'] as String?,
    );

const _$AdvancedJsonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

Map<String, dynamic> _$AdvancedJsonToJson(AdvancedJson instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'LAST_NAME': instance.lastName,
    };

_PrivateAdvancedJson _$PrivateAdvancedJsonFromJson(Map<String, dynamic> json) =>
    _PrivateAdvancedJson(
      firstName: json['first_name'] as String?,
      lastName: json['LAST_NAME'] as String?,
    );

const _$PrivateAdvancedJsonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

Map<String, dynamic> _$PrivateAdvancedJsonToJson(
        _PrivateAdvancedJson instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'LAST_NAME': instance.lastName,
    };
