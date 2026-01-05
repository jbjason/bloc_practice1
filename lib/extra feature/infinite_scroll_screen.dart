import 'package:bloc_practice1/provider_structure/core/base/base_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final _controller = ScrollController();
  final List<String> _items = List.generate(20, (i) => "Item $i");
  bool _isDataEnded = false;

  @override
  void initState() {
    super.initState();
    _listener();
    _controller.addListener(_listener);
  }

  void _listener() async {
    if(!_controller.hasClients) return;
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      _fetchData();
    }
  }

  Future<void> _fetchData() async {
    Logger().d(
        "https://jsonplaceholder.typicode.com/posts?_limit=10&_page=${(_items.length / 10) + 1}");
    final reuslt = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts?_limit=10&_page=${(_items.length / 10) + 1}");
    Logger().i(reuslt.data);
    if (reuslt.data == null || (reuslt.data as List).length < 10) {
      _isDataEnded = true;
    }
    _items.addAll(
      (reuslt.data as List).map((e) => e['id'].toString()).toList(),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinite Scroll"),
      ),
      body: ListView.builder(
          controller: _controller,
          itemCount: _items.length + 1,
          itemBuilder: (context, i) {
            if (i < _items.length) {
              return ListTile(title: Text(_items[i]));
            } else if (_isDataEnded) {
              return Center(child: Text("No more data!"));
            } else {
              return Center(child: const CircularProgressIndicator());
            }
          }),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }
}
