// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'do_you_know_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DoYouKnow {
  String get texto;

  /// Create a copy of DoYouKnow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DoYouKnowCopyWith<DoYouKnow> get copyWith =>
      _$DoYouKnowCopyWithImpl<DoYouKnow>(this as DoYouKnow, _$identity);

  /// Serializes this DoYouKnow to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DoYouKnow &&
            (identical(other.texto, texto) || other.texto == texto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, texto);

  @override
  String toString() {
    return 'DoYouKnow(texto: $texto)';
  }
}

/// @nodoc
abstract mixin class $DoYouKnowCopyWith<$Res> {
  factory $DoYouKnowCopyWith(DoYouKnow value, $Res Function(DoYouKnow) _then) =
      _$DoYouKnowCopyWithImpl;
  @useResult
  $Res call({String texto});
}

/// @nodoc
class _$DoYouKnowCopyWithImpl<$Res> implements $DoYouKnowCopyWith<$Res> {
  _$DoYouKnowCopyWithImpl(this._self, this._then);

  final DoYouKnow _self;
  final $Res Function(DoYouKnow) _then;

  /// Create a copy of DoYouKnow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texto = null,
  }) {
    return _then(_self.copyWith(
      texto: null == texto
          ? _self.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DoYouKnow implements DoYouKnow {
  const _DoYouKnow({required this.texto});
  factory _DoYouKnow.fromJson(Map<String, dynamic> json) =>
      _$DoYouKnowFromJson(json);

  @override
  final String texto;

  /// Create a copy of DoYouKnow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DoYouKnowCopyWith<_DoYouKnow> get copyWith =>
      __$DoYouKnowCopyWithImpl<_DoYouKnow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DoYouKnowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoYouKnow &&
            (identical(other.texto, texto) || other.texto == texto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, texto);

  @override
  String toString() {
    return 'DoYouKnow(texto: $texto)';
  }
}

/// @nodoc
abstract mixin class _$DoYouKnowCopyWith<$Res>
    implements $DoYouKnowCopyWith<$Res> {
  factory _$DoYouKnowCopyWith(
          _DoYouKnow value, $Res Function(_DoYouKnow) _then) =
      __$DoYouKnowCopyWithImpl;
  @override
  @useResult
  $Res call({String texto});
}

/// @nodoc
class __$DoYouKnowCopyWithImpl<$Res> implements _$DoYouKnowCopyWith<$Res> {
  __$DoYouKnowCopyWithImpl(this._self, this._then);

  final _DoYouKnow _self;
  final $Res Function(_DoYouKnow) _then;

  /// Create a copy of DoYouKnow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? texto = null,
  }) {
    return _then(_DoYouKnow(
      texto: null == texto
          ? _self.texto
          : texto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
