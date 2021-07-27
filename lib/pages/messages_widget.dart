import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/appbar_bloc/appbar_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';
import 'package:synt/theme/app_colors.dart';

class MessagesWidget extends StatelessWidget {
  const MessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<AppbarBloc, AppbarState>(
              builder: (context, state) {
                return TextButton(
                    onPressed: () {
                      BlocProvider.of<AppbarBloc>(context).add(AddBtc(10000));
                    },
                    child: Text("Добавить 10000 битков, уже ${state.btc}"));
              },
            ),
            BlocProvider(
              create: (context) => ProcessesBloc(),
              child: BlocBuilder<ProcessesBloc, ProcessesState>(
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        BlocProvider.of<ProcessesBloc>(context)
                            .add(AddProcess());
                      },
                      child: const Text("Добавить процесс"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
