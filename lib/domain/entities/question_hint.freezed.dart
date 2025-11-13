// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_hint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionHint {

 String get questionId; String get hintText; int get gemCost;
/// Create a copy of QuestionHint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionHintCopyWith<QuestionHint> get copyWith => _$QuestionHintCopyWithImpl<QuestionHint>(this as QuestionHint, _$identity);

  /// Serializes this QuestionHint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionHint&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.gemCost, gemCost) || other.gemCost == gemCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,hintText,gemCost);

@override
String toString() {
  return 'QuestionHint(questionId: $questionId, hintText: $hintText, gemCost: $gemCost)';
}


}

/// @nodoc
abstract mixin class $QuestionHintCopyWith<$Res>  {
  factory $QuestionHintCopyWith(QuestionHint value, $Res Function(QuestionHint) _then) = _$QuestionHintCopyWithImpl;
@useResult
$Res call({
 String questionId, String hintText, int gemCost
});




}
/// @nodoc
class _$QuestionHintCopyWithImpl<$Res>
    implements $QuestionHintCopyWith<$Res> {
  _$QuestionHintCopyWithImpl(this._self, this._then);

  final QuestionHint _self;
  final $Res Function(QuestionHint) _then;

/// Create a copy of QuestionHint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? hintText = null,Object? gemCost = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,hintText: null == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String,gemCost: null == gemCost ? _self.gemCost : gemCost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionHint].
extension QuestionHintPatterns on QuestionHint {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionHint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionHint() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionHint value)  $default,){
final _that = this;
switch (_that) {
case _QuestionHint():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionHint value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionHint() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questionId,  String hintText,  int gemCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionHint() when $default != null:
return $default(_that.questionId,_that.hintText,_that.gemCost);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questionId,  String hintText,  int gemCost)  $default,) {final _that = this;
switch (_that) {
case _QuestionHint():
return $default(_that.questionId,_that.hintText,_that.gemCost);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questionId,  String hintText,  int gemCost)?  $default,) {final _that = this;
switch (_that) {
case _QuestionHint() when $default != null:
return $default(_that.questionId,_that.hintText,_that.gemCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionHint implements QuestionHint {
  const _QuestionHint({required this.questionId, required this.hintText, required this.gemCost});
  factory _QuestionHint.fromJson(Map<String, dynamic> json) => _$QuestionHintFromJson(json);

@override final  String questionId;
@override final  String hintText;
@override final  int gemCost;

/// Create a copy of QuestionHint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionHintCopyWith<_QuestionHint> get copyWith => __$QuestionHintCopyWithImpl<_QuestionHint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionHintToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionHint&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.hintText, hintText) || other.hintText == hintText)&&(identical(other.gemCost, gemCost) || other.gemCost == gemCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,hintText,gemCost);

@override
String toString() {
  return 'QuestionHint(questionId: $questionId, hintText: $hintText, gemCost: $gemCost)';
}


}

/// @nodoc
abstract mixin class _$QuestionHintCopyWith<$Res> implements $QuestionHintCopyWith<$Res> {
  factory _$QuestionHintCopyWith(_QuestionHint value, $Res Function(_QuestionHint) _then) = __$QuestionHintCopyWithImpl;
@override @useResult
$Res call({
 String questionId, String hintText, int gemCost
});




}
/// @nodoc
class __$QuestionHintCopyWithImpl<$Res>
    implements _$QuestionHintCopyWith<$Res> {
  __$QuestionHintCopyWithImpl(this._self, this._then);

  final _QuestionHint _self;
  final $Res Function(_QuestionHint) _then;

/// Create a copy of QuestionHint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? hintText = null,Object? gemCost = null,}) {
  return _then(_QuestionHint(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,hintText: null == hintText ? _self.hintText : hintText // ignore: cast_nullable_to_non_nullable
as String,gemCost: null == gemCost ? _self.gemCost : gemCost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
