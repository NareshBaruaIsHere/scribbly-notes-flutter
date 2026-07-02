import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/note.dart';
import '../widgets/neumorphic_container.dart';
import '../theme/neumorphic_colors.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const NoteCard({
    super.key,
    required this.note,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.neumorphicColors;
    final dateFormat = DateFormat('MMM dd, yyyy – hh:mm a');

    return NeumorphicContainer(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      onTap: onEdit,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            note.title.isNotEmpty ? note.title : 'Untitled',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: colors.text,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),

          // Description
          Text(
            note.description,
            style: TextStyle(
              fontSize: 14,
              color: colors.text.withOpacity(0.8),
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),

          // Bottom row: date + action buttons
          Row(
            children: [
              // Date
              Icon(
                Icons.access_time_rounded,
                size: 14,
                color: colors.text.withOpacity(0.5),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  dateFormat.format(note.createdAt),
                  style: TextStyle(
                    fontSize: 12,
                    color: colors.text.withOpacity(0.5),
                  ),
                ),
              ),

              // Edit button
              IconButton(
                onPressed: onEdit,
                icon: Icon(
                  Icons.edit_outlined,
                  size: 20,
                  color: colors.text,
                ),
                tooltip: 'Edit note',
                visualDensity: VisualDensity.compact,
              ),

              // Delete button
              IconButton(
                onPressed: onDelete,
                icon: Icon(
                  Icons.delete_outline_rounded,
                  size: 20,
                  color: Colors.redAccent,
                ),
                tooltip: 'Delete note',
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
