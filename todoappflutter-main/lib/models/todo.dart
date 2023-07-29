class Todo {
  String title;
  bool isSelected;

  Todo({
    required this.title,
    required this.isSelected,
  });

  @override
  String toString() {
    return 'TODO: ($title $isSelected)';
  }
}
