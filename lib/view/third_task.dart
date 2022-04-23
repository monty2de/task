import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../controller/api_controller.dart';
import '../modal/period.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({Key? key}) : super(key: key);

  @override
  _ThirdTaskState createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  static const _pageSize = 1;

  final PagingController<int, Period> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await ApiController.getPeriods(pageKey, _pageSize);

      final isLastPage = newItems.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
        () => _pagingController.refresh(),
      ),
      child: PagedListView.separated(
        scrollDirection: Axis.vertical,
        pagingController: _pagingController,
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        builderDelegate: PagedChildBuilderDelegate<Period>(
          itemBuilder: (context, work, index) => _showData(work),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

Widget _showData(Period period) {
  return Column(
    children: [
      Text("period id: ${period.id}"),
    ],
  );
}
