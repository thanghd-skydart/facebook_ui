import 'package:facebook_responsive/lib/model/user_model.dart';
import 'package:facebook_responsive/lib/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  final UserModel currentUser;
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0),
      elevation: isDesktop ? 1.0 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(
                  imgUrl: currentUser.imgUrl,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Bạn đang nghĩ gì?"),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButtonCus(
                  onPressed: () {},
                  icon: Icons.videocam,
                  label: "Trực tiếp",
                  colorIcon: Colors.red,
                  labelStyle: const TextStyle(color: Colors.black),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                FlatButtonCus(
                  onPressed: () {},
                  icon: Icons.photo_library,
                  label: "Ảnh",
                  colorIcon: Colors.green,
                  labelStyle: const TextStyle(color: Colors.black),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                FlatButtonCus(
                  onPressed: () {},
                  icon: Icons.video_call,
                  label: "Phòng họp",
                  colorIcon: Colors.purpleAccent,
                  labelStyle: const TextStyle(color: Colors.black),
                ),
                const VerticalDivider(
                  width: 8,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
