import 'package:best_movies/app/features/home/movies/cubit/movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPageContent extends StatelessWidget {
  const MoviesPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesCubit()..start(),
      child: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {

          if (state.errorMessage.isNotEmpty) {
                  return  Center(child: Text('Something go wrong: ${state.errorMessage}'),);
                }
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator(),);
        }   

                final documents = state.documents;

                return ListView(
                  children: [
                    for (final document in documents) ...[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(document['name']),
                                Text(document['actor']),
                              ],
                            ),
                            Text(
                              document['rating'].toString(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                );
              },
      ),
    );
  }
}
