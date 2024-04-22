import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/appbar/appbar_main.dart';
import '../../../../common/dialog/custom_snackbar.dart';
import '../../../../common/widget/custom_placeholder.dart';
import '../../../../common/widget/data_not_found.dart';
import '../../../../common/widget/pagination_loading.dart';
import '../../../../config/theme/theme.dart';
import '../../../../utils/injection/injection.dart';
import '../cubit/posting_cubit.dart';
import '../widget/posting_card.dart';

class PostingPage extends StatefulWidget {
  const PostingPage({super.key});

  @override
  State<PostingPage> createState() => _PostingPageState();
}

class _PostingPageState extends State<PostingPage> {
  final _postingCubit = getIt<PostingCubit>();

  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final maxScrollExtent = _scrollController.position.maxScrollExtent;

    if (_scrollController.offset >= maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context.read<PostingCubit>().fetchMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarMain(
        title: "Posting",
        isAutomaticallyImplyLeading: false,
      ),
      body: BlocBuilder<PostingCubit, PostingState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const _Placeholder(),
            error: (error) =>
                CustomSnackBar.instance.showError(context, error.message),
            loaded: (postings, isLoadMore) {
              final itemCount = postings.length;

              return Visibility(
                visible: itemCount > 0,
                replacement: const DataNotFound(),
                child: RefreshIndicator.adaptive(
                  onRefresh: _postingCubit.onRefresh,
                  color: AppColor.primaryMain,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: itemCount,
                          padding:
                              const EdgeInsets.symmetric(vertical: AppSize.s16),
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: AppSize.s12),
                          itemBuilder: (context, index) {
                            final data = postings[index];

                            return PostingCard(
                              title: data.text,
                              picture: data.image,
                              publishAt: data.publishDate,
                              likes: data.likes,
                            );
                          },
                        ),
                      ),
                      PaginationLoading(visible: isLoadMore)
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
        children: List.generate(3, (index) {
      return Padding(
        padding: const EdgeInsets.only(top: AppSize.s16),
        child: Container(
          padding: const EdgeInsets.all(AppSize.s16),
          margin: const EdgeInsets.symmetric(horizontal: AppSize.s16),
          decoration: BoxDecoration(
            color: AppColor.backgroundCard,
            borderRadius: BorderRadius.circular(AppSize.s12),
            boxShadow: [
              BoxShadow(
                color: AppColor.foregroundBorder.withOpacity(0.5),
                blurRadius: 4,
                spreadRadius: 1.2,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const CustomPlaceholder(),
              ),
              const SizedBox(width: AppSize.s16),
              CustomPlaceholder(
                width: size.width * 0.5,
                height: FontSize.s16,
              ),
            ],
          ),
        ),
      );
    }));
  }
}
