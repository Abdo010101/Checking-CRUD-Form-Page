import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cores/utils/di.dart';
import 'package:flutter_application_1/features/user_feature/perseention/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeCubit _homeCubit = getIt.get<HomeCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: _homeCubit..getUserFormCubit(),
      builder: (context, state) {
        log('${_homeCubit.myList.length}');
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              // color: Colors.black,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: ListTile(
                            title: Text('${_homeCubit.myList[index].name}'),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          thickness: 1,
                          color: Colors.deepOrangeAccent,
                        );
                      },
                      itemCount: _homeCubit.myList.length),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
