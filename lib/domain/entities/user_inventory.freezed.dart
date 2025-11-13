// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInventory {

 String get id; String get userId; String get itemId; int get quantity;
/// Create a copy of UserInventory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInventoryCopyWith<UserInventory> get copyWith => _$UserInventoryCopyWithImpl<UserInventory>(this as UserInventory, _$identity);

  /// Serializes this UserInventory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInventory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,itemId,quantity);

@override
String toString() {
  return 'UserInventory(id: $id, userId: $userId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UserInventoryCopyWith<$Res>  {
  factory $UserInventoryCopyWith(UserInventory value, $Res Function(UserInventory) _then) = _$UserInventoryCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String itemId, int quantity
});




}
/// @nodoc
class _$UserInventoryCopyWithImpl<$Res>
    implements $UserInventoryCopyWith<$Res> {
  _$UserInventoryCopyWithImpl(this._self, this._then);

  final UserInventory _self;
  final $Res Function(UserInventory) _then;

/// Create a copy of UserInventory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInventory].
extension UserInventoryPatterns on UserInventory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInventory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInventory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInventory value)  $default,){
final _that = this;
switch (_that) {
case _UserInventory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInventory value)?  $default,){
final _that = this;
switch (_that) {
case _UserInventory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String itemId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInventory() when $default != null:
return $default(_that.id,_that.userId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String itemId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _UserInventory():
return $default(_that.id,_that.userId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String itemId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _UserInventory() when $default != null:
return $default(_that.id,_that.userId,_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInventory implements UserInventory {
  const _UserInventory({required this.id, required this.userId, required this.itemId, required this.quantity});
  factory _UserInventory.fromJson(Map<String, dynamic> json) => _$UserInventoryFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String itemId;
@override final  int quantity;

/// Create a copy of UserInventory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInventoryCopyWith<_UserInventory> get copyWith => __$UserInventoryCopyWithImpl<_UserInventory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInventoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInventory&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,itemId,quantity);

@override
String toString() {
  return 'UserInventory(id: $id, userId: $userId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UserInventoryCopyWith<$Res> implements $UserInventoryCopyWith<$Res> {
  factory _$UserInventoryCopyWith(_UserInventory value, $Res Function(_UserInventory) _then) = __$UserInventoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String itemId, int quantity
});




}
/// @nodoc
class __$UserInventoryCopyWithImpl<$Res>
    implements _$UserInventoryCopyWith<$Res> {
  __$UserInventoryCopyWithImpl(this._self, this._then);

  final _UserInventory _self;
  final $Res Function(_UserInventory) _then;

/// Create a copy of UserInventory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_UserInventory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
