// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_worship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyWorship {

 String get id; String get title; String get description; String get icon; String get category; int get gemReward; int get xpReward; bool get isRepeatable; bool get isDefault; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of DailyWorship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyWorshipCopyWith<DailyWorship> get copyWith => _$DailyWorshipCopyWithImpl<DailyWorship>(this as DailyWorship, _$identity);

  /// Serializes this DailyWorship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyWorship&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.category, category) || other.category == category)&&(identical(other.gemReward, gemReward) || other.gemReward == gemReward)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.isRepeatable, isRepeatable) || other.isRepeatable == isRepeatable)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,category,gemReward,xpReward,isRepeatable,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'DailyWorship(id: $id, title: $title, description: $description, icon: $icon, category: $category, gemReward: $gemReward, xpReward: $xpReward, isRepeatable: $isRepeatable, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DailyWorshipCopyWith<$Res>  {
  factory $DailyWorshipCopyWith(DailyWorship value, $Res Function(DailyWorship) _then) = _$DailyWorshipCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String icon, String category, int gemReward, int xpReward, bool isRepeatable, bool isDefault, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$DailyWorshipCopyWithImpl<$Res>
    implements $DailyWorshipCopyWith<$Res> {
  _$DailyWorshipCopyWithImpl(this._self, this._then);

  final DailyWorship _self;
  final $Res Function(DailyWorship) _then;

/// Create a copy of DailyWorship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? category = null,Object? gemReward = null,Object? xpReward = null,Object? isRepeatable = null,Object? isDefault = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,gemReward: null == gemReward ? _self.gemReward : gemReward // ignore: cast_nullable_to_non_nullable
as int,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,isRepeatable: null == isRepeatable ? _self.isRepeatable : isRepeatable // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyWorship].
extension DailyWorshipPatterns on DailyWorship {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyWorship value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyWorship() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyWorship value)  $default,){
final _that = this;
switch (_that) {
case _DailyWorship():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyWorship value)?  $default,){
final _that = this;
switch (_that) {
case _DailyWorship() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  String category,  int gemReward,  int xpReward,  bool isRepeatable,  bool isDefault,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyWorship() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.category,_that.gemReward,_that.xpReward,_that.isRepeatable,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String icon,  String category,  int gemReward,  int xpReward,  bool isRepeatable,  bool isDefault,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DailyWorship():
return $default(_that.id,_that.title,_that.description,_that.icon,_that.category,_that.gemReward,_that.xpReward,_that.isRepeatable,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String icon,  String category,  int gemReward,  int xpReward,  bool isRepeatable,  bool isDefault,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DailyWorship() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.icon,_that.category,_that.gemReward,_that.xpReward,_that.isRepeatable,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyWorship implements DailyWorship {
  const _DailyWorship({required this.id, required this.title, required this.description, required this.icon, required this.category, required this.gemReward, required this.xpReward, required this.isRepeatable, required this.isDefault, required this.createdAt, this.updatedAt});
  factory _DailyWorship.fromJson(Map<String, dynamic> json) => _$DailyWorshipFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String icon;
@override final  String category;
@override final  int gemReward;
@override final  int xpReward;
@override final  bool isRepeatable;
@override final  bool isDefault;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of DailyWorship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyWorshipCopyWith<_DailyWorship> get copyWith => __$DailyWorshipCopyWithImpl<_DailyWorship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyWorshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyWorship&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.category, category) || other.category == category)&&(identical(other.gemReward, gemReward) || other.gemReward == gemReward)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.isRepeatable, isRepeatable) || other.isRepeatable == isRepeatable)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,icon,category,gemReward,xpReward,isRepeatable,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'DailyWorship(id: $id, title: $title, description: $description, icon: $icon, category: $category, gemReward: $gemReward, xpReward: $xpReward, isRepeatable: $isRepeatable, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DailyWorshipCopyWith<$Res> implements $DailyWorshipCopyWith<$Res> {
  factory _$DailyWorshipCopyWith(_DailyWorship value, $Res Function(_DailyWorship) _then) = __$DailyWorshipCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String icon, String category, int gemReward, int xpReward, bool isRepeatable, bool isDefault, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$DailyWorshipCopyWithImpl<$Res>
    implements _$DailyWorshipCopyWith<$Res> {
  __$DailyWorshipCopyWithImpl(this._self, this._then);

  final _DailyWorship _self;
  final $Res Function(_DailyWorship) _then;

/// Create a copy of DailyWorship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? icon = null,Object? category = null,Object? gemReward = null,Object? xpReward = null,Object? isRepeatable = null,Object? isDefault = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_DailyWorship(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,gemReward: null == gemReward ? _self.gemReward : gemReward // ignore: cast_nullable_to_non_nullable
as int,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,isRepeatable: null == isRepeatable ? _self.isRepeatable : isRepeatable // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
