import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note.dart';

/// Service class that encapsulates all Firestore CRUD operations for notes.
///
/// This keeps the Firestore logic separate from the UI layer.
class FirestoreService {
  final CollectionReference _notesCollection =
      FirebaseFirestore.instance.collection('notes');

  /// Returns a real-time stream of all notes, ordered by creation date
  /// (newest first).
  Stream<List<Note>> getNotesStream() {
    return _notesCollection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Note.fromFirestore(doc)).toList();
    });
  }

  /// Adds a new note to Firestore.
  Future<void> addNote(String title, String description) async {
    await _notesCollection.add({
      'title': title,
      'description': description,
      'createdAt': Timestamp.now(),
    });
  }

  /// Updates an existing note in Firestore by its document [id].
  Future<void> updateNote(
      String id, String title, String description) async {
    await _notesCollection.doc(id).update({
      'title': title,
      'description': description,
    });
  }

  /// Deletes a note from Firestore by its document [id].
  Future<void> deleteNote(String id) async {
    await _notesCollection.doc(id).delete();
  }
}
