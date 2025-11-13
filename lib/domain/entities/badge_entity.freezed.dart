// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BadgeEntity {

 String get id; String get title; String get description; String get icon; int get targetValue; int get gemReward; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of BadgeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadgeEntityCopyWith<BadgeEntity> get copyWith => _$BadgeEntityCopyWithImpl<BadgeEntity>(this as BadgeEntity, _$identity);

  /// Serializes this BadgeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadgeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.gemReward, gemReward) || other.gemReward == gemReward)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,targetValue,gemReward,createdAt,updatedAt);

@override
String toString() {
  return 'BadgeEntity(id: $id, title: $title, description: $description, icon: $icon, targetValue: $targetValue, gemReward: $gemReward, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BadgeEntityCopyWith<$Res>  {
  factory $BadgeEntityCopyWith(BadgeEntity value, $Res Function(BadgeEntity) _then) = _$BadgeEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, int targetValue, int gemReward, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$BadgeEntityCopyWithImpl<$Res>
    implements $BadgeEntityCopyWith<$Res> {
  _$BadgeEntityCopyWithImpl(this._self, this._then);

  final BadgeEntity _self;
  final $Res Function(BadgeEntity) _then;

/// Create a copy of BadgeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? targetValue = null,Object? gemReward = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,gemReward: null == gemReward ? _self.gemReward : gemReward // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BadgeEntity].
extension BadgeEntityPatterns on BadgeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BadgeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BadgeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BadgeEntity value)  $default,){
final _that = this;
switch (_that) {
case _BadgeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BadgeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BadgeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int targetValue,  int gemReward,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BadgeEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.targetValue,_that.gemReward,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int targetValue,  int gemReward,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BadgeEntity():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.targetValue,_that.gemReward,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  int targetValue,  int gemReward,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BadgeEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.targetValue,_that.gemReward,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BadgeEntity implements BadgeEntity {
  const _BadgeEntity({required this.id, required this.title, required this.description, required this.icon, required this.targetValue, required this.gemReward, required this.createdAt, this.updatedAt});
  factory _BadgeEntity.fromJson(Map<String, dynamic> json) => _$BadgeEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  int targetValue;
@override final  int gemReward;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of BadgeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadgeEntityCopyWith<_BadgeEntity> get copyWith => __$BadgeEntityCopyWithImpl<_BadgeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BadgeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BadgeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.gemReward, gemReward) || other.gemReward == gemReward)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,targetValue,gemReward,createdAt,updatedAt);

@override
String toString() {
  return 'BadgeEntity(id: $id, title: $title, description: $description, icon: $icon, targetValue: $targetValue, gemReward: $gemReward, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BadgeEntityCopyWith<$Res> implements $BadgeEntityCopyWith<$Res> {
  factory _$BadgeEntityCopyWith(_BadgeEntity value, $Res Function(_BadgeEntity) _then) = __$BadgeEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, int targetValue, int gemReward, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$BadgeEntityCopyWithImpl<$Res>
    implements _$BadgeEntityCopyWith<$Res> {
  __$BadgeEntityCopyWithImpl(this._self, this._then);

  final _BadgeEntity _self;
  final $Res Function(_BadgeEntity) _then;

/// Create a copy of BadgeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? targetValue = null,Object? gemReward = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_BadgeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as int,gemReward: null == gemReward ? _self.gemReward : gemReward // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
