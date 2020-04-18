class News{
  String _title;
  String _message;


  News(this._title, this._message);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get message => _message;

  set message(String value) {
    _message = value;
  }

  @override
  String toString() {
    return 'News{_title: $_title, _message: $_message}';
  }

}