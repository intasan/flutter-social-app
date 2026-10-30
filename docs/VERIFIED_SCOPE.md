# ขอบเขตที่ตรวจสอบจากระบบจริง

Repository: `intasan/flutter-social-app`
ฐาน source ที่ตรวจ: `c5f86a498b51cb64384e53840a42f2b6c51f44a7`

**สถานะ: ยังรันไม่ได้**

ไม่มี Flutter SDK; ไม่มี pubspec.yaml และหน้า pages ที่ service อ้างอิง รวมทั้งยังไม่มี Firebase configuration

## แหล่งหลักฐาน

- [evidence/source-audit.json](../evidence/source-audit.json)
- [evidence/attempt-test.txt](../evidence/attempt-test.txt)

## Traceability จาก source

| ไฟล์ที่ตรวจ | ขอบเขตที่ยืนยันได้ |
|---|---|
| [lib/main.dart](../lib/main.dart) | พบ source ใน commit ข้างต้น; การมีไฟล์ไม่ใช่การทดสอบผ่าน |
| [lib/services/auth_service.dart](../lib/services/auth_service.dart) | พบ source ใน commit ข้างต้น; การมีไฟล์ไม่ใช่การทดสอบผ่าน |
| [lib/services/firestore_service.dart](../lib/services/firestore_service.dart) | พบ source ใน commit ข้างต้น; การมีไฟล์ไม่ใช่การทดสอบผ่าน |

## เกณฑ์ตรวจรับ BA / SA

| เกณฑ์ | หลักฐาน / สถานะ |
|---|---|
| ขอบเขตปัจจุบันตรงกับ source | ยังรันไม่ได้ |
| End-to-end ด้วยข้อมูลจริง | ไม่มี Flutter SDK; ไม่มี pubspec.yaml และหน้า pages ที่ service อ้างอิง รวมทั้งยังไม่มี Firebase configuration |
| ผลการทดสอบที่ทำซ้ำได้ | อ่าน command, stdout, exit code ใน evidence; syntax check ไม่ใช่ runtime test |
| ข้อมูลจริงและ provenance | เฉพาะราคาทองใน live-verification.txt ที่มี URL/เวลา publication; ไม่ใช้ fixture เป็นข้อมูลจริง |
| UAT โดยเจ้าของงานหรือผู้ใช้งาน | ยังไม่ได้ดำเนินการในรอบนี้ |

## ข้อจำกัดการแสดงผลงาน

ผล unit tests เป็นการตรวจ logic โดยมี fixture ตาม suite เดิม ไม่ใช่หลักฐานธุรกรรมจริง การฝึกโมเดลจริง การทำงานของอุปกรณ์จริง หรือการรับรองจากผู้ใช้ ไม่สร้างข้อมูลธุรกิจทดแทนข้อมูลที่ขาด และไม่อนุมานว่าไม่มีข้อมูลเท่ากับปลอดภัย
