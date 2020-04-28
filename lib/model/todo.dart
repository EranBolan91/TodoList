class Todo{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority, [this._description]);
  Todo.withId(this._id, this._title, this._date, this._priority, [this._description]);

  int get id=> _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  set title(String newTitle){
    if (newTitle.length <= 255){
      _title = newTitle;
    }
  }

  set description(String newDescription){
    if (newDescription.length <= 255){
      _description = newDescription;
    }
  } 

    set priority(int newPriority){
    if (newPriority >= 1 && newPriority <= 3 ){
      _priority = newPriority;
    }
  }  

  set date(String newDate){
    _date = newDate;
  }
  
  Map <String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map["priority"] = _priority;
    map["date"] = _date;
    if(_id != null){
      map["id"] = _id;
    }
    return map;
  }

  Todo.fromObject(dynamic obj){
    this._id = obj["id"];
    this._title = obj["title"];
    this._description = obj["description"];
    this._priority = obj["priority"];
    this._date = obj["date"];
  }

}