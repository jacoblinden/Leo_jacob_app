import 'package:g10project/Member.dart';

import 'News.dart';
class Family{
  String _name;
  List <Member> _members = [];
  List <News> _news = [];

  Family(String name,Member member){
    this._name =  name;
   _members.add(member);

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