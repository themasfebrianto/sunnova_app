// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_worship_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserWorshipLog {

 String get id; String get userId; String get worshipId; DateTime get date; bool get isCompleted; DateTime? get completedAt; int get currentValue;
/// Create a copy of UserWorshipLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserWorshipLogCopyWith<UserWorshipLog> get copyWith => _$UserWorshipLogCopyWithImpl<UserWorshipLog>(this as UserWorshipLog, _$identity);

  /// Serializes this UserWorshipLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserWorshipLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.worshipId, worshipId) || other.worshipId == worshipId)&&(identical(other.date, date) || other.date == date)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,worshipId,date,isCompleted,completedAt,currentValue);

@override
String toString() {
  return 'UserWorshipLog(id: $id, userId: $userId, worshipId: $worshipId, date: $date, isCompleted: $isCompleted, completedAt: $completedAt, currentValue: $currentValue)';
}


}

/// @nodoc
abstract mixin class $UserWorshipLogCopyWith<$Res>  {
  factory $UserWorshipLogCopyWith(UserWorshipLog value, $Res Function(UserWorshipLog) _then) = _$UserWorshipLogCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String worshipId, DateTime date, bool isCompleted, DateTime? completedAt, int currentValue
});




}
/// @nodoc
class _$UserWorshipLogCopyWithImpl<$Res>
    implements $UserWorshipLogCopyWith<$Res> {
  _$UserWorshipLogCopyWithImpl(this._self, this._then);

  final UserWorshipLog _self;
  final $Res Function(UserWorshipLog) _then;

/// Create a copy of UserWorshipLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? worshipId = null,Object? date = null,Object? isCompleted = null,Object? completedAt = freezed,Object? currentValue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,worshipId: null == worshipId ? _self.worshipId : worshipId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserWorshipLog].
extension UserWorshipLogPatterns on UserWorshipLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserWorshipLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserWorshipLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserWorshipLog value)  $default,){
final _that = this;
switch (_that) {
case _UserWorshipLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserWorshipLog value)?  $default,){
final _that = this;
switch (_that) {
case _UserWorshipLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String worshipId,  DateTime date,  bool isCompleted,  DateTime? completedAt,  int currentValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserWorshipLog() when $default != null:
return $default(_that.id,_that.userId,_that.worshipId,_that.date,_that.isCompleted,_that.completedAt,_that.currentValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String worshipId,  DateTime date,  bool isCompleted,  DateTime? completedAt,  int currentValue)  $default,) {final _that = this;
switch (_that) {
case _UserWorshipLog():
return $default(_that.id,_that.userId,_that.worshipId,_that.date,_that.isCompleted,_that.completedAt,_that.currentValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String worshipId,  DateTime date,  bool isCompleted,  DateTime? completedAt,  int currentValue)?  $default,) {final _that = this;
switch (_that) {
case _UserWorshipLog() when $default != null:
return $default(_that.id,_that.userId,_that.worshipId,_that.date,_that.isCompleted,_that.completedAt,_that.currentValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserWorshipLog implements UserWorshipLog {
  const _UserWorshipLog({required this.id, required this.userId, required this.worshipId, required this.date, required this.isCompleted, this.completedAt, required this.currentValue});
  factory _UserWorshipLog.fromJson(Map<String, dynamic> json) => _$UserWorshipLogFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String worshipId;
@override final  DateTime date;
@override final  bool isCompleted;
@override final  DateTime? completedAt;
@override final  int currentValue;

/// Create a copy of UserWorshipLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserWorshipLogCopyWith<_UserWorshipLog> get copyWith => __$UserWorshipLogCopyWithImpl<_UserWorshipLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserWorshipLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserWorshipLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.worshipId, worshipId) || other.worshipId == worshipId)&&(identical(other.date, date) || other.date == date)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,worshipId,date,isCompleted,completedAt,currentValue);

@override
String toString() {
  return 'UserWorshipLog(id: $id, userId: $userId, worshipId: $worshipId, date: $date, isCompleted: $isCompleted, completedAt: $completedAt, currentValue: $currentValue)';
}


}

/// @nodoc
abstract mixin class _$UserWorshipLogCopyWith<$Res> implements $UserWorshipLogCopyWith<$Res> {
  factory _$UserWorshipLogCopyWith(_UserWorshipLog value, $Res Function(_UserWorshipLog) _then) = __$UserWorshipLogCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String worshipId, DateTime date, bool isCompleted, DateTime? completedAt, int currentValue
});




}
/// @nodoc
class __$UserWorshipLogCopyWithImpl<$Res>
    implements _$UserWorshipLogCopyWith<$Res> {
  __$UserWorshipLogCopyWithImpl(this._self, this._then);

  final _UserWorshipLog _self;
  final $Res Function(_UserWorshipLog) _then;

/// Create a copy of UserWorshipLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? worshipId = null,Object? date = null,Object? isCompleted = null,Object? completedAt = freezed,Object? currentValue = null,}) {
  return _then(_UserWorshipLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,worshipId: null == worshipId ? _self.worshipId : worshipId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
