#!/system/bin/sh
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

# These are the common values
setprop "ro.build.product" "quark"
setprop "ro.product.device" "quark"

# Check fsg to determine the model

# XT1250 - LRA
ls /fsg | grep quark_lra > /dev/null 2> /dev/null
if [ $? -eq 0 ]; then
    setprop "ro.fsg-id" "lra"
    setprop "ro.product.model" "Moto MAXX"
    setprop "ro.build.description" "quark_lra-user 4.4.4 KXG21.50-11 8 release-keys"
    setprop "ro.build.fingerprint" "motorola/quark_lra/quark:4.4.4/KXG21.50-11/8:user/release-keys"
    setprop "ro.cdma.home.operator.isnan" "1"
    setprop "persist.radio.0x9e_not_callname" "1"
    setprop "persist.ril.max.crit.qmi.fails" "4"
    setprop "ril.subscription.types" "NV,RUIM"
    setprop "ro.cdma.subscribe_on_ruim_ready" "true"
    setprop "ro.mot.ignore_csim_appid" "true"
    setprop "ro.ril.svdo" "true"
    setprop "ro.telephony.default_network" "10"
    setprop "telephony.lteOnCdmaDevice" "1"
    setprop "telephony.rilV7NeedCDMALTEPhone" "true"
    exit 0
fi

# XT1225 - SINGLELA
ls /fsg | grep quark_singlela > /dev/null 2> /dev/null
if [ $? -eq 0 ]; then
    setprop "ro.fsg-id" "singlela"
    setprop "ro.product.model" "Moto MAXX"
    setprop "ro.build.description" "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys"
    setprop "ro.build.fingerprint" "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys"
    setprop "ro.telephony.default_network" "9"
    setprop "telephony.lteOnGsmDevice" "1"
    exit 0
fi

# XT1225 - RETEU
ls /fsg | grep quark_emea > /dev/null 2> /dev/null
if [ $? -eq 0 ]; then
    setprop "ro.fsg-id" "emea"
    setprop "ro.product.model" "Moto Turbo"
    setprop "ro.build.description" "quark_reteu-user 5.0.2 LXG22.33-12.16 16 release-keys"
    setprop "ro.build.fingerprint" "motorola/quark_reteu/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys"
    setprop "ro.telephony.default_network" "9"
    setprop "telephony.lteOnGsmDevice" "1"
    exit 0
fi

# Unknown model, try to use ro.boot.carrier
CARRIER=$(getprop "ro.boot.carrier")

setprop "ro.fsg-id" "$CARRIER"
setprop "ro.product.model" "Moto XT1225 ($CARRIER)"
setprop "ro.build.description" "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys"
setprop "ro.build.fingerprint" "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys"
exit 1