import 'package:flutter/material.dart';
import 'package:news_api/data/api/api_service.dart';
import 'package:news_api/data/model/article.dart';

class ArticleListPage extends StatefulWidget {
  @override
  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  Future<ArticlesResult> _article;

  @override
  void initState() {
    _article = ApiService().topHeadlines();
    super.initState();
  }

  Widget _buildList(BuildContext context) {}

  Widget _buildAndroid(BuildContext context) {}

  Widget _buildIos(BuildContext context) {}

  @override
  Widget build(BuildContext context) {}
}
