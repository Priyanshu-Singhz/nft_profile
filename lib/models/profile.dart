import 'NFTs.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<NFTs>? creations;
  List<NFTs>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.creations,
      this.collections});
  static Profile generateProfile() {
    return Profile(
      imgUrl: "assets/images/profile.jpg",
      name: "Priyanshu Singh",
      twitter: "@priyanshu2910",
      desc:
          "Android developer developing just for passion and want to create change !!",
      email: "priyanshu7791@gmail.com",
      creations: [
        NFTs(
            imgUrl: "assets/images/one.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/two.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/three.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/four.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/five.png",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/six.png",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
      ],
      collections: [
        NFTs(
            imgUrl: "assets/images/one.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/two.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/three.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/four.jpg",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/five.png",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
        NFTs(
            imgUrl: "assets/images/six.png",
            name: "apna NFT",
            price: 0.33,
            desc: "Apna khudka google images se chori kiya hua NFt"),
      ],
    );
  }
}
