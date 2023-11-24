class Tasks {
  int index;
  String title;
  String description;
  bool isDone;

  get _title => title;

  get _description => description;

  Tasks(
      {this.index = 1,
      required this.title,
      required this.description,
      this.isDone = false});
}
