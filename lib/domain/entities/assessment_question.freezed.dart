// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssessmentQuestion {

 String get id; String get lessonId; String get question; List<String> get options; int get correctAnswerIndex; String get explanation; int get difficultyLevel; int get ordering; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentQuestionCopyWith<AssessmentQuestion> get copyWith => _$AssessmentQuestionCopyWithImpl<AssessmentQuestion>(this as AssessmentQuestion, _$identity);

  /// Serializes this AssessmentQuestion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.correctAnswerIndex, correctAnswerIndex) || other.correctAnswerIndex == correctAnswerIndex)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.difficultyLevel, difficultyLevel) || other.difficultyLevel == difficultyLevel)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,question,const DeepCollectionEquality().hash(options),correctAnswerIndex,explanation,difficultyLevel,ordering,createdAt,updatedAt);

@override
String toString() {
  return 'AssessmentQuestion(id: $id, lessonId: $lessonId, question: $question, options: $options, correctAnswerIndex: $correctAnswerIndex, explanation: $explanation, difficultyLevel: $difficultyLevel, ordering: $ordering, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AssessmentQuestionCopyWith<$Res>  {
  factory $AssessmentQuestionCopyWith(AssessmentQuestion value, $Res Function(AssessmentQuestion) _then) = _$AssessmentQuestionCopyWithImpl;
@useResult
$Res call({
 String id, String lessonId, String question, List<String> options, int correctAnswerIndex, String explanation, int difficultyLevel, int ordering, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$AssessmentQuestionCopyWithImpl<$Res>
    implements $AssessmentQuestionCopyWith<$Res> {
  _$AssessmentQuestionCopyWithImpl(this._self, this._then);

  final AssessmentQuestion _self;
  final $Res Function(AssessmentQuestion) _then;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lessonId = null,Object? question = null,Object? options = null,Object? correctAnswerIndex = null,Object? explanation = null,Object? difficultyLevel = null,Object? ordering = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctAnswerIndex: null == correctAnswerIndex ? _self.correctAnswerIndex : correctAnswerIndex // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,difficultyLevel: null == difficultyLevel ? _self.difficultyLevel : difficultyLevel // ignore: cast_nullable_to_non_nullable
as int,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssessmentQuestion].
extension AssessmentQuestionPatterns on AssessmentQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentQuestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentQuestion value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentQuestion value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String lessonId,  String question,  List<String> options,  int correctAnswerIndex,  String explanation,  int difficultyLevel,  int ordering,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
return $default(_that.id,_that.lessonId,_that.question,_that.options,_that.correctAnswerIndex,_that.explanation,_that.difficultyLevel,_that.ordering,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String lessonId,  String question,  List<String> options,  int correctAnswerIndex,  String explanation,  int difficultyLevel,  int ordering,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestion():
return $default(_that.id,_that.lessonId,_that.question,_that.options,_that.correctAnswerIndex,_that.explanation,_that.difficultyLevel,_that.ordering,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String lessonId,  String question,  List<String> options,  int correctAnswerIndex,  String explanation,  int difficultyLevel,  int ordering,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentQuestion() when $default != null:
return $default(_that.id,_that.lessonId,_that.question,_that.options,_that.correctAnswerIndex,_that.explanation,_that.difficultyLevel,_that.ordering,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentQuestion implements AssessmentQuestion {
  const _AssessmentQuestion({required this.id, required this.lessonId, required this.question, required final  List<String> options, required this.correctAnswerIndex, required this.explanation, required this.difficultyLevel, required this.ordering, required this.createdAt, this.updatedAt}): _options = options;
  factory _AssessmentQuestion.fromJson(Map<String, dynamic> json) => _$AssessmentQuestionFromJson(json);

@override final  String id;
@override final  String lessonId;
@override final  String question;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

@override final  int correctAnswerIndex;
@override final  String explanation;
@override final  int difficultyLevel;
@override final  int ordering;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentQuestionCopyWith<_AssessmentQuestion> get copyWith => __$AssessmentQuestionCopyWithImpl<_AssessmentQuestion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentQuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctAnswerIndex, correctAnswerIndex) || other.correctAnswerIndex == correctAnswerIndex)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.difficultyLevel, difficultyLevel) || other.difficultyLevel == difficultyLevel)&&(identical(other.ordering, ordering) || other.ordering == ordering)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,question,const DeepCollectionEquality().hash(_options),correctAnswerIndex,explanation,difficultyLevel,ordering,createdAt,updatedAt);

@override
String toString() {
  return 'AssessmentQuestion(id: $id, lessonId: $lessonId, question: $question, options: $options, correctAnswerIndex: $correctAnswerIndex, explanation: $explanation, difficultyLevel: $difficultyLevel, ordering: $ordering, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AssessmentQuestionCopyWith<$Res> implements $AssessmentQuestionCopyWith<$Res> {
  factory _$AssessmentQuestionCopyWith(_AssessmentQuestion value, $Res Function(_AssessmentQuestion) _then) = __$AssessmentQuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String lessonId, String question, List<String> options, int correctAnswerIndex, String explanation, int difficultyLevel, int ordering, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$AssessmentQuestionCopyWithImpl<$Res>
    implements _$AssessmentQuestionCopyWith<$Res> {
  __$AssessmentQuestionCopyWithImpl(this._self, this._then);

  final _AssessmentQuestion _self;
  final $Res Function(_AssessmentQuestion) _then;

/// Create a copy of AssessmentQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lessonId = null,Object? question = null,Object? options = null,Object? correctAnswerIndex = null,Object? explanation = null,Object? difficultyLevel = null,Object? ordering = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_AssessmentQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctAnswerIndex: null == correctAnswerIndex ? _self.correctAnswerIndex : correctAnswerIndex // ignore: cast_nullable_to_non_nullable
as int,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,difficultyLevel: null == difficultyLevel ? _self.difficultyLevel : difficultyLevel // ignore: cast_nullable_to_non_nullable
as int,ordering: null == ordering ? _self.ordering : ordering // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
