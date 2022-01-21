import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:lotterymanagement/Controllers/Report/PrintReportCTR.dart';
import 'package:lotterymanagement/Models/ModelReport/ReportAllMD.dart';

void main() {
  PrintReportCTR reportAll = Get.put(PrintReportCTR());

  test("Period is null", () {
    reportAll.getReportAll(" ", "0", "0");
    expect(reportAll.error("ບໍ່ຮູ້ຈັກງວດ ?"), "ບໍ່ຮູ້ຈັກງວດ ?");
  });

    test("Branch is null", () {
    reportAll.getReportAll("22001", " ", "0");
    expect(reportAll.error("ບໍ່ຮູ້ຈັກສາຂາ ?"), "ບໍ່ຮູ້ຈັກສາຂາ ?");
  });

    test("Unit is null", () {
    reportAll.getReportAll("22001", "0", " ");
    expect(reportAll.error("ບໍ່ຮູ້ຈັກໜ່ວຍ ?"), "ບໍ່ຮູ້ຈັກໜ່ວຍ ?");
  });
 
}
