// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//   Welcome({
//     required this.status,
//     required this.data,
//   });

//   final String status;
//   final Data data;

//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         status: json["status"],
//         data: Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status,
//         "data": data.toJson(),
//       };
// }

// class Data {
//   Data({
//     required this.integration,
//     required this.rootcategory,
//     required this.slider,
//     required this.noimg,
//     required this.catimages,
//     required this.storeId,
//     required this.minimumOrderAmount,
//     required this.stores,
//     required this.currency,
//     required this.paymentImgs,
//     required this.voucherCat,
//     required this.whatsapp,
//     required this.celebrityId,
//     required this.registerOtp,
//     required this.mobileFormats,
//     required this.cmspages,
//     required this.payMethodImgs,
//   });

//   final String integration;
//   final int rootcategory;
//   final List<Slider> slider;
//   final String noimg;
//   final List<Catimage> catimages;
//   final int storeId;
//   final dynamic minimumOrderAmount;
//   final List<dynamic> stores;
//   final String currency;
//   final List<String> paymentImgs;
//   final int voucherCat;
//   final String whatsapp;
//   final int celebrityId;
//   final String registerOtp;
//   final List<MobileFormat> mobileFormats;
//   final Cmspages cmspages;
//   final List<String> payMethodImgs;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         integration: json["integration"],
//         rootcategory: json["rootcategory"],
//         slider:
//             List<Slider>.from(json["slider"].map((x) => Slider.fromJson(x))),
//         noimg: json["noimg"],
//         catimages: List<Catimage>.from(
//             json["catimages"].map((x) => Catimage.fromJson(x))),
//         storeId: json["store_id"],
//         minimumOrderAmount: json["minimum_order_amount"],
//         stores: List<dynamic>.from(json["stores"].map((x) => x)),
//         currency: json["currency"],
//         paymentImgs: List<String>.from(json["payment_imgs"].map((x) => x)),
//         voucherCat: json["voucher_cat"],
//         whatsapp: json["whatsapp"],
//         celebrityId: json["celebrity_id"],
//         registerOtp: json["register_otp"],
//         mobileFormats: List<MobileFormat>.from(
//             json["mobile_formats"].map((x) => MobileFormat.fromJson(x))),
//         cmspages: Cmspages.fromJson(json["cmspages"]),
//         payMethodImgs: List<String>.from(json["pay_method_imgs"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "integration": integration,
//         "rootcategory": rootcategory,
//         "slider": List<dynamic>.from(slider.map((x) => x.toJson())),
//         "noimg": noimg,
//         "catimages": List<dynamic>.from(catimages.map((x) => x.toJson())),
//         "store_id": storeId,
//         "minimum_order_amount": minimumOrderAmount,
//         "stores": List<dynamic>.from(stores.map((x) => x)),
//         "currency": currency,
//         "payment_imgs": List<dynamic>.from(paymentImgs.map((x) => x)),
//         "voucher_cat": voucherCat,
//         "whatsapp": whatsapp,
//         "celebrity_id": celebrityId,
//         "register_otp": registerOtp,
//         "mobile_formats":
//             List<dynamic>.from(mobileFormats.map((x) => x.toJson())),
//         "cmspages": cmspages.toJson(),
//         "pay_method_imgs": List<dynamic>.from(payMethodImgs.map((x) => x)),
//       };
// }

// class Catimage {
//   Catimage({
//     required this.id,
//     required this.img,
//   });

//   final String id;
//   final String img;

//   factory Catimage.fromJson(Map<String, dynamic> json) => Catimage(
//         id: json["id"],
//         img: json["img"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "img": img,
//       };
// }

// class Cmspages {
//   Cmspages({
//     required this.faq,
//     required this.about,
//     required this.terms,
//     required this.privacy,
//   });

//   final int faq;
//   final int about;
//   final int terms;
//   final int privacy;

//   factory Cmspages.fromJson(Map<String, dynamic> json) => Cmspages(
//         faq: json["faq"],
//         about: json["about"],
//         terms: json["terms"],
//         privacy: json["privacy"],
//       );

//   Map<String, dynamic> toJson() => {
//         "faq": faq,
//         "about": about,
//         "terms": terms,
//         "privacy": privacy,
//       };
// }

// class MobileFormat {
//   MobileFormat({
//     required this.webiste,
//     required this.len,
//     required this.countryCode,
//     required this.country,
//     required this.id,
//   });

//   final String webiste;
//   final int len;
//   final String countryCode;
//   final String country;
//   final int id;

//   factory MobileFormat.fromJson(Map<String, dynamic> json) => MobileFormat(
//         webiste: json["webiste"],
//         len: json["len"],
//         countryCode: json["country_code"],
//         country: json["country"],
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "webiste": webiste,
//         "len": len,
//         "country_code": countryCode,
//         "country": country,
//         "id": id,
//       };
// }

// class Slider {
//   Slider({
//     required this.image,
//     required this.type,
//     required this.id,
//     required this.sortOrder,
//   });

//   final String image;
//   final String type;
//   final String id;
//   final String sortOrder;

//   factory Slider.fromJson(Map<String, dynamic> json) => Slider(
//         image: json["image"],
//         type: json["type"],
//         id: json["id"],
//         sortOrder: json["sort_order"],
//       );

//   Map<String, dynamic> toJson() => {
//         "image": image,
//         "type": type,
//         "id": id,
//         "sort_order": sortOrder,
//       };
// }
