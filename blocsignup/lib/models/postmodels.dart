// ignore_for_file: unnecessary_new, unnecessary_this, prefer_collection_literals, camel_case_types

class postmodel {
  int ?userId;
  int ?id;
  String ?title;
  bool ?completed;

  postmodel({this.userId, this.id, this.title, this.completed});

  postmodel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}