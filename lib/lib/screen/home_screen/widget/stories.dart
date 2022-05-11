import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_responsive/lib/config/palate.dart';
import 'package:facebook_responsive/lib/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../model/model.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);
  final UserModel currentUser;
  final List<StoryModel> stories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _StoryCard(
                  isAddStory: true,
                  currentUser: currentUser,
                ),
              );
            }
            final StoryModel story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(
                story: story,
                currentUser: currentUser,
              ),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    this.isAddStory = false,
    required this.currentUser,
    this.story,
  }) : super(key: key);

  final bool isAddStory;
  final UserModel? currentUser;
  final StoryModel? story;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
              height: double.infinity,
              fit: BoxFit.cover,
              width: 110,
              imageUrl:
                  isAddStory == true ? currentUser!.imgUrl : story!.imageUrl),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              gradient: Palatte.storuGadient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: Responsive.isDesktop(context)
                  ? const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4.0)
                    ]
                  : null),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: isAddStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    iconSize: 30,
                    color: Palatte.facebookBlue,
                    icon: const Icon(Icons.add),
                  ),
                )
              : ProfileAvatar(
                  imgUrl: story!.user.imgUrl,
                  hasBorder: true,
                ),
        ),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              isAddStory ? "Tạo tin" : story!.user.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: isAddStory ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
