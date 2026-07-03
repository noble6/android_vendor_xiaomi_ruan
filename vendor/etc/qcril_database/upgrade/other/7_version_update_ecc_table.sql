/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 7);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '029132023';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '029561967';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '113';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '114';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '115';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '470' AND MNC = '01' AND NUMBER = '999';

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','029132023','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','029561967','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','113','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','114','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','115','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('470','01','199','','');

COMMIT TRANSACTION;

