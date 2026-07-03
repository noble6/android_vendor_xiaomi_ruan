/*
  Copyright (c) 2019 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 10);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '122';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '125';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '128';


DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '122';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '123';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '110';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '125';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '704' AND MNC = '01' AND NUMBER = '128';


COMMIT TRANSACTION;


