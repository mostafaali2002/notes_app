class NoteModel {
  String? title;
  String? subTitle;
  final String date;
  final int color;

  NoteModel({
    required this.date,
    this.subTitle,
    this.title,
    required this.color,
  });
}
