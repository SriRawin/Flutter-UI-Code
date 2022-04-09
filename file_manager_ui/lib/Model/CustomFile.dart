import 'package:file_manager_ui/Utils/constants.dart';

class CustomFile {
  final String name;
  final String size;
  final String date;
  final FileType type;
  CustomFile({
    required this.size,
    required this.name,
    required this.date,
    required this.type,
  });
}
