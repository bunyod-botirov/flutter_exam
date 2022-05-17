// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    this.data,
    this.meta,
  });

  List<Datum>? data;
  Meta? meta;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta!.toJson(),
      };
}

class Datum {
  Datum({
    this.id,
    this.attributes,
  });

  int? id;
  Attributes? attributes;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
      };
}

class Attributes {
  Attributes({
    this.title,
    this.about,
    this.category,
    this.author,
    this.date,
    this.body,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
  });

  String? title;
  String? about;
  String? category;
  String? author;
  DateTime? date;
  String? body;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        title: json["title"],
        about: json["about"],
        category: json["category"],
        author: json["author"],
        date: DateTime.parse(json["date"]),
        body: json["body"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "about": about,
        "category": category,
        "author": author,
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "body": body,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
        "publishedAt": publishedAt!.toIso8601String(),
      };
}

class Meta {
  Meta({
    this.pagination,
  });

  Pagination? pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination!.toJson(),
      };
}

class Pagination {
  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}
