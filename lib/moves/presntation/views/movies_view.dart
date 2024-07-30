import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/services/services_locator.dart';
import 'package:movies/moves/presntation/contorller/movies_bloc.dart';
import 'package:movies/moves/presntation/contorller/movies_event.dart';
import 'package:movies/moves/presntation/contorller/movies_state.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    print(sl<MoviesBloc>().hashCode);
    return BlocProvider(
      create: (context) => MoviesBloc(sl())..add(GetNowPlayingMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Container(),
              ],
            ),
          );
        },
      ),
    );
  }
}
