// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LinkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLinks,
    required TResult Function(String title, String url) addLink,
    required TResult Function(Link link) updateLink,
    required TResult Function(int id) deleteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLinks,
    TResult? Function(String title, String url)? addLink,
    TResult? Function(Link link)? updateLink,
    TResult? Function(int id)? deleteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLinks,
    TResult Function(String title, String url)? addLink,
    TResult Function(Link link)? updateLink,
    TResult Function(int id)? deleteLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLinks value) loadLinks,
    required TResult Function(_AddLink value) addLink,
    required TResult Function(_UpdateLink value) updateLink,
    required TResult Function(_DeleteLink value) deleteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLinks value)? loadLinks,
    TResult? Function(_AddLink value)? addLink,
    TResult? Function(_UpdateLink value)? updateLink,
    TResult? Function(_DeleteLink value)? deleteLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLinks value)? loadLinks,
    TResult Function(_AddLink value)? addLink,
    TResult Function(_UpdateLink value)? updateLink,
    TResult Function(_DeleteLink value)? deleteLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkEventCopyWith<$Res> {
  factory $LinkEventCopyWith(LinkEvent value, $Res Function(LinkEvent) then) =
      _$LinkEventCopyWithImpl<$Res, LinkEvent>;
}

/// @nodoc
class _$LinkEventCopyWithImpl<$Res, $Val extends LinkEvent>
    implements $LinkEventCopyWith<$Res> {
  _$LinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadLinksImplCopyWith<$Res> {
  factory _$$LoadLinksImplCopyWith(
          _$LoadLinksImpl value, $Res Function(_$LoadLinksImpl) then) =
      __$$LoadLinksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadLinksImplCopyWithImpl<$Res>
    extends _$LinkEventCopyWithImpl<$Res, _$LoadLinksImpl>
    implements _$$LoadLinksImplCopyWith<$Res> {
  __$$LoadLinksImplCopyWithImpl(
      _$LoadLinksImpl _value, $Res Function(_$LoadLinksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadLinksImpl implements _LoadLinks {
  const _$LoadLinksImpl();

  @override
  String toString() {
    return 'LinkEvent.loadLinks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadLinksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLinks,
    required TResult Function(String title, String url) addLink,
    required TResult Function(Link link) updateLink,
    required TResult Function(int id) deleteLink,
  }) {
    return loadLinks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLinks,
    TResult? Function(String title, String url)? addLink,
    TResult? Function(Link link)? updateLink,
    TResult? Function(int id)? deleteLink,
  }) {
    return loadLinks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLinks,
    TResult Function(String title, String url)? addLink,
    TResult Function(Link link)? updateLink,
    TResult Function(int id)? deleteLink,
    required TResult orElse(),
  }) {
    if (loadLinks != null) {
      return loadLinks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLinks value) loadLinks,
    required TResult Function(_AddLink value) addLink,
    required TResult Function(_UpdateLink value) updateLink,
    required TResult Function(_DeleteLink value) deleteLink,
  }) {
    return loadLinks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLinks value)? loadLinks,
    TResult? Function(_AddLink value)? addLink,
    TResult? Function(_UpdateLink value)? updateLink,
    TResult? Function(_DeleteLink value)? deleteLink,
  }) {
    return loadLinks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLinks value)? loadLinks,
    TResult Function(_AddLink value)? addLink,
    TResult Function(_UpdateLink value)? updateLink,
    TResult Function(_DeleteLink value)? deleteLink,
    required TResult orElse(),
  }) {
    if (loadLinks != null) {
      return loadLinks(this);
    }
    return orElse();
  }
}

abstract class _LoadLinks implements LinkEvent {
  const factory _LoadLinks() = _$LoadLinksImpl;
}

/// @nodoc
abstract class _$$AddLinkImplCopyWith<$Res> {
  factory _$$AddLinkImplCopyWith(
          _$AddLinkImpl value, $Res Function(_$AddLinkImpl) then) =
      __$$AddLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String url});
}

