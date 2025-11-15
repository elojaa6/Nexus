import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';

@freezed
class Link with _$Link {
  const factory Link({
    int? id,
    required String title,
    required String url,
    required int order,
  }) = _Link;
}
