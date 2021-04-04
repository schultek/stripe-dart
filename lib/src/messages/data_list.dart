part of '../../messages.dart';

@jsonSerializable
@Json(caseStyle: CaseStyle.Snake)
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