// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_shop_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemShopEntity {

 String get id; String get title; String get description; String get icon; int get gemCost; String get effect; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of ItemShopEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemShopEntityCopyWith<ItemShopEntity> get copyWith => _$ItemShopEntityCopyWithImpl<ItemShopEntity>(this as ItemShopEntity, _$identity);

  /// Serializes this ItemShopEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemShopEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.gemCost, gemCost) || other.gemCost == gemCost)&&(identical(other.effect, effect) || other.effect == effect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,gemCost,effect,createdAt,updatedAt);

@override
String toString() {
  return 'ItemShopEntity(id: $id, title: $title, description: $description, icon: $icon, gemCost: $gemCost, effect: $effect, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ItemShopEntityCopyWith<$Res>  {
  factory $ItemShopEntityCopyWith(ItemShopEntity value, $Res Function(ItemShopEntity) _then) = _$ItemShopEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, int gemCost, String effect, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ItemShopEntityCopyWithImpl<$Res>
    implements $ItemShopEntityCopyWith<$Res> {
  _$ItemShopEntityCopyWithImpl(this._self, this._then);

  final ItemShopEntity _self;
  final $Res Function(ItemShopEntity) _then;

/// Create a copy of ItemShopEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? gemCost = null,Object? effect = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,gemCost: null == gemCost ? _self.gemCost : gemCost // ignore: cast_nullable_to_non_nullable
as int,effect: null == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemShopEntity].
extension ItemShopEntityPatterns on ItemShopEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemShopEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemShopEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemShopEntity value)  $default,){
final _that = this;
switch (_that) {
case _ItemShopEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemShopEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ItemShopEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int gemCost,  String effect,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemShopEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.gemCost,_that.effect,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  int gemCost,  String effect,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ItemShopEntity():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.gemCost,_that.effect,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  int gemCost,  String effect,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ItemShopEntity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.gemCost,_that.effect,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemShopEntity implements ItemShopEntity {
  const _ItemShopEntity({required this.id, required this.title, required this.description, required this.icon, required this.gemCost, required this.effect, required this.createdAt, this.updatedAt});
  factory _ItemShopEntity.fromJson(Map<String, dynamic> json) => _$ItemShopEntityFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  int gemCost;
@override final  String effect;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ItemShopEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemShopEntityCopyWith<_ItemShopEntity> get copyWith => __$ItemShopEntityCopyWithImpl<_ItemShopEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemShopEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemShopEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.gemCost, gemCost) || other.gemCost == gemCost)&&(identical(other.effect, effect) || other.effect == effect)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,gemCost,effect,createdAt,updatedAt);

@override
String toString() {
  return 'ItemShopEntity(id: $id, title: $title, description: $description, icon: $icon, gemCost: $gemCost, effect: $effect, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ItemShopEntityCopyWith<$Res> implements $ItemShopEntityCopyWith<$Res> {
  factory _$ItemShopEntityCopyWith(_ItemShopEntity value, $Res Function(_ItemShopEntity) _then) = __$ItemShopEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, int gemCost, String effect, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ItemShopEntityCopyWithImpl<$Res>
    implements _$ItemShopEntityCopyWith<$Res> {
  __$ItemShopEntityCopyWithImpl(this._self, this._then);

  final _ItemShopEntity _self;
  final $Res Function(_ItemShopEntity) _then;

/// Create a copy of ItemShopEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? gemCost = null,Object? effect = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_ItemShopEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,gemCost: null == gemCost ? _self.gemCost : gemCost // ignore: cast_nullable_to_non_nullable
as int,effect: null == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
