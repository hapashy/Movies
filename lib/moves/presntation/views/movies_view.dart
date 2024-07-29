import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/moves/data/data_source/movie_remote_data_source.dart';
import 'package:movies/moves/data/repos_Implm/movies_repos_impl.dart';
import 'package:movies/moves/domain/repos/base_movies_repos.dart';
import 'package:movies/moves/presntation/contorller/movies_bloc.dart';
import 'package:movies/moves/presntation/contorller/movies_event.dart';
import 'package:movies/moves/presntation/contorller/movies_state.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    print(baseMovieRemoteDataSource.hashCode);
    BaseMoviesRepos baseMoviesRepos =
        MoviesReposImpl(baseMovieRemoteDataSource);
    print(baseMoviesRepos.hashCode);
    return BlocProvider(
      create: (context) => MoviesBloc()..add(GetNowPlayingMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return const Scaffold(
            body: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
