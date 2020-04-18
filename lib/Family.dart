import 'Member.dart';
import 'News.dart';
class Family{
  String _name;
  List <Member> _members = [];
  List <News> _news = [];

  Family(String name,Member member){
    this._name =  name;
    _members.add(member);
    _news.add(new News ("Test","walla"));
    _news.add(new News ("Tesft","walla"));
    _news.add(new News ("Te2st","walla"));
    _news.add(new News ("Tesvt","walla"));
    _news.add(new News ("Tevrdfsqt","walla"));
    _news.add(new News ("Teqwfgst","walla"));
    _news.add(new News ("Test","walla"));
    _news.add(new News ("Tesct","walla"));
    print(_news);

  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  createNews(String title, String message){
  _news.add(new News(title, message));
}

  List<Member> get members => _members;

  set members(List<Member> value) {
    _members = value;
  }

  List<News> get news => _news;

  set news(List<News> value) {
    _news = value;
  }
}