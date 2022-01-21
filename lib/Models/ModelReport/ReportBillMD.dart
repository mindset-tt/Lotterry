// To parse this JSON data, do
//
//     final reportBillMd = reportBillMdFromJson(jsonString);
// ignore_for_file: file_names
import 'dart:convert';

List<ReportBillMd> reportBillMdFromJson(String str) => List<ReportBillMd>.from(
    json.decode(str).map((x) => ReportBillMd.fromJson(x)));

String reportBillMdToJson(List<ReportBillMd> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReportBillMd {
  ReportBillMd({
    this.row,
    this.deviceCode,
    this.branchName,
    this.dateOfffline,
    this.periodNumber,
    this.billNumber,
    this.wd1,
    this.wd2,
    this.wd3,
    this.wd4,
    this.wd5,
    this.wd6,
    this.total,
    this.pay,
    this.date,
  });
  String row;
  String deviceCode;
  String branchName;
  String dateOfffline;
  String periodNumber;
  String billNumber;
  String wd1;
  String wd2;
  String wd3;
  String wd4;
  String wd5;
  String wd6;
  String total;
  dynamic pay;
  dynamic date;

  factory ReportBillMd.fromJson(Map<String, dynamic> json) => ReportBillMd(
        row: json["row"],
        deviceCode: json["device_code"],
        branchName: json["branch_name"],
        dateOfffline: json["date_offfline"],
        periodNumber: json["period_number"],
        billNumber: json["bill_number"],
        wd1: json["wd1"],
        wd2: json["wd2"],
        wd3: json["wd3"],
        wd4: json["wd4"],
        wd5: json["wd5"],
        wd6: json["wd6"],
        total: json["total"],
        pay: json["pay"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "row": row,
        "device_code": deviceCode,
        "branch_name": branchName,
        "date_offfline": dateOfffline,
        "period_number": periodNumber,
        "bill_number": billNumber,
        "wd1": wd1,
        "wd2": wd2,
        "wd3": wd3,
        "wd4": wd4,
        "wd5": wd5,
        "wd6": wd6,
        "total": total,
        "pay": pay,
        "date": date,
      };
}
