/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties()
{
    char platform[PROP_VALUE_MAX];
    char cid[PROP_VALUE_MAX];
    char carrier[PROP_VALUE_MAX];
    int rc;

    rc = property_get("ro.board.platform", platform);
    if (!rc || strncmp(platform, ANDROID_TARGET, PROP_VALUE_MAX))
        return;

    property_get("ro.boot.cid", cid);
    property_get("ro.boot.carrier", carrier);

    property_set("ro.build.product", "quark");

    if (strstr(cid, "0xC")) {
        /* XT1225 */
        property_set("ro.product.model", "XT1225");
        property_set("ro.product.device", "quark_umts");
        property_set("ro.telephony.default_network", "9");
        property_set("telephony.lteOnGsmDevice", "1");
        if (strstr(carrier, "retbr")) {
            property_set("ro.fsg-id", "singlela");
            property_set("ro.product.display", "Moto Maxx");
            property_set("ro.build.description", "quark_retbr-user 5.0.2 LXG22.33-12.16 16 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_retbr/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
        } else if (strstr(carrier, "reteu")) {
            property_set("ro.fsg-id", "emea");
            property_set("ro.product.display", "Moto turbo");
            property_set("ro.build.description", "quark_reteu-user 5.0.2 LXG22.33-12.16 16 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_reteu/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
        } else if (strstr(carrier, "retla")) {
            property_set("ro.fsg-id", "singlela");
            property_set("ro.product.display", "Moto Maxx");
            property_set("ro.build.description", "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
        } else {
            /* others carrier set as retla */
            property_set("ro.fsg-id", "singlela");
            property_set("ro.product.display", "Moto Maxx");
            property_set("ro.build.description", "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
        }

    } else if (strstr(cid, "0x2")) {
        /* XT1254 */
        if (strstr(carrier, "vzw")) {
            /* verizon */
            property_set ("ro.fsg-id", "verizon");
            property_set("ro.product.model", "XT1254");
            property_set("ro.product.device", "quark");
            property_set("ro.build.description", "quark_verizon-user 5.1 SU4TL-44 44 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_verizon/quark:5.1/SU4TL-44/44:user/release-keys");
            property_set("ro.telephony.default_network", "10");
            property_set("telephony.lteOnCdmaDevice", "1");
            property_set("ro.telephony.default_cdma_sub", "0");
            property_set("ro.ril.force_eri_from_xml", "true");
            property_set("ro.telephony.get_imsi_from_sim", "true");
            property_set("ro.com.google.clientidbase.am", "android-verizon");
            property_set("ro.com.google.clientidbase.ms", "android-verizon");
            property_set("ro.com.google.clientidbase.yt", "android-verizon");
        } else {
            /* especial case set as retla */
            property_set ("ro.fsg-id", "singlela");
            property_set("ro.product.model", "XT1254");
            property_set("ro.product.device", "quark_umts");
            property_set("ro.product.display", "Moto Maxx");
            property_set("ro.telephony.default_network", "9");
            property_set("telephony.lteOnGsmDevice", "1");
            property_set("ro.build.description", "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys");
            property_set("ro.build.fingerprint", "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
        }
    } else if (strstr(cid, "xt1250")) {
        /* XT1250 */
        property_set ("ro.fsg-id", "lra");
        property_set("ro.product.model", "XT1250");
        property_set("ro.product.device", "quark_lra");
        property_set("ro.product.display", "Moto Maxx");
        property_set("ro.telephony.default_network", "9");
        property_set("telephony.lteOnGsmDevice", "1");
        property_set("ro.build.description", "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys");
        property_set("ro.build.fingerprint", "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");

    } else {
        /* Unknown models set as retla */
        property_set("ro.fsg-id", "singlela");
        property_set("ro.product.model", "XT1225");
        property_set("ro.product.device", "quark_umts");
        property_set("ro.product.display", "Moto Maxx");
        property_set("ro.telephony.default_network", "9");
        property_set("telephony.lteOnGsmDevice", "1");
        property_set("ro.build.description", "quark_retla-user 5.0.2 LXG22.33-12.16 16 release-keys");
        property_set("ro.build.fingerprint", "motorola/quark_retla/quark_umts:5.0.2/LXG22.33-12.16/16:user/release-keys");
    }
}
