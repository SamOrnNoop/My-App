import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/utils/constraints.dart';
import 'package:my_app/src/utils/locator.dart';
import 'package:my_app/src/utils/navigator_state.dart';
import '../models/menu_home_mode.dart';
import '../widgets/gride_home.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.baseColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
                background: Padding(
              padding: EdgeInsets.only(
                  top: AppBar().preferredSize.height + 5, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(radius: 25),
                  const SizedBox(width: 10),
                  DefaultTextStyle(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Constants.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("Ran"), Text("SamOrn")],
                    ),
                  )
                ],
              ),
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white12, borderRadius: Constants.borderRadius),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: MenuHomeModel.builderMenus.length,
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      final data = MenuHomeModel();
                      data.fromData = MenuHomeModel.builderMenus[index];
                      return GrideMenuHomeWidget(
                          title: data.title,
                          icon: data.icon,
                          onPressed: () => getIt
                              .get<NavigatorService>()
                              .push(data.pageName));
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
