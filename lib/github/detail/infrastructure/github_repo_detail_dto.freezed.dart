// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repo_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoDetailDTO _$GithubRepoDetailDTOFromJson(Map<String, dynamic> json) {
  return _GithubRepoDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$GithubRepoDetailDTO {
  String get fullName => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;
  bool get starred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoDetailDTOCopyWith<GithubRepoDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoDetailDTOCopyWith<$Res> {
  factory $GithubRepoDetailDTOCopyWith(
          GithubRepoDetailDTO value, $Res Function(GithubRepoDetailDTO) then) =
      _$GithubRepoDetailDTOCopyWithImpl<$Res>;
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class _$GithubRepoDetailDTOCopyWithImpl<$Res>
    implements $GithubRepoDetailDTOCopyWith<$Res> {
  _$GithubRepoDetailDTOCopyWithImpl(this._value, this._then);

  final GithubRepoDetailDTO _value;
  // ignore: unused_field
  final $Res Function(GithubRepoDetailDTO) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? html = freezed,
    Object? starred = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: starred == freezed
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GithubRepoDetailDTOCopyWith<$Res>
    implements $GithubRepoDetailDTOCopyWith<$Res> {
  factory _$$_GithubRepoDetailDTOCopyWith(_$_GithubRepoDetailDTO value,
          $Res Function(_$_GithubRepoDetailDTO) then) =
      __$$_GithubRepoDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call({String fullName, String html, bool starred});
}

/// @nodoc
class __$$_GithubRepoDetailDTOCopyWithImpl<$Res>
    extends _$GithubRepoDetailDTOCopyWithImpl<$Res>
    implements _$$_GithubRepoDetailDTOCopyWith<$Res> {
  __$$_GithubRepoDetailDTOCopyWithImpl(_$_GithubRepoDetailDTO _value,
      $Res Function(_$_GithubRepoDetailDTO) _then)
      : super(_value, (v) => _then(v as _$_GithubRepoDetailDTO));

  @override
  _$_GithubRepoDetailDTO get _value => super._value as _$_GithubRepoDetailDTO;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? html = freezed,
    Object? starred = freezed,
  }) {
    return _then(_$_GithubRepoDetailDTO(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      starred: starred == freezed
          ? _value.starred
          : starred // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepoDetailDTO extends _GithubRepoDetailDTO {
  const _$_GithubRepoDetailDTO(
      {required this.fullName, required this.html, required this.starred})
      : super._();

  factory _$_GithubRepoDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GithubRepoDetailDTOFromJson(json);

  @override
  final String fullName;
  @override
  final String html;
  @override
  final bool starred;

  @override
  String toString() {
    return 'GithubRepoDetailDTO(fullName: $fullName, html: $html, starred: $starred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepoDetailDTO &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.html, html) &&
            const DeepCollectionEquality().equals(other.starred, starred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(html),
      const DeepCollectionEquality().hash(starred));

  @JsonKey(ignore: true)
  @override
  _$$_GithubRepoDetailDTOCopyWith<_$_GithubRepoDetailDTO> get copyWith =>
      __$$_GithubRepoDetailDTOCopyWithImpl<_$_GithubRepoDetailDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GithubRepoDetailDTOToJson(this);
  }
}

abstract class _GithubRepoDetailDTO extends GithubRepoDetailDTO {
  const factory _GithubRepoDetailDTO(
      {required final String fullName,
      required final String html,
      required final bool starred}) = _$_GithubRepoDetailDTO;
  const _GithubRepoDetailDTO._() : super._();

  factory _GithubRepoDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_GithubRepoDetailDTO.fromJson;

  @override
  String get fullName => throw _privateConstructorUsedError;
  @override
  String get html => throw _privateConstructorUsedError;
  @override
  bool get starred => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepoDetailDTOCopyWith<_$_GithubRepoDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
