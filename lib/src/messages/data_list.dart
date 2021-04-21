part of '../../messages.dart';

class DataList<T> {
  final List<T> data;
  final bool hasMore;
  final String url;

  DataList({
    required this.data,
    required this.hasMore,
    required this.url,
  });
}
