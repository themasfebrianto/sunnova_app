import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunnova_app/domain/entities/entities.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoURL;
  final String? gender;
  final String? fcmToken;
  final bool isPremium;
  final DateTime createdAt;
  final DateTime? lastLoginAt;

  UserProfileModel({
    required this.uid,
    this.email,
    this.displayName,
    this.photoURL,
    this.gender,
    this.fcmToken,
    required this.isPremium,
    required this.createdAt,
    this.lastLoginAt,
  });

  UserProfile toEntity() {
    return UserProfile(
      uid: uid,
      email: email,
      displayName: displayName,
      photoURL: photoURL,
      gender: gender,
      fcmToken: fcmToken,
      isPremium: isPremium,
      createdAt: createdAt,
      lastLoginAt: lastLoginAt,
    );
  }

  factory UserProfileModel.fromEntity(UserProfile entity) {
    return UserProfileModel(
      uid: entity.uid,
      email: entity.email,
      displayName: entity.displayName,
      photoURL: entity.photoURL,
      gender: entity.gender,
      fcmToken: entity.fcmToken,
      isPremium: entity.isPremium,
      createdAt: entity.createdAt,
      lastLoginAt: entity.lastLoginAt,
    );
  }

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}
