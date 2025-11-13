// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModule {

 String get id; String get title; String get description; String get icon; int get ordering; int get requiredXpToUnlock; bool get isLocked; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModuleCopyWith<CourseModule> get copyWith => _$CourseModuleCopyWithImpl<CourseModule>(this as CourseModule, _$identity);

  /// Serializes this CourseModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredXpToUnlock, requiredXpToUnlock) || other.requiredXpToUnlock == requiredXpToUnlock)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,ordering,requiredXpToUnlock,isLocked,createdAt,updatedAt);

@override
String toString() {
  return 'CourseModule(id: $id, title: $title, description: $description, icon: $icon, ordering: $ordering, requiredXpToUnlock: $requiredXpToUnlock, isLocked: $isLocked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CourseModuleCopyWith<$Res>  {
  factory $CourseModuleCopyWith(CourseModule value, $Res Function(CourseModule) _then) = _$CourseModuleCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, int ordering, int requiredXpToUnlock, bool isLocked, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$CourseModuleCopyWithImpl<$Res>
    implements $CourseModuleCopyWith<$Res> {
  _$CourseModuleCopyWithImpl(this._self, this._then);

  final CourseModule _self;
  final $Res Function(CourseModule) _then;

/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? ordering = null,Object? requiredXpToUnlock = null,Object? isLocked = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredXpToUnlock: null == requiredXpToUnlock ? _self.requiredXpToUnlock : requiredXpToUnlock // ignore: cast_nullable_to_non_nullable
as int,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseModule].
extension CourseModulePatterns on CourseModule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModule value)  $default,){
final _that = this;
switch (_that) {
case _CourseModule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModule value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int ordering,  int requiredXpToUnlock,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.ordering,_that.requiredXpToUnlock,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int ordering,  int requiredXpToUnlock,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CourseModule():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.ordering,_that.requiredXpToUnlock,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  int ordering,  int requiredXpToUnlock,  bool isLocked,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CourseModule() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.ordering,_that.requiredXpToUnlock,_that.isLocked,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModule implements CourseModule {
  const _CourseModule({required this.id, required this.title, required this.description, required this.icon, required this.ordering, required this.requiredXpToUnlock, required this.isLocked, required this.createdAt, this.updatedAt});
  factory _CourseModule.fromJson(Map<String, dynamic> json) => _$CourseModuleFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  int ordering;
@override final  int requiredXpToUnlock;
@override final  bool isLocked;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModuleCopyWith<_CourseModule> get copyWith => __$CourseModuleCopyWithImpl<_CourseModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModule&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredXpToUnlock, requiredXpToUnlock) || other.requiredXpToUnlock == requiredXpToUnlock)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,ordering,requiredXpToUnlock,isLocked,createdAt,updatedAt);

@override
String toString() {
  return 'CourseModule(id: $id, title: $title, description: $description, icon: $icon, ordering: $ordering, requiredXpToUnlock: $requiredXpToUnlock, isLocked: $isLocked, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CourseModuleCopyWith<$Res> implements $CourseModuleCopyWith<$Res> {
  factory _$CourseModuleCopyWith(_CourseModule value, $Res Function(_CourseModule) _then) = __$CourseModuleCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, int ordering, int requiredXpToUnlock, bool isLocked, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$CourseModuleCopyWithImpl<$Res>
    implements _$CourseModuleCopyWith<$Res> {
  __$CourseModuleCopyWithImpl(this._self, this._then);

  final _CourseModule _self;
  final $Res Function(_CourseModule) _then;

/// Create a copy of CourseModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? ordering = null,Object? requiredXpToUnlock = null,Object? isLocked = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_CourseModule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredXpToUnlock: null == requiredXpToUnlock ? _self.requiredXpToUnlock : requiredXpToUnlock // ignore: cast_nullable_to_non_nullable
as int,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
