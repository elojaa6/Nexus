import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexo/domain/entities/link.dart';

part 'link_state.freezed.dart';

@freezed
abstract class LinkState with _$LinkState {
  const factory LinkState.initial() = _Initial;
  const factory LinkState.loading() = _Loading;
  const factory LinkState.loaded({required List<Link> links}) = _Loaded;
  const factory LinkState.error({required String message}) = _Error;
}
