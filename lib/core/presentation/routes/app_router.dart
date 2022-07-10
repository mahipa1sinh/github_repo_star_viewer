// Using Auto Route, need dollar sign to auto generate AppRouter

import 'package:auto_route/annotations.dart';
import 'package:github_repo_viewer/auth/presentation/authorization_page.dart';
import 'package:github_repo_viewer/auth/presentation/sign_in_page.dart';
import 'package:github_repo_viewer/github/detail/presentation/repo_detail_page.dart';
import 'package:github_repo_viewer/github/repos/searched_repos/presentation/searched_repos_page.dart';
import 'package:github_repo_viewer/splash/presentation/splash_page.dart';
import 'package:github_repo_viewer/github/repos/starred_repos/presentation/starred_repos_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: AuthorizationPage, path: '/auth'),
    MaterialRoute(page: StarredReposPage, path: '/starred'),
    MaterialRoute(page: SearchedReposPage, path: '/searched'),
    MaterialRoute(page: RepoDetailPage, path: '/detail'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