/// @nodoc
class __$$AddLinkImplCopyWithImpl<$Res>
    extends _$LinkEventCopyWithImpl<$Res, _$AddLinkImpl>
    implements _$$AddLinkImplCopyWith<$Res> {
  __$$AddLinkImplCopyWithImpl(
      _$AddLinkImpl _value, $Res Function(_$AddLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$AddLinkImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLinkImpl implements _AddLink {
  const _$AddLinkImpl({required this.title, required this.url});

  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'LinkEvent.addLink(title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLinkImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLinkImplCopyWith<_$AddLinkImpl> get copyWith =>
      __$$AddLinkImplCopyWithImpl<_$AddLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLinks,
    required TResult Function(String title, String url) addLink,
    required TResult Function(Link link) updateLink,
    required TResult Function(int id) deleteLink,
  }) {
    return addLink(title, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLinks,
    TResult? Function(String title, String url)? addLink,
    TResult? Function(Link link)? updateLink,
    TResult? Function(int id)? deleteLink,
  }) {
    return addLink?.call(title, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLinks,
    TResult Function(String title, String url)? addLink,
    TResult Function(Link link)? updateLink,
    TResult Function(int id)? deleteLink,
    required TResult orElse(),
  }) {
    if (addLink != null) {
      return addLink(title, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLinks value) loadLinks,
    required TResult Function(_AddLink value) addLink,
    required TResult Function(_UpdateLink value) updateLink,
    required TResult Function(_DeleteLink value) deleteLink,
  }) {
    return addLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLinks value)? loadLinks,
    TResult? Function(_AddLink value)? addLink,
    TResult? Function(_UpdateLink value)? updateLink,
    TResult? Function(_DeleteLink value)? deleteLink,
  }) {
    return addLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLinks value)? loadLinks,
    TResult Function(_AddLink value)? addLink,
    TResult Function(_UpdateLink value)? updateLink,
    TResult Function(_DeleteLink value)? deleteLink,
    required TResult orElse(),
  }) {
    if (addLink != null) {
      return addLink(this);
    }
    return orElse();
  }
}

abstract class _AddLink implements LinkEvent {
  const factory _AddLink(
      {required final String title, required final String url}) = _$AddLinkImpl;

  String get title;
  String get url;
  @JsonKey(ignore: true)
  _$$AddLinkImplCopyWith<_$AddLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLinkImplCopyWith<$Res> {
  factory _$$UpdateLinkImplCopyWith(
          _$UpdateLinkImpl value, $Res Function(_$UpdateLinkImpl) then) =
      __$$UpdateLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Link link});

  $LinkCopyWith<$Res> get link;
}

/// @nodoc
class __$$UpdateLinkImplCopyWithImpl<$Res>
    extends _$LinkEventCopyWithImpl<$Res, _$UpdateLinkImpl>
    implements _$$UpdateLinkImplCopyWith<$Res> {
  __$$UpdateLinkImplCopyWithImpl(
      _$UpdateLinkImpl _value, $Res Function(_$UpdateLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$UpdateLinkImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res> get link {
    return $LinkCopyWith<$Res>(_value.link, (value) {
      return _then(_value.copyWith(link: value));
    });
  }
}

/// @nodoc

class _$UpdateLinkImpl implements _UpdateLink {
  const _$UpdateLinkImpl({required this.link});

  @override
  final Link link;

  @override
  String toString() {
    return 'LinkEvent.updateLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLinkImplCopyWith<_$UpdateLinkImpl> get copyWith =>
      __$$UpdateLinkImplCopyWithImpl<_$UpdateLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLinks,
    required TResult Function(String title, String url) addLink,
    required TResult Function(Link link) updateLink,
    required TResult Function(int id) deleteLink,
  }) {
    return updateLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLinks,
    TResult? Function(String title, String url)? addLink,
    TResult? Function(Link link)? updateLink,
    TResult? Function(int id)? deleteLink,
  }) {
    return updateLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLinks,
    TResult Function(String title, String url)? addLink,
    TResult Function(Link link)? updateLink,
    TResult Function(int id)? deleteLink,
    required TResult orElse(),
  }) {
    if (updateLink != null) {
      return updateLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLinks value) loadLinks,
    required TResult Function(_AddLink value) addLink,
    required TResult Function(_UpdateLink value) updateLink,
    required TResult Function(_DeleteLink value) deleteLink,
  }) {
    return updateLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLinks value)? loadLinks,
    TResult? Function(_AddLink value)? addLink,
    TResult? Function(_UpdateLink value)? updateLink,
    TResult? Function(_DeleteLink value)? deleteLink,
  }) {
    return updateLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLinks value)? loadLinks,
    TResult Function(_AddLink value)? addLink,
    TResult Function(_UpdateLink value)? updateLink,
    TResult Function(_DeleteLink value)? deleteLink,
    required TResult orElse(),
  }) {
    if (updateLink != null) {
      return updateLink(this);
    }
    return orElse();
  }
}

