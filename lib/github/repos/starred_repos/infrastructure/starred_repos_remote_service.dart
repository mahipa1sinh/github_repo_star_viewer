import 'package:dio/dio.dart';
import 'package:github_repo_viewer/core/infrastructure/remote_response.dart';
import 'package:github_repo_viewer/github/core/infrastructure/github_headers_cache.dart';
import 'package:github_repo_viewer/github/core/infrastructure/github_repo_dto.dart';
import 'package:github_repo_viewer/github/core/infrastructure/pagination_config.dart';
import 'package:github_repo_viewer/github/repos/core/infrastructure/repos_remote_service.dart';

class StarredRepoRemoteService extends ReposRemoteService {
  StarredRepoRemoteService(
    Dio _dio,
    GithubHeadersCache _githubHeadersCache,
  ) : super(_dio, _githubHeadersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
    int page,
  ) async =>
      super.getPage(
        requestUri: Uri.https(
          'api.github.com',
          '/user/starred',
          {
            'page': '$page',
            'per_page': PaginationConfig.itemsPerPage.toString(),
          },
        ),
        jsonDataSelector: (json) => json as List<dynamic>,
      );
}
