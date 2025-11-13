// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_lesson_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLessonProgress {

 String get id; String get userId; String get lessonId; bool get isCompleted; DateTime? get completedAt; int get attempts; double? get quizScore; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of UserLessonProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLessonProgressCopyWith<UserLessonProgress> get copyWith => _$UserLessonProgressCopyWithImpl<UserLessonProgress>(this as UserLessonProgress, _$identity);

  /// Serializes this UserLessonProgress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLessonProgress&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.quizScore, quizScore) || other.quizScore == quizScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,lessonId,isCompleted,completedAt,attempts,quizScore,createdAt,updatedAt);

@override
String toString() {
  return 'UserLessonProgress(id: $id, userId: $userId, lessonId: $lessonId, isCompleted: $isCompleted, completedAt: $completedAt, attempts: $attempts, quizScore: $quizScore, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserLessonProgressCopyWith<$Res>  {
  factory $UserLessonProgressCopyWith(UserLessonProgress value, $Res Function(UserLessonProgress) _then) = _$UserLessonProgressCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String lessonId, bool isCompleted, DateTime? completedAt, int attempts, double? quizScore, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserLessonProgressCopyWithImpl<$Res>
    implements $UserLessonProgressCopyWith<$Res> {
  _$UserLessonProgressCopyWithImpl(this._self, this._then);

  final UserLessonProgress _self;
  final $Res Function(UserLessonProgress) _then;

/// Create a copy of UserLessonProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? lessonId = null,Object? isCompleted = null,Object? completedAt = freezed,Object? attempts = null,Object? quizScore = freezed,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,quizScore: freezed == quizScore ? _self.quizScore : quizScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserLessonProgress].
extension UserLessonProgressPatterns on UserLessonProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLessonProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLessonProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLessonProgress value)  $default,){
final _that = this;
switch (_that) {
case _UserLessonProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLessonProgress value)?  $default,){
final _that = this;
switch (_that) {
case _UserLessonProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String lessonId,  bool isCompleted,  DateTime? completedAt,  int attempts,  double? quizScore,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLessonProgress() when $default != null:
return $default(_that.id,_that.userId,_that.lessonId,_that.isCompleted,_that.completedAt,_that.attempts,_that.quizScore,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String lessonId,  bool isCompleted,  DateTime? completedAt,  int attempts,  double? quizScore,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserLessonProgress():
return $default(_that.id,_that.userId,_that.lessonId,_that.isCompleted,_that.completedAt,_that.attempts,_that.quizScore,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String lessonId,  bool isCompleted,  DateTime? completedAt,  int attempts,  double? quizScore,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserLessonProgress() when $default != null:
return $default(_that.id,_that.userId,_that.lessonId,_that.isCompleted,_that.completedAt,_that.attempts,_that.quizScore,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserLessonProgress implements UserLessonProgress {
  const _UserLessonProgress({required this.id, required this.userId, required this.lessonId, required this.isCompleted, this.completedAt, required this.attempts, this.quizScore, required this.createdAt, this.updatedAt});
  factory _UserLessonProgress.fromJson(Map<String, dynamic> json) => _$UserLessonProgressFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String lessonId;
@override final  bool isCompleted;
@override final  DateTime? completedAt;
@override final  int attempts;
@override final  double? quizScore;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserLessonProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLessonProgressCopyWith<_UserLessonProgress> get copyWith => __$UserLessonProgressCopyWithImpl<_UserLessonProgress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserLessonProgressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLessonProgress&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.quizScore, quizScore) || other.quizScore == quizScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,lessonId,isCompleted,completedAt,attempts,quizScore,createdAt,updatedAt);

@override
String toString() {
  return 'UserLessonProgress(id: $id, userId: $userId, lessonId: $lessonId, isCompleted: $isCompleted, completedAt: $completedAt, attempts: $attempts, quizScore: $quizScore, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserLessonProgressCopyWith<$Res> implements $UserLessonProgressCopyWith<$Res> {
  factory _$UserLessonProgressCopyWith(_UserLessonProgress value, $Res Function(_UserLessonProgress) _then) = __$UserLessonProgressCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String lessonId, bool isCompleted, DateTime? completedAt, int attempts, double? quizScore, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserLessonProgressCopyWithImpl<$Res>
    implements _$UserLessonProgressCopyWith<$Res> {
  __$UserLessonProgressCopyWithImpl(this._self, this._then);

  final _UserLessonProgress _self;
  final $Res Function(_UserLessonProgress) _then;

/// Create a copy of UserLessonProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? lessonId = null,Object? isCompleted = null,Object? completedAt = freezed,Object? attempts = null,Object? quizScore = freezed,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_UserLessonProgress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,quizScore: freezed == quizScore ? _self.quizScore : quizScore // ignore: cast_nullable_to_non_nullable
as double?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
