#!/system/bin/sh
edac=`grep -r "LLCC Data RAM correctable Error" /data/vendor/diag/last_kmsg* | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "LLCC Data RAM correctable Error"
	fatal_error -m 1 --set "EDAC LLCC Data RAM correctable Error:Single bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "LLCC Data RAM uncorrectable Error" /data/vendor/diag/last_kmsg* | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "LLCC Data RAM uncorrectable Error"
	fatal_error -m 1 --set "EDAC LLCC Data RAM correctable Error:Multi bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "LLCC Tag RAM correctable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "LLCC Tag RAM correctable Error"
	fatal_error -m 1 --set "LLCC Tag RAM correctable Error:Single bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "LLCC Tag RAM uncorrectable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "LLCC Tag RAM uncorrectable Error"
	fatal_error -m 1 --set "LLCC Tag RAM uncorrectable Error:Multi bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "Kryo L1 Correctable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "Kryo L1 Correctable Error"
	fatal_error -m 1 --set "EDAC Kryo L1 Correctable Error:Single bit"
	fatal_err_count=$(($fatal_err_count+1))
fi


edac=`grep -r "Kryo L1 Uncorrectable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "Kryo L1 Uncorrectable Error"
	fatal_error -m 1 --set "EDAC Kryo L1 Uncorrectable Error:Multi bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "Kryo L2 Correctable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "Kryo L2 Correctable Error"
	fatal_error -m 1 --set "EDAC Kryo L2 Correctable Error:Single bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "Kryo L2 Uncorrectable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "$edac" -ge "2" ];then
	echo "Kryo L2 Uncorrectable Error"
	fatal_error -m 1 --set "EDAC Kryo L2 Uncorrectable Error:Multi bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "L3 Correctable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "edac" -ge "2" ];then
	echo "L3 Correctable Error"
	fatal_error -m 1 --set "EDAC L3 Correctable Error:Single bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "L3 Uncorrectable Error" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "edac" -ge "2" ];then
	echo "L3 Uncorrectable Error"
	fatal_error -m 1 --set "EDAC L3 Uncorrectable Error:Multi bit"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "EDAC kryo_edac: Error in matching cpu" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "edac" -ge "2" ];then
	echo "EDAC kryo_edac: Error in matching cpu"
	fatal_error -m 1 --set "EDAC Kryo Match Cpu Error"
	fatal_err_count=$(($fatal_err_count+1))
fi

edac=`grep -r "pc : do_undefinstr" /data/vendor/diag/last_kmsg*  | wc -l`
echo "edac fault=$edac"
log "edac fault=$edac"
if [ "edac" -ge "2" ];then
	echo "Instruction Exception"
	fatal_error -m 1 --set "Instruction Exception"
	fatal_err_count=$(($fatal_err_count+1))
fi

# 8550 pmic sequence
PMIC=("PMK8550" "PM8550" "PM8550VS1" "PM8550VS2" "PM8550VS3" "PM8550VE" "PM8550VS_4" "PM8550B" "PMR735D_L" "PMR735D_L" "PM8010_M" "PM8010_N" "OTHER")
OCP=`grep -r "OCP Occured" /dev/logfs/ | wc -l`
OCP_this_time=`grep -r "OCP Occured" /dev/logfs/UefiLog0.txt | wc -l`
echo "OCP fault=$OCP"
log "OCP fault=$OCP"
if [ "$OCP" -ge "3" ];then
    echo "OCP Occured"
    for line in $(seq 1 $OCP)
    do
        pmic_index=`grep -r "OCP Occured" /dev/logfs/ | head -n $line | tail -n 1 | awk -F ";" '{print $1}' | awk '{print $9}'`
        circuit=`grep -r "OCP Occured" /dev/logfs/ | head -n $line | tail -n 1 | awk -F "\n" '{print $1}' | awk -F ";" '{print $2}'`
        echo -e "OCP Occured: PMIC:${PMIC[$pmic_index]}$circuit"
        fatal_error -m 1 --set "OCP Occured: PMIC:${PMIC[$pmic_index]}$circuit"
    done
    if [ "$OCP_this_time" -ne "0" ];then
        fatal_err_count=$(($fatal_err_count+1)) # only reboot if ocp occured just now
    fi
fi


if [ "fatal_err_count" -ge "1" ];then
	echo "reboot after 1 min because of fatal error"
	sleep 60
	echo "reboot device because of fatal error"
	reboot
fi



