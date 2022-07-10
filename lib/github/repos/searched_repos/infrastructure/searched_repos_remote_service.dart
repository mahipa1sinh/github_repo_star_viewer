import 'package:dio/dio.dart';
import 'package:github_repo_viewer/core/infrastructure/dio_extensions.dart';
import 'package:github_repo_viewer/core/infrastructure/network_exceptions.dart';
import 'package:github_repo_viewer/core/infrastructure/remote_response.dart';
import 'package:github_repo_viewer/github/core/infrastructure/github_headers.dart';
import 'package:github_repo_viewer/github/core/infrastructure/github_headers_cache.dart';
import 'package:github_repo_viewer/github/core/infrastructure/github_repo_dto.dart';
import 'package:github_repo_viewer/github/core/infrastructure/pagination_config.dart';
import 'package:github_repo_viewer/github/repos/core/infrastructure/repos_remote_service.dart';

class SearchedRepoRemoteService extends ReposRemoteService {
  SearchedRepoRemoteService(Dio _dio, GithubHeadersCache _githubHeadersCache)
      : super(_dio, _githubHeadersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getSearchedReposPage(
    String query,
    int page,
  ) async =>
      super.getPage(
        requestUri: Uri.https(
          'api.github.com',
          '/search/repositories',
          {
            'q': query,
            'page': '$page',
            'per_page': '${PaginationConfig.itemsPerPage}',
          },
        ),
        jsonDataSelector: (json) => json['items'] as List<dynamic>,
      );
}
