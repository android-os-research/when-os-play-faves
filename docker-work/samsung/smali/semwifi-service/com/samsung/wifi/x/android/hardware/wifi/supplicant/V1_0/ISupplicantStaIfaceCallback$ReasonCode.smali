.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReasonCode"
.end annotation


# static fields
.field public static final AKMP_NOT_VALID:I = 0x14

.field public static final AUTHORIZED_ACCESS_LIMIT_REACHED:I = 0x2e

.field public static final BAD_CIPHER_OR_AKM:I = 0x1d

.field public static final BSS_TRANSITION_DISASSOC:I = 0xc

.field public static final CIPHER_SUITE_REJECTED:I = 0x18

.field public static final CLASS2_FRAME_FROM_NONAUTH_STA:I = 0x6

.field public static final CLASS3_FRAME_FROM_NONASSOC_STA:I = 0x7

.field public static final DEAUTH_LEAVING:I = 0x3

.field public static final DISASSOC_AP_BUSY:I = 0x5

.field public static final DISASSOC_DUE_TO_INACTIVITY:I = 0x4

.field public static final DISASSOC_LOW_ACK:I = 0x22

.field public static final DISASSOC_STA_HAS_LEFT:I = 0x8

.field public static final END_TS_BA_DLS:I = 0x25

.field public static final EXCEEDED_TXOP:I = 0x23

.field public static final EXTERNAL_SERVICE_REQUIREMENTS:I = 0x2f

.field public static final FOURWAY_HANDSHAKE_TIMEOUT:I = 0xf

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x12

.field public static final GROUP_KEY_UPDATE_TIMEOUT:I = 0x10

.field public static final IEEE_802_1X_AUTH_FAILED:I = 0x17

.field public static final IE_IN_4WAY_DIFFERS:I = 0x11

.field public static final INVALID_FTE:I = 0x33

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x30

.field public static final INVALID_IE:I = 0xd

.field public static final INVALID_MDE:I = 0x32

.field public static final INVALID_PMKID:I = 0x31

.field public static final INVALID_RSN_IE_CAPAB:I = 0x16

.field public static final MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS:I = 0x40

.field public static final MESH_CHANNEL_SWITCH_REGULATORY_REQ:I = 0x41

.field public static final MESH_CHANNEL_SWITCH_UNSPECIFIED:I = 0x42

.field public static final MESH_CLOSE_RCVD:I = 0x37

.field public static final MESH_CONFIG_POLICY_VIOLATION:I = 0x36

.field public static final MESH_CONFIRM_TIMEOUT:I = 0x39

.field public static final MESH_INCONSISTENT_PARAMS:I = 0x3b

.field public static final MESH_INVALID_GTK:I = 0x3a

.field public static final MESH_INVALID_SECURITY_CAP:I = 0x3c

.field public static final MESH_MAX_PEERS:I = 0x35

.field public static final MESH_MAX_RETRIES:I = 0x38

.field public static final MESH_PATH_ERROR_DEST_UNREACHABLE:I = 0x3f

.field public static final MESH_PATH_ERROR_NO_FORWARDING_INFO:I = 0x3e

.field public static final MESH_PATH_ERROR_NO_PROXY_INFO:I = 0x3d

.field public static final MESH_PEERING_CANCELLED:I = 0x34

.field public static final MICHAEL_MIC_FAILURE:I = 0xe

.field public static final NOT_AUTHORIZED_THIS_LOCATION:I = 0x1e

.field public static final NOT_ENOUGH_BANDWIDTH:I = 0x21

.field public static final NO_SSP_ROAMING_AGREEMENT:I = 0x1c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x13

.field public static final PEERKEY_MISMATCH:I = 0x2d

.field public static final PREV_AUTH_NOT_VALID:I = 0x2

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0xa

.field public static final SERVICE_CHANGE_PRECLUDES_TS:I = 0x1f

.field public static final SSP_REQUESTED_DISASSOC:I = 0x1b

.field public static final STA_LEAVING:I = 0x24

.field public static final STA_REQ_ASSOC_WITHOUT_AUTH:I = 0x9

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0xb

.field public static final TDLS_TEARDOWN_UNREACHABLE:I = 0x19

.field public static final TDLS_TEARDOWN_UNSPECIFIED:I = 0x1a

.field public static final TIMEOUT:I = 0x27

.field public static final UNKNOWN_TS_BA:I = 0x26

.field public static final UNSPECIFIED:I = 0x1

