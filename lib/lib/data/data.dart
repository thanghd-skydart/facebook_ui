import '../model/post_model.dart';
import '../model/story_model.dart';
import '../model/user_model.dart';

final UserModel currentUser = UserModel(
    name: "Hoàng Đức Thắng",
    isActive: true,
    imgUrl:
        "https://scontent.fhan5-10.fna.fbcdn.net/v/t39.30808-6/278619488_2778430605796767_6263250241747834192_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Mwwrw0cKSuYAX9GGSJn&_nc_ht=scontent.fhan5-10.fna&oh=00_AT_5umyJ2p4KA67x9aBscsgOGn1m6eJazgG_TLOyj--vUA&oe=62788D37");
final List<UserModel> onlineUser = [
  UserModel(
      name: "Hoàng Duyên",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/278813079_106194512079838_5639580583813357674_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=sEjB4OAfKasAX_Kx08p&_nc_ht=scontent.fhan5-8.fna&oh=00_AT9tsnweqA3__MkoLinqzeXBRXqi5uMwfZHbDB5RAQPBzQ&oe=62784063"),
  UserModel(
      name: "Hoàng Thanh Tùng",
      isActive: false,
      imgUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t39.30808-6/273709542_1624347087942328_6456241488454134732_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=q4tv1ebYYhAAX-XjHUY&_nc_ht=scontent.fhan5-6.fna&oh=00_AT-qEMlaf4V1yuDbvoKxy5iA04mYZt3SnXcLzGwk2UMBFQ&oe=6277F73A"),
  UserModel(
      name: "Lê Huy Thuận",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-3.fna.fbcdn.net/v/t39.30808-6/202412116_3030782353910921_575211892494158419_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=e3f864&_nc_ohc=xx8oBIeh2GYAX8-5rux&_nc_oc=AQn07k3i59e5G8DVpTRWwlv78uf4ibiqPvepsbgYZH0bnFI7hqKqAgAJgF6SUGURuhQ&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-3.fna&oh=00_AT8q0MTkTwtpp8BXCu8O732EcD9XTCskl0Wf6dR4AZ459w&oe=6278BF05"),
  UserModel(
      name: "Chip Chip",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t1.6435-9/98067640_1120461794985722_953944337027170304_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=e3f864&_nc_ohc=evTOD3IRpDoAX-uIuHQ&_nc_ht=scontent.fhan5-11.fna&oh=00_AT9lW4jLlmTo7lIvRwIOCXLvGEvM0EiI0d3BwwxADEJJ6A&oe=62995361"),
  UserModel(
      name: "Hà Huyền",
      isActive: false,
      imgUrl:
          "https://scontent.fhan5-2.fna.fbcdn.net/v/t1.18169-9/31688837_952239308274407_3905600353184275338_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=LWbt_mqByu0AX-KDg16&_nc_ht=scontent.fhan5-2.fna&oh=00_AT_9y-qYRDFk0aJYF22tuG3efyPGRcukokuTRte7ZweL8A&oe=62979678"),
  UserModel(
      name: "Ly Do",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t39.30808-1/251966679_1576225989385419_5242964251962619287_n.jpg?stp=dst-jpg_p200x200&_nc_cat=111&ccb=1-5&_nc_sid=7206a8&_nc_ohc=bw4QpzDE_sQAX_qItsg&_nc_ht=scontent.fhan5-11.fna&oh=00_AT8mIL0Vo2DwwsgWzGk8YAaeYh0t4Hao5rmB4CdReLN5NA&oe=62775241"),
  UserModel(
      name: "Hải Phong",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t1.6435-9/83267021_2539827376285373_8486640388013031424_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=e3f864&_nc_ohc=1SZKTTdx_yAAX-RGiji&_nc_oc=AQmIDCIYA5o3Dq2NPTn71xymE_LTEzubSnI6K8BAGOeiImdqR-qz58oGG5pzBghgqt4&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-9JUo9O86Lgf31TmHLF9QrDEBmcChvz_D7bDUBv6hfJw&oe=6298A604"),
  UserModel(
      name: "Bảo Hoàng",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/207136247_2088847727921683_6864908220017991714_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=TXNwvsNiKw4AX9Pcelg&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT8LNy97Fx7qqttQ_WZCpOX_go20sQN7FAGiEHM09mXNqw&oe=627803F5"),
  UserModel(
      name: "Đoàn Văn Bắc",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-1/272307779_2201687676645643_527551967310989677_n.jpg?stp=dst-jpg_p200x200&_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=1c_iO9yPcckAX-SHDvz&_nc_ht=scontent.fhan5-7.fna&oh=00_AT_1LWKnTCm2LzpviS6bRMsRehvWDl_g_fShun8alMNa4A&oe=6278E91C"),
  UserModel(
      name: "L.Anh Hồ",
      isActive: false,
      imgUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/279355939_542424114123931_5451892626852397764_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=6w0JnCUYsPAAX_rwkSs&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8ABulf0k_eL69U0aCGABK5TFFVsxoPTL_ighDTYHLvUw&oe=6278B1D4"),
  UserModel(
      name: "Hoàng Anh",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/276198231_110683241578291_8563104588693143597_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=pzPAAM03OxkAX8SL7K7&_nc_ht=scontent.fhan5-8.fna&oh=00_AT_d_dPhk4ra34kldt75xquB_0JmPkol0LseKkoxMtywTw&oe=627765C1"),
  UserModel(
      name: "Khuyen Nguyen Thi",
      isActive: true,
      imgUrl:
          "https://scontent.fhan5-2.fna.fbcdn.net/v/t39.30808-6/263316475_136909192043488_864765854118732010_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=REdQAl29KcsAX8Dy840&_nc_ht=scontent.fhan5-2.fna&oh=00_AT9m3I--KurhS_6mib74Iv6EW-9o4vpDYCCPGO8o-Ksmqw&oe=6278CB5C"),
];
final List<StoryModel> stories = [
  StoryModel(
      user: onlineUser[2],
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t39.30808-6/279756031_3295225230794815_1819142370190120756_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=nAfVoJcXSrwAX-jjqPY&_nc_ht=scontent.fhan5-1.fna&oh=00_AT_FfPjKbNVmf9uDI_DhqA4tDjspot3ZScf1e3sdF6sTrA&oe=6277EB09",
      isViewed: false),
  StoryModel(
      user: onlineUser[4],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/279892672_742350980259131_1756449648114729796_n.jpg?stp=dst-jpg_p526x296&_nc_cat=108&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=9Sfdcpzf37sAX_A-Bet&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-wYnevBchHY2AunYm8y2dfIFOdcqqgGJg-11Y-Py9guw&oe=62790C45",
      isViewed: false),
  StoryModel(
      user: onlineUser[5],
      imageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t39.30808-6/279248283_1582594858791059_4924003520714927552_n.jpg?stp=dst-jpg_s720x720&_nc_cat=107&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=wCWi7Ij6sZ8AX9ECylj&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-6.fna&oh=00_AT8qv1bYBeLRjQAuIwFhPR2HAzRo8Ikc28THYo2_PeIvVw&oe=6279DC5C",
      isViewed: false),
  StoryModel(
      user: onlineUser[8],
      imageUrl:
          "https://scontent.fhan5-2.fna.fbcdn.net/v/t39.30808-6/279515645_1336987010142247_5349824845734088464_n.jpg?_nc_cat=104&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=P8WGGlgRra0AX_MGrav&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-2.fna&oh=00_AT_dmqwMxW8SQCP7GgbuB3ihoXS7ruTk91PP3pPkEUunCA&oe=62793721",
      isViewed: false),
  StoryModel(
      user: onlineUser[10],
      imageUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t39.30808-6/279785847_1700776590268551_4014603544934458531_n.jpg?stp=dst-jpg_s600x600&_nc_cat=101&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=diUqcKe3KsIAX865Zdf&_nc_ht=scontent.fhan5-11.fna&oh=00_AT9pDinAJ5VqDl52QcnxLW8rqIFx4hERYMU-gux7pQes7g&oe=6279938C",
      isViewed: false),
  StoryModel(
      user: onlineUser[9],
      imageUrl:
          "https://scontent.fhan5-9.fna.fbcdn.net/v/t39.30808-6/279597916_1700776756935201_3933591727084320238_n.jpg?stp=dst-jpg_s600x600&_nc_cat=109&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=eAjggemxQHcAX-_58-e&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-9.fna&oh=00_AT9v9mOeWrklnGuddYkUdUJHOuRnt1-SzRW8-Q-iHbXVbg&oe=62793CC3",
      isViewed: false),
  StoryModel(
      user: onlineUser[1],
      imageUrl:
          "https://scontent.fhan5-3.fna.fbcdn.net/v/t39.30808-6/279104420_138393328578885_1436731282646793213_n.jpg?stp=dst-jpg_p180x540&_nc_cat=106&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=JkE36KjNNAUAX9vAJuE&_nc_oc=AQmPdYo2Fcy5BdGhS1R78eDYa-9zorClZ9mL_1lr1v3-O3JD-BYRW1WqrThhr2mDA0g&_nc_ht=scontent.fhan5-3.fna&oh=00_AT-tcJg3JFjPFe0Q2WFcsZzbTVeCw_HMI_c6EnJq9qYNdw&oe=627A1940",
      isViewed: false),
  StoryModel(
      user: onlineUser[3],
      imageUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/279713611_711345066729478_8363029992600965234_n.jpg?stp=dst-jpg_s720x720&_nc_cat=100&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=k8A24ntTrrIAX9O_eMd&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8HuVZbHWu8S1PvbFkIT8KvKSRLOi2Y-EOgWJoNI08x_Q&oe=62797DCE",
      isViewed: false),
  StoryModel(
      user: onlineUser[7],
      imageUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t39.30808-6/279824162_5072269609506943_3074085964409099239_n.jpg?_nc_cat=111&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=poU029s5AHEAX9-H9mK&_nc_ht=scontent.fhan5-11.fna&oh=00_AT_McFArHBFn0HG0Uw-6n1N9-pQqw6KwIx5HgXHGhDcc-g&oe=6279D021",
      isViewed: false),
  StoryModel(
      user: onlineUser[6],
      imageUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/279554681_1373776893034890_2204959012340582132_n.jpg?stp=dst-jpg_p526x296&_nc_cat=100&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=um4vNPIfhD0AX_j87P_&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8qS7aXbZc-JYxtCT73ndyI69aQA1Q9G-jJNSPUMQwJWA&oe=627953D2",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
  StoryModel(
      user: onlineUser[11],
      imageUrl:
          "https://scontent.fhan5-8.fna.fbcdn.net/v/t39.30808-6/280056926_1233004370861454_3174158805805040075_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=YQlOSaUP7GAAX_-k9yh&tn=THz1wu1Dxlf78Sp0&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-o84uQAAjkTOJtsBfVmeOH7N9EuyyCGweEn_LxLWOWcg&oe=627A44F4",
      isViewed: false),
];
final List<PostModel> posts = [
  PostModel(
      user: currentUser,
      caption: "Anh yêu em nhiều lắm! Bé yêu của anh",
      timeAgo: '58m',
      imageUrl:
          "https://scontent.fhan5-6.fna.fbcdn.net/v/t39.30808-6/279439245_1750251385358496_6735345617414976566_n.jpg?_nc_cat=107&ccb=1-6&_nc_sid=730e14&_nc_ohc=Vl62mjUXQcYAX8gFeX7&_nc_ht=scontent.fhan5-6.fna&oh=00_AT_iDv-ifeiD47NPuSsKmR1IhUdg_FZa1Vyn-wfJhRkpKQ&oe=6279BFA1",
      likes: 1022,
      comments: 184,
      shares: 9),
  PostModel(
      user: onlineUser[1],
      caption: "Yêu em là điều anh không thể",
      timeAgo: '5m',
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t39.30808-6/279910185_4673365569587565_2647588325360713130_n.jpg?stp=dst-jpg_p526x296&_nc_cat=1&ccb=1-6&_nc_sid=730e14&_nc_ohc=atb7gHM36nMAX_azInd&_nc_ht=scontent.fhan5-1.fna&oh=00_AT8gWYzG2uc9s5BsEnVGI9K0SuPZW09aJMkzZs8DrzdHnA&oe=6279C6E3",
      likes: 102,
      comments: 18,
      shares: 9),
  PostModel(
      user: onlineUser[3],
      caption: "Thật tuyệt vời!",
      timeAgo: '34m',
      imageUrl: "",
      likes: 132,
      comments: 84,
      shares: 91),
  PostModel(
      user: onlineUser[7],
      caption: "Cả thế giới của anh!",
      timeAgo: '7m',
      imageUrl:
          "https://scontent.fhan5-1.fna.fbcdn.net/v/t39.30808-6/279441635_120447683971752_7048378430654526659_n.png?stp=dst-png_p526x296&_nc_cat=1&ccb=1-6&_nc_sid=730e14&_nc_ohc=nhC1qGfrKPMAX_7sF2H&_nc_ht=scontent.fhan5-1.fna&oh=00_AT_qC3Nnw91ZvM1gZK0O1UZs16MeFHuv1Pnd_FGwz9RBxA&oe=627948C0",
      likes: 44,
      comments: 77,
      shares: 1),
  PostModel(
      user: onlineUser[4],
      caption: "Chúc em yêu sinh nhật vui vẻ!",
      timeAgo: '5m',
      imageUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t45.1600-4/272967382_23849589652700102_5776980625374550586_n.jpg?stp=cp0_dst-jpg_p526x296_q75_spS444&_nc_cat=111&ccb=1-6&_nc_sid=68ce8d&_nc_ohc=MOV7J_9T3S0AX8eWxnu&_nc_ht=scontent.fhan5-11.fna&oh=00_AT8AaR4KEvS0qWo7ebngAguSu4b4cXxsT2BgLnFE6PwAvQ&oe=62794BDB",
      likes: 76,
      comments: 99,
      shares: 2),
  PostModel(
      user: onlineUser[6],
      caption: "Khó có thể nói hết tâm tư này trong anh!",
      timeAgo: '8m',
      imageUrl:
          "https://scontent.fhan5-2.fna.fbcdn.net/v/t39.30808-6/279626984_183663520663438_2638517925978427695_n.jpg?stp=dst-jpg_p526x296&_nc_cat=104&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=rzZPnitP2mwAX_x9uDT&_nc_ht=scontent.fhan5-2.fna&oh=00_AT8A_YCLKydwI8lyia2t9gBx6E7rMFNsd6OBs4OHose1nQ&oe=627A7BC1",
      likes: 76,
      comments: 24,
      shares: 563),
  PostModel(
      user: onlineUser[10],
      caption: "Cảm ơn em đã đến bên anh!",
      timeAgo: '45m',
      imageUrl:
          "https://scontent.fhan5-11.fna.fbcdn.net/v/t39.30808-6/279444837_120345840652613_2279412972341329442_n.jpg?stp=dst-jpg_p526x296&_nc_cat=111&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=Dc-UZPEmIq8AX_J8O3X&_nc_ht=scontent.fhan5-11.fna&oh=00_AT8VsKQvJE-N6YnOhLIxW9yUsTvUUbI28AJBmwQPGyDksw&oe=6279655D",
      likes: 78,
      comments: 145,
      shares: 4),
  PostModel(
      user: onlineUser[9],
      caption: "Chip chip numberone",
      timeAgo: '5m',
      imageUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/279835116_569249731224639_7504848900702623719_n.jpg?stp=dst-jpg_s960x960&_nc_cat=100&ccb=1-6&_nc_sid=8bfeb9&_nc_ohc=YnimI-rPPJsAX9CkZDJ&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8erZO9qMtWS_b2IAb4jh9iAzJv2-wP9rfl6D12o4qXCg&oe=6279F6D7",
      likes: 87,
      comments: 12,
      shares: 22),
  PostModel(
      user: onlineUser[11],
      caption: "Hello anh em!",
      timeAgo: '8m',
      imageUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/279744933_109510011752941_4987187434822757140_n.png?stp=dst-png_p526x296&_nc_cat=100&ccb=1-6&_nc_sid=730e14&_nc_ohc=4usv5mpNQ34AX96T8MN&_nc_ht=scontent.fhan5-7.fna&oh=00_AT_3wGk5OSMFVnRES-5ASNM6a2jm1UqoN9lW9U0AaTjfhQ&oe=6278A2DC",
      likes: 189,
      comments: 102,
      shares: 1),
  PostModel(
      user: onlineUser[4],
      caption: "Chúc các bạn ngày mới vui vẻ!",
      timeAgo: '8m',
      imageUrl:
          "https://scontent.fhan5-7.fna.fbcdn.net/v/t39.30808-6/280061929_4847896868654025_2839660474587235025_n.jpg?stp=dst-jpg_p180x540&_nc_cat=100&ccb=1-6&_nc_sid=5cd70e&_nc_ohc=2eUhwfQ6nAAAX-PSHJG&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8XM211Syi0VXlNK0HUib7pnnyY4qnCtaMpK95GGQpunQ&oe=6279AAE9",
      likes: 92,
      comments: 78,
      shares: 12),
];
