import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_viewer/github/core/domain/github_repo.dart';
import 'package:github_repo_viewer/github/core/infrastructure/user_dto.dart';

part 'github_repo_dto.freezed.dart';
part 'github_repo_dto.g.dart';

String _descriptionFromJson(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class GithubRepoDTO with _$GithubRepoDTO {
  const GithubRepoDTO._();
  const factory GithubRepoDTO({
    required UserDTO owner,
    required String name,
    @JsonKey(fromJson: _descriptionFromJson) required String description,
    @JsonKey(name: 'stargazers_count') required int stargazerCount,
  }) = _GithubRepoDTO;

  factory GithubRepoDTO.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoDTOFromJson(json);

  factory GithubRepoDTO.fromDomain(GithubRepo _) {
    return GithubRepoDTO(
        owner: UserDTO.fromDomain(_.owner),
        name: _.name,
        description: _.description,
        stargazerCount: _.stargazerCount);
  }

  GithubRepo toDomain() {
    return GithubRepo(
      owner: owner.toDomain(),
      name: name,
      description: description,
      stargazerCount: stargazerCount,
    );
  }
}