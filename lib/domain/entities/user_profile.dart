import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// Represents a user's profile information.
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String uid,
    String? email,
    String? displayName,
    String? photoURL,
    String? gender,
    String? fcmToken,
    required bool isPremium,
    required DateTime createdAt,
    DateTime? lastLoginAt,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}