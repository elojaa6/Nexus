import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexo/domain/entities/link.dart';

part 'link_event.freezed.dart';

@freezed
abstract class LinkEvent with _$LinkEvent {
  const factory LinkEvent.loadLinks() = _LoadLinks;
  const factory LinkEvent.addLink(String title, String url) = _AddLink;
  const factory LinkEvent.updateLink(Link link) = _UpdateLink;
  const factory LinkEvent.deleteLink(int id) = _DeleteLink;
  const factory LinkEvent.reorderLinks(List<Link> links) = _ReorderLinks;
}
