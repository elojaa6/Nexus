import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexo/domain/entities/link.dart';

part 'link_event.freezed.dart';

@freezed
class LinkEvent with _$LinkEvent {
  const factory LinkEvent.loadLinks() = _LoadLinks;
  const factory LinkEvent.addLink({required String title, required String url}) = _AddLink;
  const factory LinkEvent.updateLink({required Link link}) = _UpdateLink;
  const factory LinkEvent.deleteLink({required int id}) = _DeleteLink;

}
