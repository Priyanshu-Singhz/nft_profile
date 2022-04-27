import 'package:flutter/material.dart';
import 'package:nft_profile/models/profile.dart';
import 'package:nft_profile/screens/profile/widegts/custom_grid.dart';
import 'package:nft_profile/screens/profile/widegts/delegate_wala.dart';

import 'widegts/person_info.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  final tabs = ["Creation", "Collection"];
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
              SliverPersistentHeader(
                delegate: DelegateWala(
                  TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorColor: Colors.black,
                      tabs: tabs
                          .map((e) => Tab(
                                  child: Text(
                                e,
                                style: const TextStyle(fontSize: 18),
                              )))
                          .toList()),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              CustomGrid("Creations", profile.creations!),
              CustomGrid("Collections", profile.collections!),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(
        Icons.arrow_back_ios_outlined,
      ),
      actions: [
        _buildIcon(
          Icons.more_vert_outlined,
        ),
      ],
    );
  }

  IconButton _buildIcon(IconData icon) {
    return IconButton(
        onPressed: () {},
        splashRadius: 25,
        icon: Icon(icon, color: Colors.black, size: 20));
  }
}
