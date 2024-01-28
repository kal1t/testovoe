import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:testovoe/core/_core.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';
import 'package:testovoe/features/profile/presentation/state/bloc/bloc/user_data_bloc.dart';
import 'package:testovoe/features/profile/presentation/ui/pages/change_user_name_page.dart';
import 'package:testovoe/features/profile/presentation/ui/widgets/profile_list_tile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserDataBloc(GetIt.I<ISomeAuthRepository>()),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Аккаунт'),
      ),
      child: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const SizedBox(
                    width: 80,
                    child: CircleAvatar(radius: 50),
                  ),
                  Image.asset('assets/icons/avatar_action_icon.png')
                ],
              ),
              BlocBuilder<UserDataBloc, UserDataState>(
                builder: (context, state) {
                  return ProfileListTileWidget(
                    trailing: state.userModel?.name,
                    title: 'Имя',
                    onTap: () {
                      // Tут что написал не очень нравится.
                      // Если еще подумать, можно лучше сделать
                      Navigator.of(context)
                          .push(CupertinoPageRoute(
                        builder: (_) => const ChangeUserNamePage(),
                      ))
                          .then((value) {
                        context.read<UserDataBloc>().add(
                              UserDataEvent.setUserName(value),
                            );
                      });
                    },
                  );
                },
              ),
              const Divider(height: 0, color: Color(0xFFC6C6C8)),
              BlocBuilder<UserDataBloc, UserDataState>(
                builder: (context, state) {
                  return ProfileListTileWidget(
                    trailing: state.userModel?.surname,
                    title: 'Фамилия',
                    onTap: () {
                      // Tут что написал не очень нравится.
                      // Если еще подумать, можно лучше сделать
                      Navigator.of(context)
                          .push(CupertinoPageRoute(
                        builder: (_) => const ChangeUserNamePage(),
                      ))
                          .then((value) {
                        context.read<UserDataBloc>().add(
                              UserDataEvent.setUserSurname(value),
                            );
                      });
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
