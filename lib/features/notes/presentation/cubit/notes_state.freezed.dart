// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotesStateTearOff {
  const _$NotesStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Initial initial(List<Note> notes) {
    return Initial(
      notes,
    );
  }

  Filling filling(List<Note> notes) {
    return Filling(
      notes,
    );
  }

  Error error(Failure failure) {
    return Error(
      failure,
    );
  }
}

/// @nodoc
const $NotesState = _$NotesStateTearOff();

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) filling,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
    required TResult Function(Filling value) filling,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) filling,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
    required TResult Function(Filling value) filling,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NotesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(Initial(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.notes);

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NotesState.initial(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initial &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) filling,
    required TResult Function(Failure failure) error,
  }) {
    return initial(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
    required TResult Function(Filling value) filling,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotesState {
  const factory Initial(List<Note> notes) = _$Initial;

  List<Note> get notes;
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillingCopyWith<$Res> {
  factory $FillingCopyWith(Filling value, $Res Function(Filling) then) =
      _$FillingCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$FillingCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements $FillingCopyWith<$Res> {
  _$FillingCopyWithImpl(Filling _value, $Res Function(Filling) _then)
      : super(_value, (v) => _then(v as Filling));

  @override
  Filling get _value => super._value as Filling;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(Filling(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc

class _$Filling implements Filling {
  const _$Filling(this.notes);

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NotesState.filling(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Filling &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  $FillingCopyWith<Filling> get copyWith =>
      _$FillingCopyWithImpl<Filling>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) filling,
    required TResult Function(Failure failure) error,
  }) {
    return filling(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
  }) {
    return filling?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (filling != null) {
      return filling(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
    required TResult Function(Filling value) filling,
    required TResult Function(Error value) error,
  }) {
    return filling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
  }) {
    return filling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (filling != null) {
      return filling(this);
    }
    return orElse();
  }
}

abstract class Filling implements NotesState {
  const factory Filling(List<Note> notes) = _$Filling;

  List<Note> get notes;
  @JsonKey(ignore: true)
  $FillingCopyWith<Filling> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'NotesState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Note> notes) initial,
    required TResult Function(List<Note> notes) filling,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Note> notes)? initial,
    TResult Function(List<Note> notes)? filling,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Initial value) initial,
    required TResult Function(Filling value) filling,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Initial value)? initial,
    TResult Function(Filling value)? filling,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements NotesState {
  const factory Error(Failure failure) = _$Error;

  Failure get failure;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
