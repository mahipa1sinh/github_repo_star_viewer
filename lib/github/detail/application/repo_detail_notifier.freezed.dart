// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_detail_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoDetailState {
  bool get hasStarredStatusChanger => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanger) initial,
    required TResult Function(bool hasStarredStatusChanger) loadProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanger)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadProgress value) loadProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoDetailStateCopyWith<RepoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailStateCopyWith<$Res> {
  factory $RepoDetailStateCopyWith(
          RepoDetailState value, $Res Function(RepoDetailState) then) =
      _$RepoDetailStateCopyWithImpl<$Res>;
  $Res call({bool hasStarredStatusChanger});
}

/// @nodoc
class _$RepoDetailStateCopyWithImpl<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  _$RepoDetailStateCopyWithImpl(this._value, this._then);

  final RepoDetailState _value;
  // ignore: unused_field
  final $Res Function(RepoDetailState) _then;

  @override
  $Res call({
    Object? hasStarredStatusChanger = freezed,
  }) {
    return _then(_value.copyWith(
      hasStarredStatusChanger: hasStarredStatusChanger == freezed
          ? _value.hasStarredStatusChanger
          : hasStarredStatusChanger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool hasStarredStatusChanger});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$RepoDetailStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? hasStarredStatusChanger = freezed,
  }) {
    return _then(_$_Initial(
      hasStarredStatusChanger: hasStarredStatusChanger == freezed
          ? _value.hasStarredStatusChanger
          : hasStarredStatusChanger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({this.hasStarredStatusChanger = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChanger;

  @override
  String toString() {
    return 'RepoDetailState.initial(hasStarredStatusChanger: $hasStarredStatusChanger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(
                other.hasStarredStatusChanger, hasStarredStatusChanger));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(hasStarredStatusChanger));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanger) initial,
    required TResult Function(bool hasStarredStatusChanger) loadProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanger)
        loadFailure,
  }) {
    return initial(hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
  }) {
    return initial?.call(hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(hasStarredStatusChanger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadProgress value) loadProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends RepoDetailState {
  const factory _Initial({final bool hasStarredStatusChanger}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get hasStarredStatusChanger => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadProgressCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_LoadProgressCopyWith(
          _$_LoadProgress value, $Res Function(_$_LoadProgress) then) =
      __$$_LoadProgressCopyWithImpl<$Res>;
  @override
  $Res call({bool hasStarredStatusChanger});
}

/// @nodoc
class __$$_LoadProgressCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res>
    implements _$$_LoadProgressCopyWith<$Res> {
  __$$_LoadProgressCopyWithImpl(
      _$_LoadProgress _value, $Res Function(_$_LoadProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadProgress));

  @override
  _$_LoadProgress get _value => super._value as _$_LoadProgress;

  @override
  $Res call({
    Object? hasStarredStatusChanger = freezed,
  }) {
    return _then(_$_LoadProgress(
      hasStarredStatusChanger: hasStarredStatusChanger == freezed
          ? _value.hasStarredStatusChanger
          : hasStarredStatusChanger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadProgress extends _LoadProgress {
  const _$_LoadProgress({this.hasStarredStatusChanger = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChanger;

  @override
  String toString() {
    return 'RepoDetailState.loadProgress(hasStarredStatusChanger: $hasStarredStatusChanger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadProgress &&
            const DeepCollectionEquality().equals(
                other.hasStarredStatusChanger, hasStarredStatusChanger));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(hasStarredStatusChanger));

  @JsonKey(ignore: true)
  @override
  _$$_LoadProgressCopyWith<_$_LoadProgress> get copyWith =>
      __$$_LoadProgressCopyWithImpl<_$_LoadProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanger) initial,
    required TResult Function(bool hasStarredStatusChanger) loadProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanger)
        loadFailure,
  }) {
    return loadProgress(hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
  }) {
    return loadProgress?.call(hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadProgress != null) {
      return loadProgress(hasStarredStatusChanger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadProgress value) loadProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadProgress != null) {
      return loadProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadProgress extends RepoDetailState {
  const factory _LoadProgress({final bool hasStarredStatusChanger}) =
      _$_LoadProgress;
  const _LoadProgress._() : super._();

  @override
  bool get hasStarredStatusChanger => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadProgressCopyWith<_$_LoadProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger});

  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? repoDetail = freezed,
    Object? hasStarredStatusChanger = freezed,
  }) {
    return _then(_$_LoadSuccess(
      repoDetail == freezed
          ? _value.repoDetail
          : repoDetail // ignore: cast_nullable_to_non_nullable
              as Fresh<GithubRepoDetail?>,
      hasStarredStatusChanger: hasStarredStatusChanger == freezed
          ? _value.hasStarredStatusChanger
          : hasStarredStatusChanger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail {
    return $FreshCopyWith<GithubRepoDetail?, $Res>(_value.repoDetail, (value) {
      return _then(_value.copyWith(repoDetail: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.repoDetail, {this.hasStarredStatusChanger = false})
      : super._();

  @override
  final Fresh<GithubRepoDetail?> repoDetail;
  @override
  @JsonKey()
  final bool hasStarredStatusChanger;

  @override
  String toString() {
    return 'RepoDetailState.loadSuccess(repoDetail: $repoDetail, hasStarredStatusChanger: $hasStarredStatusChanger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.repoDetail, repoDetail) &&
            const DeepCollectionEquality().equals(
                other.hasStarredStatusChanger, hasStarredStatusChanger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repoDetail),
      const DeepCollectionEquality().hash(hasStarredStatusChanger));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanger) initial,
    required TResult Function(bool hasStarredStatusChanger) loadProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanger)
        loadFailure,
  }) {
    return loadSuccess(repoDetail, hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
  }) {
    return loadSuccess?.call(repoDetail, hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(repoDetail, hasStarredStatusChanger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadProgress value) loadProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends RepoDetailState {
  const factory _LoadSuccess(final Fresh<GithubRepoDetail?> repoDetail,
      {final bool hasStarredStatusChanger}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  Fresh<GithubRepoDetail?> get repoDetail => throw _privateConstructorUsedError;
  @override
  bool get hasStarredStatusChanger => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({GithubFailure failure, bool hasStarredStatusChanger});

  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
    Object? hasStarredStatusChanger = freezed,
  }) {
    return _then(_$_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
      hasStarredStatusChanger: hasStarredStatusChanger == freezed
          ? _value.hasStarredStatusChanger
          : hasStarredStatusChanger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.failure, {this.hasStarredStatusChanger = false})
      : super._();

  @override
  final GithubFailure failure;
  @override
  @JsonKey()
  final bool hasStarredStatusChanger;

  @override
  String toString() {
    return 'RepoDetailState.loadFailure(failure: $failure, hasStarredStatusChanger: $hasStarredStatusChanger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(
                other.hasStarredStatusChanger, hasStarredStatusChanger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(hasStarredStatusChanger));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChanger) initial,
    required TResult Function(bool hasStarredStatusChanger) loadProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChanger)
        loadFailure,
  }) {
    return loadFailure(failure, hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
  }) {
    return loadFailure?.call(failure, hasStarredStatusChanger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChanger)? initial,
    TResult Function(bool hasStarredStatusChanger)? loadProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChanger)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChanger)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure, hasStarredStatusChanger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadProgress value) loadProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadProgress value)? loadProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends RepoDetailState {
  const factory _LoadFailure(final GithubFailure failure,
      {final bool hasStarredStatusChanger}) = _$_LoadFailure;
  const _LoadFailure._() : super._();

  GithubFailure get failure => throw _privateConstructorUsedError;
  @override
  bool get hasStarredStatusChanger => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
