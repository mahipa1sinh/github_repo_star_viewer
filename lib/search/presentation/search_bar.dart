import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:github_repo_viewer/search/shared/providers.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends ConsumerStatefulWidget {
  final Widget body;
  final String title;
  final String hint;
  final void Function(String searchTerm) onShouldNavigateToResultPage;
  final void Function() onSignOutButtonPressed;

  const SearchBar({
    Key? key,
    required this.body,
    required this.title,
    required this.hint,
    required this.onShouldNavigateToResultPage,
    required this.onSignOutButtonPressed,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends ConsumerState<SearchBar> {
  late FloatingSearchBarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FloatingSearchBarController();
    ref.read(searchHistoryNotifierProvider.notifier).watchSearchTerms();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void pushPageAndPutFirstInHistory(String searchTerm) {
      widget.onShouldNavigateToResultPage(searchTerm);
      ref
          .read(searchHistoryNotifierProvider.notifier)
          .putSearchTermFirst(searchTerm);
      _controller.close();
    }

    void pushPageAndAddToHistory(String searchTerm) {
      widget.onShouldNavigateToResultPage(searchTerm);
      ref
          .read(searchHistoryNotifierProvider.notifier)
          .addSearchTerm(searchTerm);
      _controller.close();
    }

    return FloatingSearchBar(
      automaticallyImplyBackButton: false,
      controller: _controller,
      hint: widget.hint,
      body: FloatingSearchBarScrollNotifier(
        child: widget.body,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(fontSize: 20),
            // style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Tap here to search 🔍',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      leadingActions: [
        if (AutoRouter.of(context).canPopSelfOrChildren &&
            (Platform.isIOS || Platform.isMacOS))
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            splashRadius: 23,
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          )
        else if (AutoRouter.of(context).canPopSelfOrChildren)
          IconButton(
            icon: const Icon(Icons.arrow_back),
            splashRadius: 23,
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          )
      ],
      actions: [
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
        FloatingSearchBarAction(
          child: IconButton(
            icon: const Icon(MdiIcons.logoutVariant),
            splashRadius: 23,
            splashColor: Colors.teal.withOpacity(0.4),
            onPressed: () {
              widget.onSignOutButtonPressed();
            },
          ),
        ),
      ],
      onQueryChanged: (query) {
        ref
            .read(searchHistoryNotifierProvider.notifier)
            .watchSearchTerms(filter: query);
      },
      onSubmitted: (query) {
        pushPageAndAddToHistory(query);
      },
      builder: (context, transition) {
        return Material(
          color: Theme.of(context).cardColor,
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          clipBehavior: Clip.hardEdge,
          child: Consumer(
            builder: (context, ref, child) {
              final seaarchHistoryState =
                  ref.watch(searchHistoryNotifierProvider);
              return seaarchHistoryState.map(
                data: (history) {
                  if (_controller.query.isEmpty && history.value.isEmpty) {
                    return Container(
                      alignment: Alignment.center,
                      height: 56,
                      child: Text(
                        'start searching',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    );
                  } else if (history.value.isEmpty) {
                    return ListTile(
                      title: Text(_controller.query),
                      leading: const Icon(Icons.search),
                      onTap: () {
                        pushPageAndAddToHistory(_controller.query);
                      },
                    );
                  }
                  return Column(
                    children: history.value
                        .map(
                          (term) => ListTile(
                            title: Text(
                              term,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            leading: const Icon(Icons.history),
                            trailing: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                ref
                                    .read(
                                        searchHistoryNotifierProvider.notifier)
                                    .deleteSearchTerm(term);
                              },
                            ),
                            onTap: () {
                              pushPageAndPutFirstInHistory(term);
                            },
                          ),
                        )
                        .toList(),
                  );
                },
                loading: (_) => const ListTile(
                  title: LinearProgressIndicator(),
                ),
                error: (_) => ListTile(
                  title: Text('Very unexpected error ${_.error}'),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
