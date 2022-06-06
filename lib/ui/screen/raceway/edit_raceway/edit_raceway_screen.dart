import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/ui/screen/raceway/raceway_list/raceway_list_screen_viewmodel.dart';
import 'package:circuit_record/ui/screen/raceway/edit_raceway/edit_raceway_screen_viewmodel.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/appbar/app_bar_action_confirm_button.dart';
import 'package:circuit_record/ui/util/appbar/app_bar_action_delete_button.dart';
import 'package:circuit_record/ui/util/un_focus_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditRacewayScreen extends HookConsumerWidget {
  final Raceway raceway;

  const EditRacewayScreen({Key? key, required this.raceway}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel =
        ref.read(editRacewayScreenViewModelProvider(raceway).notifier);
    final racewayListScreenViewModel =
        ref.read(racewayListScreenViewModelProvider.notifier);

    final name = useTextEditingController(text: raceway.name);
    final postalCode = useTextEditingController(text: raceway.postalCode);
    final address = useTextEditingController(text: raceway.address);

    return UnFocusScreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("コースの編集"),
          actions: [
            AppBarActionDeleteButton(onPressed: () async {
              if (await viewModel.deleteRaceway() == true) {
                Navigator.of(context).maybePop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("削除しました。")),
                );
                racewayListScreenViewModel.deleteRaceway(raceway);
              }
            }),
            AppBarActionConfirmButton(onPressed: () async {
              final update = raceway.copyWith(
                name: name.text,
                postalCode: postalCode.text,
                address: address.text,
              );
              if (await viewModel.updateRaceway(update) == true) {
                Navigator.of(context).maybePop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("更新しました。")),
                );
                racewayListScreenViewModel.updateRaceway(update);
              }
            }),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(Style.spacing.medium),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("名称", style: TextStyle(fontSize: 10.0)),
                TextFormField(controller: name, maxLength: 100),
                const Text("郵便番号", style: TextStyle(fontSize: 10.0)),
                Text(
                  "入力しておくことで天気予報が取得できます。",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Style.gray.caption,
                  ),
                ),
                TextFormField(controller: postalCode, maxLength: 7),
                const Text("住所", style: TextStyle(fontSize: 10.0)),
                TextFormField(controller: address, maxLength: 200),
                const Text("コースマップ", style: TextStyle(fontSize: 10.0)),
                Text(
                  "登録しておくことで攻略ポイントがメモできます。",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Style.gray.caption,
                  ),
                ),
                SizedBox(height: Style.spacing.small),
                SizedBox(
                  height: 200,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(Style.circular.takePicture),
                    onTap: () {},
                    child: Material(
                      borderRadius:
                          BorderRadius.circular(Style.circular.takePicture),
                      color: Colors.black12,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Style.circular.takePicture),
                        ),
                        padding: EdgeInsets.all(Style.spacing.medium),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo_library,
                                size: Style.iconSize.small,
                              ),
                              SizedBox(width: Style.spacing.tiny),
                              const Text(
                                '画像を選択する',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
