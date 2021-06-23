// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users()
    ..avatarUrl = json['avatar_url'] as String?
    ..displayName = json['display_name'] as String?
    ..id = json['id'] as String;
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'display_name': instance.displayName,
      'id': instance.id,
    };

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person()
    ..firstName = json['first_name'] as String
    ..githubUrl = json['github_url'] as String?
    ..isVerified = json['is_verified'] as bool
    ..lastName = json['last_name'] as String
    ..linkedinUrl = json['linkedin_url'] as String?
    ..nationalIdNum = json['national_id_num'] as String
    ..personId = json['person_id'] as String
    ..phoneNumber = json['phone_number'] as String
    ..photoId = json['photo_id'] as String?
    ..user = json['user'] == null
        ? null
        : Users.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'github_url': instance.githubUrl,
      'is_verified': instance.isVerified,
      'last_name': instance.lastName,
      'linkedin_url': instance.linkedinUrl,
      'national_id_num': instance.nationalIdNum,
      'person_id': instance.personId,
      'phone_number': instance.phoneNumber,
      'photo_id': instance.photoId,
      'user': instance.user?.toJson(),
    };

Person$QueryRoot _$Person$QueryRootFromJson(Map<String, dynamic> json) {
  return Person$QueryRoot()
    ..personByPk = json['person_by_pk'] == null
        ? null
        : Person.fromJson(json['person_by_pk'] as Map<String, dynamic>);
}

Map<String, dynamic> _$Person$QueryRootToJson(Person$QueryRoot instance) =>
    <String, dynamic>{
      'person_by_pk': instance.personByPk?.toJson(),
    };

FieldsMixin$Users _$FieldsMixin$UsersFromJson(Map<String, dynamic> json) {
  return FieldsMixin$Users()
    ..avatarUrl = json['avatar_url'] as String?
    ..displayName = json['display_name'] as String?
    ..id = json['id'] as String;
}

Map<String, dynamic> _$FieldsMixin$UsersToJson(FieldsMixin$Users instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'display_name': instance.displayName,
      'id': instance.id,
    };

InsertPerson$MutationRoot _$InsertPerson$MutationRootFromJson(
    Map<String, dynamic> json) {
  return InsertPerson$MutationRoot()
    ..insertPersonOne = json['insert_person_one'] == null
        ? null
        : Person.fromJson(json['insert_person_one'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InsertPerson$MutationRootToJson(
        InsertPerson$MutationRoot instance) =>
    <String, dynamic>{
      'insert_person_one': instance.insertPersonOne?.toJson(),
    };

DeletePerson$MutationRoot _$DeletePerson$MutationRootFromJson(
    Map<String, dynamic> json) {
  return DeletePerson$MutationRoot()
    ..deletePersonByPk = json['delete_person_by_pk'] == null
        ? null
        : Person.fromJson(json['delete_person_by_pk'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeletePerson$MutationRootToJson(
        DeletePerson$MutationRoot instance) =>
    <String, dynamic>{
      'delete_person_by_pk': instance.deletePersonByPk?.toJson(),
    };

PersonArguments _$PersonArgumentsFromJson(Map<String, dynamic> json) {
  return PersonArguments(
    person_id: json['person_id'] as String,
  );
}

Map<String, dynamic> _$PersonArgumentsToJson(PersonArguments instance) =>
    <String, dynamic>{
      'person_id': instance.person_id,
    };

InsertPersonArguments _$InsertPersonArgumentsFromJson(
    Map<String, dynamic> json) {
  return InsertPersonArguments(
    first_name: json['first_name'] as String?,
    github_url: json['github_url'] as String?,
    is_verified: json['is_verified'] as bool?,
    last_name: json['last_name'] as String?,
    linkedin_url: json['linkedin_url'] as String?,
    national_id_num: json['national_id_num'] as String?,
    phone_number: json['phone_number'] as String?,
    photo_id: json['photo_id'] as String?,
    twitter_url: json['twitter_url'] as String?,
    user_id: json['user_id'] as String?,
  );
}

Map<String, dynamic> _$InsertPersonArgumentsToJson(
        InsertPersonArguments instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'github_url': instance.github_url,
      'is_verified': instance.is_verified,
      'last_name': instance.last_name,
      'linkedin_url': instance.linkedin_url,
      'national_id_num': instance.national_id_num,
      'phone_number': instance.phone_number,
      'photo_id': instance.photo_id,
      'twitter_url': instance.twitter_url,
      'user_id': instance.user_id,
    };

DeletePersonArguments _$DeletePersonArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeletePersonArguments(
    person_id: json['person_id'] as String,
  );
}

Map<String, dynamic> _$DeletePersonArgumentsToJson(
        DeletePersonArguments instance) =>
    <String, dynamic>{
      'person_id': instance.person_id,
    };
