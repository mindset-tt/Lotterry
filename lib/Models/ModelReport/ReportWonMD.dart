// To parse this JSON data, do
//
//     final reportWonMd = reportWonMdFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

List<ReportWonMd> reportWonMdFromJson(String str) => List<ReportWonMd>.from(json.decode(str).map((x) => ReportWonMd.fromJson(x)));

String reportWonMdToJson(List<ReportWonMd> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReportWonMd {
    ReportWonMd({
        this.won,
        this.balance,
    });

    List<Won> won;
    List<Balance> balance;

    factory ReportWonMd.fromJson(Map<String, dynamic> json) => ReportWonMd(
        won: List<Won>.from(json["won"].map((x) => Won.fromJson(x))),
        balance: List<Balance>.from(json["balance"].map((x) => Balance.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "won": List<dynamic>.from(won.map((x) => x.toJson())),
        "balance": List<dynamic>.from(balance.map((x) => x.toJson())),
    };
}

class Balance {
    Balance({
        this.balance,
    });

    String balance;

    factory Balance.fromJson(Map<String, dynamic> json) => Balance(
        balance: json["balance"],
    );

    Map<String, dynamic> toJson() => {
        "balance": balance,
    };
}

class Won {
    Won({
        this.row,
        this.deviceCode,
        this.branchName,
        this.dateOffline,
        this.periodNumber,
        this.wd1,
        this.wd2,
        this.wd3,
        this.wd4,
        this.wd5,
        this.wd6,
        this.total,
    });

    String row;
    String deviceCode;
    String branchName;
    String dateOffline;
    String periodNumber;
    String wd1;
    String wd2;
    String wd3;
    String wd4;
    String wd5;
    String wd6;
    String total;

    factory Won.fromJson(Map<String, dynamic> json) => Won(
        row: json["row"],
        deviceCode: json["device_code"],
        branchName: json["branch_name"],
        dateOffline: json["date_offline"],
        periodNumber: json["period_number"],
        wd1: json["wd1"],
        wd2: json["wd2"],
        wd3: json["wd3"],
        wd4: json["wd4"],
        wd5: json["wd5"],
        wd6: json["wd6"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "row": row,
        "device_code": deviceCode,
        "branch_name": branchName,
        "date_offline": dateOffline,
        "period_number": periodNumber,
        "wd1": wd1,
        "wd2": wd2,
        "wd3": wd3,
        "wd4": wd4,
        "wd5": wd5,
        "wd6": wd6,
        "total": total,
    };
}
