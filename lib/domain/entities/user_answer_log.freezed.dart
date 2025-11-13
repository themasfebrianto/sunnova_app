// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_answer_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAnswerLog {

 String get id; String get userId; String get questionId; int get selectedAnswerIndex; bool get isCorrect; bool get isHintUsed; DateTime get attemptedAt;
/// Create a copy of UserAnswerLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAnswerLogCopyWith<UserAnswerLog> get copyWith => _$UserAnswerLogCopyWithImpl<UserAnswerLog>(this as UserAnswerLog, _$identity);

  /// Serializes this UserAnswerLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAnswerLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.selectedAnswerIndex, selectedAnswerIndex) || other.selectedAnswerIndex == selectedAnswerIndex)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.isHintUsed, isHintUsed) || other.isHintUsed == isHintUsed)&&(identical(other.attemptedAt, attemptedAt) || other.attemptedAt == attemptedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,questionId,selectedAnswerIndex,isCorrect,isHintUsed,attemptedAt);

@override
String toString() {
  return 'UserAnswerLog(id: $id, userId: $userId, questionId: $questionId, selectedAnswerIndex: $selectedAnswerIndex, isCorrect: $isCorrect, isHintUsed: $isHintUsed, attemptedAt: $attemptedAt)';
}


}

/// @nodoc
abstract mixin class $UserAnswerLogCopyWith<$Res>  {
  factory $UserAnswerLogCopyWith(UserAnswerLog value, $Res Function(UserAnswerLog) _then) = _$UserAnswerLogCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String questionId, int selectedAnswerIndex, bool isCorrect, bool isHintUsed, DateTime attemptedAt
});




}
/// @nodoc
class _$UserAnswerLogCopyWithImpl<$Res>
    implements $UserAnswerLogCopyWith<$Res> {
  _$UserAnswerLogCopyWithImpl(this._self, this._then);

  final UserAnswerLog _self;
  final $Res Function(UserAnswerLog) _then;

/// Create a copy of UserAnswerLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? questionId = null,Object? selectedAnswerIndex = null,Object? isCorrect = null,Object? isHintUsed = null,Object? attemptedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswerIndex: null == selectedAnswerIndex ? _self.selectedAnswerIndex : selectedAnswerIndex // ignore: cast_nullable_to_non_nullable
as int,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,isHintUsed: null == isHintUsed ? _self.isHintUsed : isHintUsed // ignore: cast_nullable_to_non_nullable
as bool,attemptedAt: null == attemptedAt ? _self.attemptedAt : attemptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAnswerLog].
extension UserAnswerLogPatterns on UserAnswerLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAnswerLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAnswerLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAnswerLog value)  $default,){
final _that = this;
switch (_that) {
case _UserAnswerLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAnswerLog value)?  $default,){
final _that = this;
switch (_that) {
case _UserAnswerLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String questionId,  int selectedAnswerIndex,  bool isCorrect,  bool isHintUsed,  DateTime attemptedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAnswerLog() when $default != null:
return $default(_that.id,_that.userId,_that.questionId,_that.selectedAnswerIndex,_that.isCorrect,_that.isHintUsed,_that.attemptedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String questionId,  int selectedAnswerIndex,  bool isCorrect,  bool isHintUsed,  DateTime attemptedAt)  $default,) {final _that = this;
switch (_that) {
case _UserAnswerLog():
return $default(_that.id,_that.userId,_that.questionId,_that.selectedAnswerIndex,_that.isCorrect,_that.isHintUsed,_that.attemptedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String questionId,  int selectedAnswerIndex,  bool isCorrect,  bool isHintUsed,  DateTime attemptedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserAnswerLog() when $default != null:
return $default(_that.id,_that.userId,_that.questionId,_that.selectedAnswerIndex,_that.isCorrect,_that.isHintUsed,_that.attemptedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAnswerLog implements UserAnswerLog {
  const _UserAnswerLog({required this.id, required this.userId, required this.questionId, required this.selectedAnswerIndex, required this.isCorrect, required this.isHintUsed, required this.attemptedAt});
  factory _UserAnswerLog.fromJson(Map<String, dynamic> json) => _$UserAnswerLogFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String questionId;
@override final  int selectedAnswerIndex;
@override final  bool isCorrect;
@override final  bool isHintUsed;
@override final  DateTime attemptedAt;

/// Create a copy of UserAnswerLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAnswerLogCopyWith<_UserAnswerLog> get copyWith => __$UserAnswerLogCopyWithImpl<_UserAnswerLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAnswerLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAnswerLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.selectedAnswerIndex, selectedAnswerIndex) || other.selectedAnswerIndex == selectedAnswerIndex)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.isHintUsed, isHintUsed) || other.isHintUsed == isHintUsed)&&(identical(other.attemptedAt, attemptedAt) || other.attemptedAt == attemptedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,questionId,selectedAnswerIndex,isCorrect,isHintUsed,attemptedAt);

@override
String toString() {
  return 'UserAnswerLog(id: $id, userId: $userId, questionId: $questionId, selectedAnswerIndex: $selectedAnswerIndex, isCorrect: $isCorrect, isHintUsed: $isHintUsed, attemptedAt: $attemptedAt)';
}


}

/// @nodoc
abstract mixin class _$UserAnswerLogCopyWith<$Res> implements $UserAnswerLogCopyWith<$Res> {
  factory _$UserAnswerLogCopyWith(_UserAnswerLog value, $Res Function(_UserAnswerLog) _then) = __$UserAnswerLogCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String questionId, int selectedAnswerIndex, bool isCorrect, bool isHintUsed, DateTime attemptedAt
});




}
/// @nodoc
class __$UserAnswerLogCopyWithImpl<$Res>
    implements _$UserAnswerLogCopyWith<$Res> {
  __$UserAnswerLogCopyWithImpl(this._self, this._then);

  final _UserAnswerLog _self;
  final $Res Function(_UserAnswerLog) _then;

/// Create a copy of UserAnswerLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? questionId = null,Object? selectedAnswerIndex = null,Object? isCorrect = null,Object? isHintUsed = null,Object? attemptedAt = null,}) {
  return _then(_UserAnswerLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswerIndex: null == selectedAnswerIndex ? _self.selectedAnswerIndex : selectedAnswerIndex // ignore: cast_nullable_to_non_nullable
as int,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,isHintUsed: null == isHintUsed ? _self.isHintUsed : isHintUsed // ignore: cast_nullable_to_non_nullable
as bool,attemptedAt: null == attemptedAt ? _self.attemptedAt : attemptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
