class News{
  String _title;
  String _message;

  News(this._title, this.:message);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get message => _message;

  set message(String value) {
    _message = value;
  }

}