abstract class _UpdateLink implements LinkEvent {
  const factory _UpdateLink({required final Link link}) = _$UpdateLinkImpl;

  Link get link;
  @JsonKey(ignore: true)
  _$$UpdateLinkImplCopyWith<_$UpdateLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLinkImplCopyWith<$Res> {
  factory _$$DeleteLinkImplCopyWith(
          _$DeleteLinkImpl value, $Res Function(_$DeleteLinkImpl) then) =
      __$$DeleteLinkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteLinkImplCopyWithImpl<$Res>
    extends _$LinkEventCopyWithImpl<$Res, _$DeleteLinkImpl>
    implements _$$DeleteLinkImplCopyWith<$Res> {
  __$$DeleteLinkImplCopyWithImpl(
      _$DeleteLinkImpl _value, $Res Function(_$DeleteLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteLinkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteLinkImpl implements _DeleteLink {
  const _$DeleteLinkImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'LinkEvent.deleteLink(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLinkImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLinkImplCopyWith<_$DeleteLinkImpl> get copyWith =>
      __$$DeleteLinkImplCopyWithImpl<_$DeleteLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLinks,
    required TResult Function(String title, String url) addLink,
    required TResult Function(Link link) updateLink,
    required TResult Function(int id) deleteLink,
  }) {
    return deleteLink(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLinks,
    TResult? Function(String title, String url)? addLink,
    TResult? Function(Link link)? updateLink,
    TResult? Function(int id)? deleteLink,
  }) {
    return deleteLink?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLinks,
    TResult Function(String title, String url)? addLink,
    TResult Function(Link link)? updateLink,
    TResult Function(int id)? deleteLink,
    required TResult orElse(),
  }) {
    if (deleteLink != null) {
      return deleteLink(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadLinks value) loadLinks,
    required TResult Function(_AddLink value) addLink,
    required TResult Function(_UpdateLink value) updateLink,
    required TResult Function(_DeleteLink value) deleteLink,
  }) {
    return deleteLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadLinks value)? loadLinks,
    TResult? Function(_AddLink value)? addLink,
    TResult? Function(_UpdateLink value)? updateLink,
    TResult? Function(_DeleteLink value)? deleteLink,
  }) {
    return deleteLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadLinks value)? loadLinks,
    TResult Function(_AddLink value)? addLink,
    TResult Function(_UpdateLink value)? updateLink,
    TResult Function(_DeleteLink value)? deleteLink,
    required TResult orElse(),
  }) {
    if (deleteLink != null) {
      return deleteLink(this);
    }
    return orElse();
  }
}

abstract class _DeleteLink implements LinkEvent {
  const factory _DeleteLink({required final int id}) = _$DeleteLinkImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteLinkImplCopyWith<_$DeleteLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
