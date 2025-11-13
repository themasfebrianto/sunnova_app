// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_game_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserGameStats {

 String get userId; int get totalXp; int get level; int get currentStreak; int get longestStreak; DateTime? get lastActiveDate; int get totalLessonsCompleted; int get totalQuizzesPassed; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of UserGameStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGameStatsCopyWith<UserGameStats> get copyWith => _$UserGameStatsCopyWithImpl<UserGameStats>(this as UserGameStats, _$identity);

  /// Serializes this UserGameStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGameStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalXp, totalXp) || other.totalXp == totalXp)&&(identical(other.level, level) || other.level == level)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.lastActiveDate, lastActiveDate) || other.lastActiveDate == lastActiveDate)&&(identical(other.totalLessonsCompleted, totalLessonsCompleted) || other.totalLessonsCompleted == totalLessonsCompleted)&&(identical(other.totalQuizzesPassed, totalQuizzesPassed) || other.totalQuizzesPassed == totalQuizzesPassed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalXp,level,currentStreak,longestStreak,lastActiveDate,totalLessonsCompleted,totalQuizzesPassed,createdAt,updatedAt);

@override
String toString() {
  return 'UserGameStats(userId: $userId, totalXp: $totalXp, level: $level, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActiveDate: $lastActiveDate, totalLessonsCompleted: $totalLessonsCompleted, totalQuizzesPassed: $totalQuizzesPassed, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserGameStatsCopyWith<$Res>  {
  factory $UserGameStatsCopyWith(UserGameStats value, $Res Function(UserGameStats) _then) = _$UserGameStatsCopyWithImpl;
@useResult
$Res call({
 String userId, int totalXp, int level, int currentStreak, int longestStreak, DateTime? lastActiveDate, int totalLessonsCompleted, int totalQuizzesPassed, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserGameStatsCopyWithImpl<$Res>
    implements $UserGameStatsCopyWith<$Res> {
  _$UserGameStatsCopyWithImpl(this._self, this._then);

  final UserGameStats _self;
  final $Res Function(UserGameStats) _then;

/// Create a copy of UserGameStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? totalXp = null,Object? level = null,Object? currentStreak = null,Object? longestStreak = null,Object? lastActiveDate = freezed,Object? totalLessonsCompleted = null,Object? totalQuizzesPassed = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,totalXp: null == totalXp ? _self.totalXp : totalXp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,longestStreak: null == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int,lastActiveDate: freezed == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalLessonsCompleted: null == totalLessonsCompleted ? _self.totalLessonsCompleted : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesPassed: null == totalQuizzesPassed ? _self.totalQuizzesPassed : totalQuizzesPassed // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGameStats].
extension UserGameStatsPatterns on UserGameStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGameStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGameStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGameStats value)  $default,){
final _that = this;
switch (_that) {
case _UserGameStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGameStats value)?  $default,){
final _that = this;
switch (_that) {
case _UserGameStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  int totalXp,  int level,  int currentStreak,  int longestStreak,  DateTime? lastActiveDate,  int totalLessonsCompleted,  int totalQuizzesPassed,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserGameStats() when $default != null:
return $default(_that.userId,_that.totalXp,_that.level,_that.currentStreak,_that.longestStreak,_that.lastActiveDate,_that.totalLessonsCompleted,_that.totalQuizzesPassed,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  int totalXp,  int level,  int currentStreak,  int longestStreak,  DateTime? lastActiveDate,  int totalLessonsCompleted,  int totalQuizzesPassed,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserGameStats():
return $default(_that.userId,_that.totalXp,_that.level,_that.currentStreak,_that.longestStreak,_that.lastActiveDate,_that.totalLessonsCompleted,_that.totalQuizzesPassed,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  int totalXp,  int level,  int currentStreak,  int longestStreak,  DateTime? lastActiveDate,  int totalLessonsCompleted,  int totalQuizzesPassed,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserGameStats() when $default != null:
return $default(_that.userId,_that.totalXp,_that.level,_that.currentStreak,_that.longestStreak,_that.lastActiveDate,_that.totalLessonsCompleted,_that.totalQuizzesPassed,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGameStats implements UserGameStats {
  const _UserGameStats({required this.userId, required this.totalXp, required this.level, required this.currentStreak, required this.longestStreak, this.lastActiveDate, required this.totalLessonsCompleted, required this.totalQuizzesPassed, required this.createdAt, this.updatedAt});
  factory _UserGameStats.fromJson(Map<String, dynamic> json) => _$UserGameStatsFromJson(json);

@override final  String userId;
@override final  int totalXp;
@override final  int level;
@override final  int currentStreak;
@override final  int longestStreak;
@override final  DateTime? lastActiveDate;
@override final  int totalLessonsCompleted;
@override final  int totalQuizzesPassed;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserGameStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGameStatsCopyWith<_UserGameStats> get copyWith => __$UserGameStatsCopyWithImpl<_UserGameStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGameStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGameStats&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalXp, totalXp) || other.totalXp == totalXp)&&(identical(other.level, level) || other.level == level)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.longestStreak, longestStreak) || other.longestStreak == longestStreak)&&(identical(other.lastActiveDate, lastActiveDate) || other.lastActiveDate == lastActiveDate)&&(identical(other.totalLessonsCompleted, totalLessonsCompleted) || other.totalLessonsCompleted == totalLessonsCompleted)&&(identical(other.totalQuizzesPassed, totalQuizzesPassed) || other.totalQuizzesPassed == totalQuizzesPassed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalXp,level,currentStreak,longestStreak,lastActiveDate,totalLessonsCompleted,totalQuizzesPassed,createdAt,updatedAt);

@override
String toString() {
  return 'UserGameStats(userId: $userId, totalXp: $totalXp, level: $level, currentStreak: $currentStreak, longestStreak: $longestStreak, lastActiveDate: $lastActiveDate, totalLessonsCompleted: $totalLessonsCompleted, totalQuizzesPassed: $totalQuizzesPassed, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserGameStatsCopyWith<$Res> implements $UserGameStatsCopyWith<$Res> {
  factory _$UserGameStatsCopyWith(_UserGameStats value, $Res Function(_UserGameStats) _then) = __$UserGameStatsCopyWithImpl;
@override @useResult
$Res call({
 String userId, int totalXp, int level, int currentStreak, int longestStreak, DateTime? lastActiveDate, int totalLessonsCompleted, int totalQuizzesPassed, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserGameStatsCopyWithImpl<$Res>
    implements _$UserGameStatsCopyWith<$Res> {
  __$UserGameStatsCopyWithImpl(this._self, this._then);

  final _UserGameStats _self;
  final $Res Function(_UserGameStats) _then;

/// Create a copy of UserGameStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? totalXp = null,Object? level = null,Object? currentStreak = null,Object? longestStreak = null,Object? lastActiveDate = freezed,Object? totalLessonsCompleted = null,Object? totalQuizzesPassed = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_UserGameStats(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,totalXp: null == totalXp ? _self.totalXp : totalXp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,longestStreak: null == longestStreak ? _self.longestStreak : longestStreak // ignore: cast_nullable_to_non_nullable
as int,lastActiveDate: freezed == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalLessonsCompleted: null == totalLessonsCompleted ? _self.totalLessonsCompleted : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
as int,totalQuizzesPassed: null == totalQuizzesPassed ? _self.totalQuizzesPassed : totalQuizzesPassed // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
