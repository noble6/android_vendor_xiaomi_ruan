/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 14);

DELETE FROM "qcril_emergency_source_mcc_table" WHERE MCC='525';
DELETE FROM "qcril_emergency_source_hard_mcc_table" WHERE MCC='525';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','05','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','05','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','05','999','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','05','995','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','03','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','03','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('525','03','999','','');

DELETE FROM "qcril_emergency_source_mcc_mnc_table" WHERE MCC='228' AND MNC='02';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('228','02','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('228','02','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','911','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('228','999','','');

DELETE FROM "qcril_emergency_source_mcc_table" WHERE MCC='457';
DELETE FROM "qcril_emergency_source_hard_mcc_table" WHERE MCC='457';

DELETE FROM "qcril_emergency_source_mcc_table" WHERE MCC='230';
DELETE FROM "qcril_emergency_source_hard_mcc_table" WHERE MCC='230';
DELETE FROM "qcril_emergency_source_mcc_mnc_table" WHERE MCC='230';
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" WHERE MCC='230';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('230','01','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('230','01','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('230','02','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('230','03','112','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('230','01','150','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('230','01','155','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('230','01','158','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','911','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('230','999','','');

INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('370','02','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','911','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('370','999','','');

DELETE FROM "qcril_emergency_source_mcc_table" WHERE MCC='401' AND NUMBER='118';
DELETE FROM "qcril_emergency_source_hard_mcc_table" WHERE MCC='401';

DELETE FROM "qcril_emergency_source_mcc_mnc_table" WHERE MCC='714' AND MNC='03';
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" WHERE MCC='714' AND MNC='03';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('714','03','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('714','03','112','','');

DELETE FROM "qcril_emergency_source_mcc_mnc_table" WHERE MCC='748' AND MNC='10';
DELETE FROM "qcril_emergency_source_voice_mcc_mnc_table" WHERE MCC='748' AND MNC='10';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('748','10','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('748','10','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('748','999','','');

DELETE FROM "qcril_emergency_source_hard_mcc_table" WHERE MCC='520';
DELETE FROM "qcril_emergency_source_mcc_table" WHERE MCC='520';
DELETE FROM "qcril_emergency_source_voice_table" WHERE MCC='520' AND NUMBER='1154';
DELETE FROM "qcril_emergency_source_voice_table" WHERE MCC='520' AND NUMBER='1155';
DELETE FROM "qcril_emergency_source_voice_table" WHERE MCC='520' AND NUMBER='1554';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','18','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','18','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','05','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','05','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','47','911','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','47','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('520','04','112','','');

INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','911','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','112','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','000','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','08','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','110','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','118','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','119','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('240','999','','');

COMMIT TRANSACTION;


