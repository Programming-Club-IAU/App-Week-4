class Tasks {
  int index;
  String title;
  String description;
  bool isDone;

  void set Id(int id) {
    this.index = index;
  }

  int get Id {
    return index;
  }

  void set Title(String title) {
    this.title = title;
  }

  void set Description(String description) {
    this.description = description;
  }

  String get Description {
    return description;
  }

  Tasks(
      {this.index = 1,
      required this.title,
      required this.description,
      this.isDone = false});
}
