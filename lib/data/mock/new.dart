// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
    Region region;
    int regionNumber;
    int month;
    int day;
    DateTime date;
    HijriDate hijriDate;
    String weekday;
    Times times;

    Welcome({
        required this.region,
        required this.regionNumber,
        required this.month,
        required this.day,
        required this.date,
        required this.hijriDate,
        required this.weekday,
        required this.times,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        region: regionValues.map[json["region"]]!,
        regionNumber: json["regionNumber"],
        month: json["month"],
        day: json["day"],
        date: DateTime.parse(json["date"]),
        hijriDate: HijriDate.fromJson(json["hijri_date"]),
        weekday: json["weekday"],
        times: Times.fromJson(json["times"]),
    );

    Map<String, dynamic> toJson() => {
        "region": regionValues.reverse[region],
        "regionNumber": regionNumber,
        "month": month,
        "day": day,
        "date": date.toIso8601String(),
        "hijri_date": hijriDate.toJson(),
        "weekday": weekday,
        "times": times.toJson(),
    };
}

class HijriDate {
    Month month;
    int day;

    HijriDate({
        required this.month,
        required this.day,
    });

    factory HijriDate.fromJson(Map<String, dynamic> json) => HijriDate(
        month: monthValues.map[json["month"]]!,
        day: json["day"],
    );

    Map<String, dynamic> toJson() => {
        "month": monthValues.reverse[month],
        "day": day,
    };
}

enum Month {
    SHAVVOL
}

final monthValues = EnumValues({
    "shavvol": Month.SHAVVOL
});

enum Region {
    TOSHKENT
}

final regionValues = EnumValues({
    "Toshkent": Region.TOSHKENT
});

class Times {
    String tongSaharlik;
    String quyosh;
    String peshin;
    String asr;
    String shomIftor;
    String hufton;

    Times({
        required this.tongSaharlik,
        required this.quyosh,
        required this.peshin,
        required this.asr,
        required this.shomIftor,
        required this.hufton,
    });

    factory Times.fromJson(Map<String, dynamic> json) => Times(
        tongSaharlik: json["tong_saharlik"],
        quyosh: json["quyosh"],
        peshin: json["peshin"],
        asr: json["asr"],
        shomIftor: json["shom_iftor"],
        hufton: json["hufton"],
    );

    Map<String, dynamic> toJson() => {
        "tong_saharlik": tongSaharlik,
        "quyosh": quyosh,
        "peshin": peshin,
        "asr": asr,
        "shom_iftor": shomIftor,
        "hufton": hufton,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
