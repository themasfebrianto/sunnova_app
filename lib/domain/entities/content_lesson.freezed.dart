// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentLesson {

 String get id; String get unitId; String get title; String get content; String? get videoUrl; String? get audioUrl; int get ordering; int get requiredTimeInSeconds; int get xpReward; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of ContentLesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentLessonCopyWith<ContentLesson> get copyWith => _$ContentLessonCopyWithImpl<ContentLesson>(this as ContentLesson, _$identity);

  /// Serializes this ContentLesson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredTimeInSeconds, requiredTimeInSeconds) || other.requiredTimeInSeconds == requiredTimeInSeconds)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitId,title,content,videoUrl,audioUrl,ordering,requiredTimeInSeconds,xpReward,createdAt,updatedAt);

@override
String toString() {
  return 'ContentLesson(id: $id, unitId: $unitId, title: $title, content: $content, videoUrl: $videoUrl, audioUrl: $audioUrl, ordering: $ordering, requiredTimeInSeconds: $requiredTimeInSeconds, xpReward: $xpReward, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ContentLessonCopyWith<$Res>  {
  factory $ContentLessonCopyWith(ContentLesson value, $Res Function(ContentLesson) _then) = _$ContentLessonCopyWithImpl;
@useResult
$Res call({
 String id, String unitId, String title, String content, String? videoUrl, String? audioUrl, int ordering, int requiredTimeInSeconds, int xpReward, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ContentLessonCopyWithImpl<$Res>
    implements $ContentLessonCopyWith<$Res> {
  _$ContentLessonCopyWithImpl(this._self, this._then);

  final ContentLesson _self;
  final $Res Function(ContentLesson) _then;

/// Create a copy of ContentLesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? unitId = null,Object? title = null,Object? content = null,Object? videoUrl = freezed,Object? audioUrl = freezed,Object? ordering = null,Object? requiredTimeInSeconds = null,Object? xpReward = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,audioUrl: freezed == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String?,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredTimeInSeconds: null == requiredTimeInSeconds ? _self.requiredTimeInSeconds : requiredTimeInSeconds // ignore: cast_nullable_to_non_nullable
as int,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentLesson].
extension ContentLessonPatterns on ContentLesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentLesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentLesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentLesson value)  $default,){
final _that = this;
switch (_that) {
case _ContentLesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentLesson value)?  $default,){
final _that = this;
switch (_that) {
case _ContentLesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String unitId,  String title,  String content,  String? videoUrl,  String? audioUrl,  int ordering,  int requiredTimeInSeconds,  int xpReward,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentLesson() when $default != null:
return $default(_that.id,_that.unitId,_that.title,_that.content,_that.videoUrl,_that.audioUrl,_that.ordering,_that.requiredTimeInSeconds,_that.xpReward,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String unitId,  String title,  String content,  String? videoUrl,  String? audioUrl,  int ordering,  int requiredTimeInSeconds,  int xpReward,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ContentLesson():
return $default(_that.id,_that.unitId,_that.title,_that.content,_that.videoUrl,_that.audioUrl,_that.ordering,_that.requiredTimeInSeconds,_that.xpReward,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String unitId,  String title,  String content,  String? videoUrl,  String? audioUrl,  int ordering,  int requiredTimeInSeconds,  int xpReward,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ContentLesson() when $default != null:
return $default(_that.id,_that.unitId,_that.title,_that.content,_that.videoUrl,_that.audioUrl,_that.ordering,_that.requiredTimeInSeconds,_that.xpReward,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentLesson implements ContentLesson {
  const _ContentLesson({required this.id, required this.unitId, required this.title, required this.content, this.videoUrl, this.audioUrl, required this.ordering, required this.requiredTimeInSeconds, required this.xpReward, required this.createdAt, this.updatedAt});
  factory _ContentLesson.fromJson(Map<String, dynamic> json) => _$ContentLessonFromJson(json);

@override final  String id;
@override final  String unitId;
@override final  String title;
@override final  String content;
@override final  String? videoUrl;
@override final  String? audioUrl;
@override final  int ordering;
@override final  int requiredTimeInSeconds;
@override final  int xpReward;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ContentLesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentLessonCopyWith<_ContentLesson> get copyWith => __$ContentLessonCopyWithImpl<_ContentLesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentLessonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentLesson&&(identical(other.id, id) || other.id == id)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.requiredTimeInSeconds, requiredTimeInSeconds) || other.requiredTimeInSeconds == requiredTimeInSeconds)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitId,title,content,videoUrl,audioUrl,ordering,requiredTimeInSeconds,xpReward,createdAt,updatedAt);

@override
String toString() {
  return 'ContentLesson(id: $id, unitId: $unitId, title: $title, content: $content, videoUrl: $videoUrl, audioUrl: $audioUrl, ordering: $ordering, requiredTimeInSeconds: $requiredTimeInSeconds, xpReward: $xpReward, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ContentLessonCopyWith<$Res> implements $ContentLessonCopyWith<$Res> {
  factory _$ContentLessonCopyWith(_ContentLesson value, $Res Function(_ContentLesson) _then) = __$ContentLessonCopyWithImpl;
@override @useResult
$Res call({
 String id, String unitId, String title, String content, String? videoUrl, String? audioUrl, int ordering, int requiredTimeInSeconds, int xpReward, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ContentLessonCopyWithImpl<$Res>
    implements _$ContentLessonCopyWith<$Res> {
  __$ContentLessonCopyWithImpl(this._self, this._then);

  final _ContentLesson _self;
  final $Res Function(_ContentLesson) _then;

/// Create a copy of ContentLesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? unitId = null,Object? title = null,Object? content = null,Object? videoUrl = freezed,Object? audioUrl = freezed,Object? ordering = null,Object? requiredTimeInSeconds = null,Object? xpReward = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_ContentLesson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,audioUrl: freezed == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String?,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,requiredTimeInSeconds: null == requiredTimeInSeconds ? _self.requiredTimeInSeconds : requiredTimeInSeconds // ignore: cast_nullable_to_non_nullable
as int,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
