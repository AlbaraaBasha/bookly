import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/presentation/manager/smila_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder:
            (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create:
                      (context) =>
                          FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                            ..fetchFeaturedBooks(),
                ),
                BlocProvider(
                  create:
                      (context) =>
                          NewsetBooksCubit(getIt.get<HomeRepoImpl>())
                            ..fetchNewestBooks(),
                ),
              ],
              child: const HomeView(),
            ),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) =>
                      SimilarBooksCubit(getIt.get<HomeRepoImpl>() as HomeRepo),
              child: BookDetailsView(bookModel: state.extra as BookModel),
            ),
      ),
    ],
  );
}
