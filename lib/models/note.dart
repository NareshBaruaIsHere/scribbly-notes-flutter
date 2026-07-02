import 'package:cloud_firestore/cloud_firestore.dart';

/// Represents a single note stored in Cloud Firestore.
class Note {
  final String? id;
  final String title;
  final String description;
  final DateTime createdAt;

  Note({
    this.id,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  /// Creates a [Note] from a Firestore document snapshot.
  factory Note.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Note(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  /// Converts this [Note] to a Firestore-compatible map.
  Map<String, dynamic> toFirestore() {
    return {
      'title': title,
      'description': description,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }
}
