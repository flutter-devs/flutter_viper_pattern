/// userId : 1
/// id : 1
/// title : "delectus aut autem"
/// completed : false

class RestResponseModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  RestResponseModel({
      this.userId, 
      this.id, 
      this.title, 
      this.completed});

  RestResponseModel.fromJson(dynamic json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    completed = json["completed"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = userId;
    map["id"] = id;
    map["title"] = title;
    map["completed"] = completed;
    return map;
  }

}