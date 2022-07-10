import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_viewer/core/infrastructure/toast.dart';
import 'package:github_repo_viewer/github/core/presentation/no_results_display.dart';
import 'package:github_repo_viewer/github/core/shared/providers.dart';
import 'package:github_repo_viewer/github/repos/core/application/paginated_repos_notifier.dart';
import 'package:github_repo_viewer/github/repos/starred_repos/application/starred_repos_notifier.dart';
import 'package:github_repo_viewer/github/repos/core/presentation/failure_repo_tile.dart';
import 'package:github_repo_viewer/github/repos/core/presentation/loading_repo_tile.dart';
import 'package:github_repo_viewer/github/repos/core/presentation/repo_tile.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

typedef PaginatedReposNotifierProvider = AutoDisposeStateNotifierProvider<
    PaginatedReposNotifier, PaginatedReposState>;

class PaginatedReposListView extends ConsumerStatefulWidget {
  final PaginatedReposNotifierProvider paginatedReposNotifierProvider;
  final void Function(WidgetRef ref) getNextPage;

  final String noResultsMessage;

  const PaginatedReposListView({
    Key? key,
    required this.paginatedReposNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  ConsumerState<PaginatedReposListView> createState() =>
      _PaginatedReposListViewState();
}

class _PaginatedReposListViewState
    extends ConsumerState<PaginatedReposListView> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.listen<PaginatedReposState>(
          widget.paginatedReposNotifierProvider,
          (previous, next) {
            next.map(
              initial: (_) => canLoadNextPage = true,
              loadInProgress: (_) => canLoadNextPage = false,
              loadSuccess: (_) {
                if (!_.repos.isFresh && !hasAlreadyShownNoConnectionToast) {
                  hasAlreadyShownNoConnectionToast = true;
                  showNoConnectionToast(
                    "you're not Online. Some information may be outdated.",
                    context,
                  );
                }

                canLoadNextPage = _.isNextPageAvailable;
              },
              loadFailure: (_) => canLoadNextPage = false,
            );
          },
        );
        final state = ref.watch(widget.paginatedReposNotifierProvider);
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final matrics = notification.metrics;
            final limit =
                matrics.maxScrollExtent - matrics.viewportDimension / 3;
            if (canLoadNextPage && matrics.pixels >= limit) {
              canLoadNextPage = false;
              // ref
              //     .read(widget.paginatedReposNotifierProvider.notifier)
              //     .getNextPage();
              widget.getNextPage(ref);
            }
            return false;
          },
          child: state.maybeWhen<bool>(
            loadSuccess: (repos, _) => repos.entity.isEmpty,
            orElse: () => false,
          )
              ? NoResultsDisplay(
                  message: widget.noResultsMessage,
                )
              : _PaginatedListView(state: state),
        );
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginatedReposState state;

  @override
  Widget build(BuildContext context) {
    // context.findAncestorWidgetOfExactType<FloatingSearchBar>()?.height;
    final fsb = FloatingSearchBar.of(context)?.widget;

    return ListView.builder(
      padding: fsb == null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              top: fsb.height + 8 + MediaQuery.of(context).padding.top),
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.repos.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.repos.entity.length,
        loadFailure: (_) => _.repos.entity.length + 1,
      ),
      itemBuilder: (context, index) {
        return state.map(
          initial: (_) => RepoTile(repo: _.repos.entity[index]),
          loadInProgress: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(repo: _.repos.entity[index]);
            } else {
              return const LoadingRepoTile();
            }
          },
          loadSuccess: (_) => RepoTile(
            repo: _.repos.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(repo: _.repos.entity[index]);
            } else {
              return FailureRepoTile(
                failure: _.failure,
              );
            }
          },
        );
      },
    );
  }
}
