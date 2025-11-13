// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LessonUnit {

 String get id; String get moduleId; String get title; String get description; int get ordering; int? get requiredLevel; bool get isLocked; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of LessonUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonUnitCopyWith<LessonUnit> get copyWith => _$LessonUnitCopyWithImpl<LessonUnit>(this as LessonUnit, _$identity);

  /// Serializes this LessonUnit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredLevel, requiredLevel) || other.requiredLevel == requiredLevel)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,title,description,ordering,requiredLevel,isLocked,createdAt,updatedAt);

@override
String toString() {
  return 'LessonUnit(id: $id, moduleId: $moduleId, title: $title, description: $description, ordering: $ordering, requiredLevel: $requiredLevel, isLocked: $isLocked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LessonUnitCopyWith<$Res>  {
  factory $LessonUnitCopyWith(LessonUnit value, $Res Function(LessonUnit) _then) = _$LessonUnitCopyWithImpl;
@useResult
$Res call({
 String id, String moduleId, String title, String description, int ordering, int? requiredLevel, bool isLocked, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$LessonUnitCopyWithImpl<$Res>
    implements $LessonUnitCopyWith<$Res> {
  _$LessonUnitCopyWithImpl(this._self, this._then);

  final LessonUnit _self;
  final $Res Function(LessonUnit) _then;

/// Create a copy of LessonUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? moduleId = null,Object? title = null,Object? description = null,Object? ordering = null,Object? requiredLevel = freezed,Object? isLocked = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredLevel: freezed == requiredLevel ? _self.requiredLevel : requiredLevel // ignore: cast_nullable_to_non_nullable
as int?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonUnit].
extension LessonUnitPatterns on LessonUnit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonUnit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonUnit value)  $default,){
final _that = this;
switch (_that) {
case _LessonUnit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonUnit value)?  $default,){
final _that = this;
switch (_that) {
case _LessonUnit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String moduleId,  String title,  String description,  int ordering,  int? requiredLevel,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonUnit() when $default != null:
return $default(_that.id,_that.moduleId,_that.title,_that.description,_that.ordering,_that.requiredLevel,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String moduleId,  String title,  String description,  int ordering,  int? requiredLevel,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _LessonUnit():
return $default(_that.id,_that.moduleId,_that.title,_that.description,_that.ordering,_that.requiredLevel,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String moduleId,  String title,  String description,  int ordering,  int? requiredLevel,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _LessonUnit() when $default != null:
return $default(_that.id,_that.moduleId,_that.title,_that.description,_that.ordering,_that.requiredLevel,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonUnit implements LessonUnit {
  const _LessonUnit({required this.id, required this.moduleId, required this.title, required this.description, required this.ordering, this.requiredLevel, required this.isLocked, required this.createdAt, this.updatedAt});
  factory _LessonUnit.fromJson(Map<String, dynamic> json) => _$LessonUnitFromJson(json);

@override final  String id;
@override final  String moduleId;
@override final  String title;
@override final  String description;
@override final  int ordering;
@override final  int? requiredLevel;
@override final  bool isLocked;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of LessonUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonUnitCopyWith<_LessonUnit> get copyWith => __$LessonUnitCopyWithImpl<_LessonUnit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonUnitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredLevel, requiredLevel) || other.requiredLevel == requiredLevel)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,title,description,ordering,requiredLevel,isLocked,createdAt,updatedAt);

@override
String toString() {
  return 'LessonUnit(id: $id, moduleId: $moduleId, title: $title, description: $description, ordering: $ordering, requiredLevel: $requiredLevel, isLocked: $isLocked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LessonUnitCopyWith<$Res> implements $LessonUnitCopyWith<$Res> {
  factory _$LessonUnitCopyWith(_LessonUnit value, $Res Function(_LessonUnit) _then) = __$LessonUnitCopyWithImpl;
@override @useResult
$Res call({
 String id, String moduleId, String title, String description, int ordering, int? requiredLevel, bool isLocked, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$LessonUnitCopyWithImpl<$Res>
    implements _$LessonUnitCopyWith<$Res> {
  __$LessonUnitCopyWithImpl(this._self, this._then);

  final _LessonUnit _self;
  final $Res Function(_LessonUnit) _then;

/// Create a copy of LessonUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? moduleId = null,Object? title = null,Object? description = null,Object? ordering = null,Object? requiredLevel = freezed,Object? isLocked = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_LessonUnit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredLevel: freezed == requiredLevel ? _self.requiredLevel : requiredLevel // ignore: cast_nullable_to_non_nullable
as int?,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