.field public static final UNSPECIFIED_QOS_REASON:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const-string v1, "UNSPECIFIED"

    .line 2054
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v1, "PREV_AUTH_NOT_VALID"

    .line 2058
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1d
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_29

    const-string v1, "DEAUTH_LEAVING"

    .line 2062
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_29
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    const-string v1, "DISASSOC_DUE_TO_INACTIVITY"

    .line 2066
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_35
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_41

    const-string v1, "DISASSOC_AP_BUSY"

    .line 2070
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_41
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4d

    const-string v1, "CLASS2_FRAME_FROM_NONAUTH_STA"

    .line 2074
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_4d
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_59

    const-string v1, "CLASS3_FRAME_FROM_NONASSOC_STA"

    .line 2078
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_59
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_66

    const-string v1, "DISASSOC_STA_HAS_LEFT"

    .line 2082
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_66
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_73

    const-string v1, "STA_REQ_ASSOC_WITHOUT_AUTH"

    .line 2086
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_73
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_80

    const-string v1, "PWR_CAPABILITY_NOT_VALID"

    .line 2090
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_80
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_8d

    const-string v1, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 2094
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_8d
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_9a

    const-string v1, "BSS_TRANSITION_DISASSOC"

    .line 2098
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_9a
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_a7

    const-string v1, "INVALID_IE"

    .line 2102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_a7
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_b4

    const-string v1, "MICHAEL_MIC_FAILURE"

    .line 2106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_b4
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_c1

    const-string v1, "FOURWAY_HANDSHAKE_TIMEOUT"

    .line 2110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_c1
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_ce

    const-string v1, "GROUP_KEY_UPDATE_TIMEOUT"

    .line 2114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_ce
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_db

    const-string v1, "IE_IN_4WAY_DIFFERS"

    .line 2118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_db
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_e8

    const-string v1, "GROUP_CIPHER_NOT_VALID"

    .line 2122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_e8
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_f5

    const-string v1, "PAIRWISE_CIPHER_NOT_VALID"

    .line 2126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_f5
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_102

    const-string v1, "AKMP_NOT_VALID"

    .line 2130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x14

    :cond_102
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_10f

    const-string v1, "UNSUPPORTED_RSN_IE_VERSION"

    .line 2134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x15

    :cond_10f
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_11c

    const-string v1, "INVALID_RSN_IE_CAPAB"

    .line 2138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_11c
    and-int/lit8 v1, p0, 0x17

    const/16 v3, 0x17

    if-ne v1, v3, :cond_129

    const-string v1, "IEEE_802_1X_AUTH_FAILED"

    .line 2142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x17

    :cond_129
    and-int/lit8 v1, p0, 0x18

    const/16 v3, 0x18

    if-ne v1, v3, :cond_136

    const-string v1, "CIPHER_SUITE_REJECTED"

    .line 2146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x18

    :cond_136
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_143

    const-string v1, "TDLS_TEARDOWN_UNREACHABLE"

    .line 2150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x19

    :cond_143
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_150

    const-string v1, "TDLS_TEARDOWN_UNSPECIFIED"

    .line 2154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1a

    :cond_150
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_15d

    const-string v1, "SSP_REQUESTED_DISASSOC"

    .line 2158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1b

    :cond_15d
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_16a

    const-string v1, "NO_SSP_ROAMING_AGREEMENT"

    .line 2162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1c

    :cond_16a
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_177

    const-string v1, "BAD_CIPHER_OR_AKM"

    .line 2166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1d

    :cond_177
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_184

    const-string v1, "NOT_AUTHORIZED_THIS_LOCATION"

    .line 2170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1e

    :cond_184
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_191

    const-string v1, "SERVICE_CHANGE_PRECLUDES_TS"

    .line 2174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1f

    :cond_191
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_19e

    const-string v1, "UNSPECIFIED_QOS_REASON"

    .line 2178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_19e
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_1ab

    const-string v1, "NOT_ENOUGH_BANDWIDTH"

    .line 2182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_1ab
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_1b8

    const-string v1, "DISASSOC_LOW_ACK"

    .line 2186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x22

    :cond_1b8
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_1c5

    const-string v1, "EXCEEDED_TXOP"

    .line 2190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_1c5
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_1d2

    const-string v1, "STA_LEAVING"

    .line 2194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x24

    :cond_1d2
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_1df

    const-string v1, "END_TS_BA_DLS"

    .line 2198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x25

    :cond_1df
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_1ec

    const-string v1, "UNKNOWN_TS_BA"

    .line 2202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x26

    :cond_1ec
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1f9

    const-string v1, "TIMEOUT"

    .line 2206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x27

    :cond_1f9
    and-int/lit8 v1, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_206

    const-string v1, "PEERKEY_MISMATCH"

    .line 2210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2d

    :cond_206
    and-int/lit8 v1, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_213

    const-string v1, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    .line 2214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2e

    :cond_213
    and-int/lit8 v1, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_220

    const-string v1, "EXTERNAL_SERVICE_REQUIREMENTS"

    .line 2218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2f

    :cond_220
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_22d

    const-string v1, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 2222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_22d
    and-int/lit8 v1, p0, 0x31

    const/16 v3, 0x31

    if-ne v1, v3, :cond_23a

    const-string v1, "INVALID_PMKID"

    .line 2226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x31

    :cond_23a
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_247

    const-string v1, "INVALID_MDE"

    .line 2230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_247
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_254

    const-string v1, "INVALID_FTE"

    .line 2234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_254
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_261

    const-string v1, "MESH_PEERING_CANCELLED"

    .line 2238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_261
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_26e

    const-string v1, "MESH_MAX_PEERS"

    .line 2242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_26e
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_27b

    const-string v1, "MESH_CONFIG_POLICY_VIOLATION"

    .line 2246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_27b
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_288

    const-string v1, "MESH_CLOSE_RCVD"

    .line 2250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_288
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_295

    const-string v1, "MESH_MAX_RETRIES"

    .line 2254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x38

    :cond_295
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_2a2

    const-string v1, "MESH_CONFIRM_TIMEOUT"

    .line 2258
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x39

    :cond_2a2
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_2af

    const-string v1, "MESH_INVALID_GTK"

    .line 2262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3a

    :cond_2af
    and-int/lit8 v1, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2bc

    const-string v1, "MESH_INCONSISTENT_PARAMS"

    .line 2266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3b

    :cond_2bc
    and-int/lit8 v1, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_2c9

    const-string v1, "MESH_INVALID_SECURITY_CAP"

    .line 2270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3c

    :cond_2c9
    and-int/lit8 v1, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_2d6

    const-string v1, "MESH_PATH_ERROR_NO_PROXY_INFO"

    .line 2274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3d

    :cond_2d6
    and-int/lit8 v1, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_2e3

    const-string v1, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    .line 2278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3e

    :cond_2e3
    and-int/lit8 v1, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_2f0

    const-string v1, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    .line 2282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_2f0
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2fd

    const-string v1, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    .line 2286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_2fd
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_30a

    const-string v1, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    .line 2290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_30a
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_317

    const-string v1, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    .line 2294
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_317
    if-eq p0, v2, :cond_333

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_333
    const-string p0, " | "

    .line 2300
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "UNSPECIFIED"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "PREV_AUTH_NOT_VALID"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "DEAUTH_LEAVING"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string p0, "DISASSOC_DUE_TO_INACTIVITY"

    return-object p0

    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string p0, "DISASSOC_AP_BUSY"

    return-object p0

    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string p0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    return-object p0

    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string p0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    return-object p0

    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string p0, "DISASSOC_STA_HAS_LEFT"

    return-object p0

    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string p0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    return-object p0

    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    return-object p0

    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object p0

    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string p0, "BSS_TRANSITION_DISASSOC"

    return-object p0

    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string p0, "INVALID_IE"

    return-object p0

    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string p0, "MICHAEL_MIC_FAILURE"

    return-object p0

    :cond_5b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_62

    const-string p0, "FOURWAY_HANDSHAKE_TIMEOUT"

    return-object p0

    :cond_62
    const/16 v0, 0x10

    if-ne p0, v0, :cond_69

    const-string p0, "GROUP_KEY_UPDATE_TIMEOUT"

    return-object p0

    :cond_69
    const/16 v0, 0x11

    if-ne p0, v0, :cond_70

    const-string p0, "IE_IN_4WAY_DIFFERS"

    return-object p0

    :cond_70
    const/16 v0, 0x12

    if-ne p0, v0, :cond_77

    const-string p0, "GROUP_CIPHER_NOT_VALID"

    return-object p0

    :cond_77
    const/16 v0, 0x13

    if-ne p0, v0, :cond_7e

    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object p0

    :cond_7e
    const/16 v0, 0x14

    if-ne p0, v0, :cond_85

    const-string p0, "AKMP_NOT_VALID"

    return-object p0

    :cond_85
    const/16 v0, 0x15

    if-ne p0, v0, :cond_8c

    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object p0

    :cond_8c
    const/16 v0, 0x16

    if-ne p0, v0, :cond_93

    const-string p0, "INVALID_RSN_IE_CAPAB"

    return-object p0

    :cond_93
    const/16 v0, 0x17

    if-ne p0, v0, :cond_9a

    const-string p0, "IEEE_802_1X_AUTH_FAILED"

    return-object p0

    :cond_9a
    const/16 v0, 0x18

    if-ne p0, v0, :cond_a1

    const-string p0, "CIPHER_SUITE_REJECTED"

    return-object p0

    :cond_a1
    const/16 v0, 0x19

    if-ne p0, v0, :cond_a8

    const-string p0, "TDLS_TEARDOWN_UNREACHABLE"

    return-object p0

    :cond_a8
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_af

    const-string p0, "TDLS_TEARDOWN_UNSPECIFIED"

    return-object p0

    :cond_af
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_b6

    const-string p0, "SSP_REQUESTED_DISASSOC"

    return-object p0

    :cond_b6
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_bd

    const-string p0, "NO_SSP_ROAMING_AGREEMENT"

    return-object p0

    :cond_bd
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_c4

    const-string p0, "BAD_CIPHER_OR_AKM"

    return-object p0

    :cond_c4
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_cb

    const-string p0, "NOT_AUTHORIZED_THIS_LOCATION"

    return-object p0

    :cond_cb
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_d2

    const-string p0, "SERVICE_CHANGE_PRECLUDES_TS"

    return-object p0

    :cond_d2
    const/16 v0, 0x20

    if-ne p0, v0, :cond_d9

    const-string p0, "UNSPECIFIED_QOS_REASON"

    return-object p0

    :cond_d9
    const/16 v0, 0x21

    if-ne p0, v0, :cond_e0

    const-string p0, "NOT_ENOUGH_BANDWIDTH"

    return-object p0

    :cond_e0
    const/16 v0, 0x22

    if-ne p0, v0, :cond_e7

    const-string p0, "DISASSOC_LOW_ACK"

    return-object p0

    :cond_e7
    const/16 v0, 0x23

    if-ne p0, v0, :cond_ee

    const-string p0, "EXCEEDED_TXOP"

    return-object p0

    :cond_ee
    const/16 v0, 0x24

    if-ne p0, v0, :cond_f5

    const-string p0, "STA_LEAVING"

    return-object p0

    :cond_f5
    const/16 v0, 0x25

    if-ne p0, v0, :cond_fc

    const-string p0, "END_TS_BA_DLS"

    return-object p0

    :cond_fc
    const/16 v0, 0x26

    if-ne p0, v0, :cond_103

    const-string p0, "UNKNOWN_TS_BA"

    return-object p0

    :cond_103
    const/16 v0, 0x27

    if-ne p0, v0, :cond_10a

    const-string p0, "TIMEOUT"

    return-object p0

    :cond_10a
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_111

    const-string p0, "PEERKEY_MISMATCH"

    return-object p0

    :cond_111
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_118

    const-string p0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    return-object p0

    :cond_118
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_11f

    const-string p0, "EXTERNAL_SERVICE_REQUIREMENTS"

    return-object p0

    :cond_11f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_126

    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object p0

    :cond_126
    const/16 v0, 0x31

    if-ne p0, v0, :cond_12d

    const-string p0, "INVALID_PMKID"

    return-object p0

    :cond_12d
    const/16 v0, 0x32

    if-ne p0, v0, :cond_134

    const-string p0, "INVALID_MDE"

    return-object p0

    :cond_134
    const/16 v0, 0x33

    if-ne p0, v0, :cond_13b

    const-string p0, "INVALID_FTE"

    return-object p0

    :cond_13b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_142

    const-string p0, "MESH_PEERING_CANCELLED"

    return-object p0

    :cond_142
    const/16 v0, 0x35

    if-ne p0, v0, :cond_149

    const-string p0, "MESH_MAX_PEERS"

    return-object p0

    :cond_149
    const/16 v0, 0x36

    if-ne p0, v0, :cond_150

    const-string p0, "MESH_CONFIG_POLICY_VIOLATION"

    return-object p0

    :cond_150
    const/16 v0, 0x37

    if-ne p0, v0, :cond_157

    const-string p0, "MESH_CLOSE_RCVD"

    return-object p0

    :cond_157
    const/16 v0, 0x38

    if-ne p0, v0, :cond_15e

    const-string p0, "MESH_MAX_RETRIES"

    return-object p0

    :cond_15e
    const/16 v0, 0x39

    if-ne p0, v0, :cond_165

    const-string p0, "MESH_CONFIRM_TIMEOUT"

    return-object p0

    :cond_165
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_16c

    const-string p0, "MESH_INVALID_GTK"

    return-object p0

    :cond_16c
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_173

    const-string p0, "MESH_INCONSISTENT_PARAMS"

    return-object p0

    :cond_173
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_17a

    const-string p0, "MESH_INVALID_SECURITY_CAP"

    return-object p0

    :cond_17a
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_181

    const-string p0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    return-object p0

    :cond_181
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_188

    const-string p0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    return-object p0

    :cond_188
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_18f

    const-string p0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    return-object p0

    :cond_18f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_196

    const-string p0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    return-object p0

    :cond_196
    const/16 v0, 0x41

    if-ne p0, v0, :cond_19d

    const-string p0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    return-object p0

    :cond_19d
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1a4

    const-string p0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    return-object p0

    .line 2047
    :cond_1a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
