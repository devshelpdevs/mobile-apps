// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin FieldsMixin {
  @JsonKey(name: 'first_name')
  late String firstName;
  @JsonKey(name: 'github_url')
  String? githubUrl;
  @JsonKey(name: 'is_verified')
  late bool isVerified;
  @JsonKey(name: 'last_name')
  late String lastName;
  @JsonKey(name: 'linkedin_url')
  String? linkedinUrl;
  @JsonKey(name: 'national_id_num')
  late String nationalIdNum;
  @JsonKey(name: 'person_id')
  late String personId;
  @JsonKey(name: 'phone_number')
  late String phoneNumber;
  @JsonKey(name: 'photo_id')
  String? photoId;
  Users? user;
}

@JsonSerializable(explicitToJson: true)
class Users extends JsonSerializable with EquatableMixin {
  Users();

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  @JsonKey(name: 'avatar_url')
  String? avatarUrl;

  @JsonKey(name: 'display_name')
  String? displayName;

  late String id;

  @override
  List<Object?> get props => [avatarUrl, displayName, id];
  @override
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Person extends JsonSerializable with EquatableMixin {
  Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @JsonKey(name: 'first_name')
  late String firstName;

  @JsonKey(name: 'github_url')
  String? githubUrl;

  @JsonKey(name: 'is_verified')
  late bool isVerified;

  @JsonKey(name: 'last_name')
  late String lastName;

  @JsonKey(name: 'linkedin_url')
  String? linkedinUrl;

  @JsonKey(name: 'national_id_num')
  late String nationalIdNum;

  @JsonKey(name: 'person_id')
  late String personId;

  @JsonKey(name: 'phone_number')
  late String phoneNumber;

  @JsonKey(name: 'photo_id')
  String? photoId;

  Users? user;

  @override
  List<Object?> get props => [
        firstName,
        githubUrl,
        isVerified,
        lastName,
        linkedinUrl,
        nationalIdNum,
        personId,
        phoneNumber,
        photoId,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Person$QueryRoot extends JsonSerializable with EquatableMixin {
  Person$QueryRoot();

  factory Person$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Person$QueryRootFromJson(json);

  @JsonKey(name: 'person_by_pk')
  Person? personByPk;

  @override
  List<Object?> get props => [personByPk];
  @override
  Map<String, dynamic> toJson() => _$Person$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FieldsMixin$Users extends JsonSerializable with EquatableMixin {
  FieldsMixin$Users();

  factory FieldsMixin$Users.fromJson(Map<String, dynamic> json) =>
      _$FieldsMixin$UsersFromJson(json);

  @JsonKey(name: 'avatar_url')
  String? avatarUrl;

  @JsonKey(name: 'display_name')
  String? displayName;

  late String id;

  @override
  List<Object?> get props => [avatarUrl, displayName, id];
  @override
  Map<String, dynamic> toJson() => _$FieldsMixin$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InsertPerson$MutationRoot extends JsonSerializable with EquatableMixin {
  InsertPerson$MutationRoot();

  factory InsertPerson$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$InsertPerson$MutationRootFromJson(json);

  @JsonKey(name: 'insert_person_one')
  Person? insertPersonOne;

  @override
  List<Object?> get props => [insertPersonOne];
  @override
  Map<String, dynamic> toJson() => _$InsertPerson$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePerson$MutationRoot extends JsonSerializable with EquatableMixin {
  DeletePerson$MutationRoot();

  factory DeletePerson$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$DeletePerson$MutationRootFromJson(json);

  @JsonKey(name: 'delete_person_by_pk')
  Person? deletePersonByPk;

  @override
  List<Object?> get props => [deletePersonByPk];
  @override
  Map<String, dynamic> toJson() => _$DeletePerson$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonArguments extends JsonSerializable with EquatableMixin {
  PersonArguments({required this.person_id});

  @override
  factory PersonArguments.fromJson(Map<String, dynamic> json) =>
      _$PersonArgumentsFromJson(json);

  late String person_id;

  @override
  List<Object?> get props => [person_id];
  @override
  Map<String, dynamic> toJson() => _$PersonArgumentsToJson(this);
}

final PERSON_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'person'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'person_id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'person_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'person_id'),
                  value: VariableNode(name: NameNode(value: 'person_id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'first_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'github_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'is_verified'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'last_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'linkedin_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'national_id_num'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'person_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'phone_number'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'photo_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'avatar_url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'display_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'fields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'person'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'first_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'github_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'is_verified'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'last_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'linkedin_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'national_id_num'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'person_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'phone_number'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'photo_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'avatar_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'display_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PersonQuery extends GraphQLQuery<Person$QueryRoot, PersonArguments> {
  PersonQuery({required this.variables});

  @override
  final DocumentNode document = PERSON_QUERY_DOCUMENT;

  @override
  final String operationName = 'person';

  @override
  final PersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Person$QueryRoot parse(Map<String, dynamic> json) =>
      Person$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class InsertPersonArguments extends JsonSerializable with EquatableMixin {
  InsertPersonArguments(
      {this.first_name,
      this.github_url,
      this.is_verified,
      this.last_name,
      this.linkedin_url,
      this.national_id_num,
      this.phone_number,
      this.photo_id,
      this.twitter_url,
      this.user_id});

  @override
  factory InsertPersonArguments.fromJson(Map<String, dynamic> json) =>
      _$InsertPersonArgumentsFromJson(json);

  final String? first_name;

  final String? github_url;

  final bool? is_verified;

  final String? last_name;

  final String? linkedin_url;

  final String? national_id_num;

  final String? phone_number;

  final String? photo_id;

  final String? twitter_url;

  final String? user_id;

  @override
  List<Object?> get props => [
        first_name,
        github_url,
        is_verified,
        last_name,
        linkedin_url,
        national_id_num,
        phone_number,
        photo_id,
        twitter_url,
        user_id
      ];
  @override
  Map<String, dynamic> toJson() => _$InsertPersonArgumentsToJson(this);
}

final INSERT_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insert_person'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first_name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'github_url')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'is_verified')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: false),
            defaultValue:
                DefaultValueNode(value: BooleanValueNode(value: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last_name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'linkedin_url')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'national_id_num')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone_number')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '42', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'photo_id')),
            type:
                NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(
                    value: '{12345678-abcd-ef12–345a-12345678abcd}',
                    isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'twitter_url')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'user_id')),
            type:
                NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: false),
            defaultValue: DefaultValueNode(
                value: StringValueNode(
                    value: '{12345678-abcd-ef12–345a-12345678abcd}',
                    isBlock: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_person_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'first_name'),
                        value:
                            VariableNode(name: NameNode(value: 'first_name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'github_url'),
                        value:
                            VariableNode(name: NameNode(value: 'github_url'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'is_verified'),
                        value:
                            VariableNode(name: NameNode(value: 'is_verified'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'last_name'),
                        value:
                            VariableNode(name: NameNode(value: 'last_name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'linkedin_url'),
                        value: VariableNode(
                            name: NameNode(value: 'linkedin_url'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'national_id_num'),
                        value: VariableNode(
                            name: NameNode(value: 'national_id_num'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'phone_number'),
                        value: VariableNode(
                            name: NameNode(value: 'phone_number'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'photo_id'),
                        value: VariableNode(name: NameNode(value: 'photo_id'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'twitter_url'),
                        value:
                            VariableNode(name: NameNode(value: 'twitter_url'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'user_id'),
                        value: VariableNode(name: NameNode(value: 'user_id')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'first_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'github_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'is_verified'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'last_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'linkedin_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'national_id_num'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'person_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'phone_number'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'photo_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'avatar_url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'display_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'fields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'person'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'first_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'github_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'is_verified'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'last_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'linkedin_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'national_id_num'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'person_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'phone_number'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'photo_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'avatar_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'display_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class InsertPersonMutation
    extends GraphQLQuery<InsertPerson$MutationRoot, InsertPersonArguments> {
  InsertPersonMutation({required this.variables});

  @override
  final DocumentNode document = INSERT_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = 'insert_person';

  @override
  final InsertPersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  InsertPerson$MutationRoot parse(Map<String, dynamic> json) =>
      InsertPerson$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePersonArguments extends JsonSerializable with EquatableMixin {
  DeletePersonArguments({required this.person_id});

  @override
  factory DeletePersonArguments.fromJson(Map<String, dynamic> json) =>
      _$DeletePersonArgumentsFromJson(json);

  late String person_id;

  @override
  List<Object?> get props => [person_id];
  @override
  Map<String, dynamic> toJson() => _$DeletePersonArgumentsToJson(this);
}

final DELETE_PERSON_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'delete_person'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'person_id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(
                value: StringValueNode(value: '', isBlock: false)),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'delete_person_by_pk'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'person_id'),
                  value: VariableNode(name: NameNode(value: 'person_id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'first_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'github_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'is_verified'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'last_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'linkedin_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'national_id_num'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'person_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'phone_number'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'photo_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'avatar_url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'display_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'fields'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(name: NameNode(value: 'person'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'first_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'github_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'is_verified'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'last_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'linkedin_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'national_id_num'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'person_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'phone_number'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'photo_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'avatar_url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'display_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class DeletePersonMutation
    extends GraphQLQuery<DeletePerson$MutationRoot, DeletePersonArguments> {
  DeletePersonMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PERSON_MUTATION_DOCUMENT;

  @override
  final String operationName = 'delete_person';

  @override
  final DeletePersonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeletePerson$MutationRoot parse(Map<String, dynamic> json) =>
      DeletePerson$MutationRoot.fromJson(json);
}
