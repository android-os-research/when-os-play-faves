.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCode"
.end annotation


# static fields
.field public static final ADV_SRV_UNREACHABLE:I = 0x41

.field public static final AKMP_NOT_VALID:I = 0x2b

.field public static final ANTI_CLOGGING_TOKEN_REQ:I = 0x4c

.field public static final AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11

.field public static final ASSOC_DENIED_LISTEN_INT_TOO_LARGE:I = 0x33

.field public static final ASSOC_DENIED_NOSHORT:I = 0x13

.field public static final ASSOC_DENIED_NO_HT:I = 0x1b

.field public static final ASSOC_DENIED_NO_PCO:I = 0x1d

.field public static final ASSOC_DENIED_NO_SHORT_SLOT_TIME:I = 0x19

.field public static final ASSOC_DENIED_NO_VHT:I = 0x68

.field public static final ASSOC_DENIED_RATES:I = 0x12

.field public static final ASSOC_DENIED_UNSPEC:I = 0xc

.field public static final ASSOC_REJECTED_TEMPORARILY:I = 0x1e

.field public static final AUTHORIZATION_DEENABLED:I = 0x6b

.field public static final AUTH_TIMEOUT:I = 0x10

.field public static final BAD_INTERVAL_WITH_U_APSD_COEX:I = 0x4b

.field public static final CANNOT_FIND_ALT_TBTT:I = 0x4e

.field public static final CAPS_UNSUPPORTED:I = 0xa

.field public static final CHALLENGE_FAIL:I = 0xf

.field public static final CIPHER_REJECTED_PER_POLICY:I = 0x2e

.field public static final DENIED_DUE_TO_SPECTRUM_MANAGEMENT:I = 0x67

.field public static final DENIED_INSUFFICIENT_BANDWIDTH:I = 0x21

.field public static final DENIED_POOR_CHANNEL_CONDITIONS:I = 0x22

.field public static final DENIED_QOS_NOT_SUPPORTED:I = 0x23

.field public static final DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL:I = 0x63

.field public static final DEST_STA_NOT_PRESENT:I = 0x31

.field public static final DEST_STA_NOT_QOS_STA:I = 0x32

.field public static final DIRECT_LINK_NOT_ALLOWED:I = 0x30

.field public static final ENABLEMENT_DENIED:I = 0x69

.field public static final FILS_AUTHENTICATION_FAILURE:I = 0x70

.field public static final FINITE_CYCLIC_GROUP_NOT_SUPPORTED:I = 0x4d

.field public static final GAS_ADV_PROTO_NOT_SUPPORTED:I = 0x3b

.field public static final GAS_RESP_LARGER_THAN_LIMIT:I = 0x3f

.field public static final GAS_RESP_NOT_RECEIVED:I = 0x3d

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x29

.field public static final INSUFFICIENT_TCLAS_PROCESSING_RESOURCES:I = 0x39

.field public static final INVALID_FTIE:I = 0x37

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x34

.field public static final INVALID_IE:I = 0x28

.field public static final INVALID_MDIE:I = 0x36

.field public static final INVALID_PARAMETERS:I = 0x26

.field public static final INVALID_PMKID:I = 0x35

.field public static final INVALID_RSNIE:I = 0x48

.field public static final INVALID_RSN_IE_CAPAB:I = 0x2d

.field public static final MAF_LIMIT_EXCEEDED:I = 0x65

.field public static final MCCAOP_RESERVATION_CONFLICT:I = 0x64

.field public static final MCCA_TRACK_LIMIT_EXCEEDED:I = 0x66

.field public static final NOT_IN_SAME_BSS:I = 0x7

.field public static final NOT_SUPPORTED_AUTH_ALG:I = 0xd

.field public static final NO_OUTSTANDING_GAS_REQ:I = 0x3c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x2a

.field public static final PENDING_ADMITTING_FST_SESSION:I = 0x56

.field public static final PENDING_GAP_IN_BA_WINDOW:I = 0x58

.field public static final PERFORMING_FST_NOW:I = 0x57

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0x17

.field public static final QUERY_RESP_OUTSTANDING:I = 0x5f

.field public static final R0KH_UNREACHABLE:I = 0x1c

.field public static final REASSOC_NO_ASSOC:I = 0xb

.field public static final REFUSED_AP_OUT_OF_MEMORY:I = 0x5d

.field public static final REFUSED_EXTERNAL_REASON:I = 0x5c

.field public static final REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED:I = 0x5e

.field public static final REJECTED_WITH_SUGGESTED_BSS_TRANSITION:I = 0x52

.field public static final REJECTED_WITH_SUGGESTED_CHANGES:I = 0x27

.field public static final REJECT_DSE_BAND:I = 0x60

.field public static final REJECT_NO_WAKEUP_SPECIFIED:I = 0x54

.field public static final REJECT_U_PID_SETTING:I = 0x59

.field public static final REJECT_WITH_SCHEDULE:I = 0x53

.field public static final REQUESTED_TCLAS_NOT_SUPPORTED:I = 0x38

.field public static final REQUEST_DECLINED:I = 0x25

.field public static final REQ_REFUSED_HOME:I = 0x40

.field public static final REQ_REFUSED_SSPN:I = 0x43

.field public static final REQ_REFUSED_UNAUTH_ACCESS:I = 0x44

.field public static final REQ_TCLAS_NOT_SUPPORTED:I = 0x50

.field public static final RESTRICTION_FROM_AUTHORIZED_GDB:I = 0x6a

.field public static final ROBUST_MGMT_FRAME_POLICY_VIOLATION:I = 0x1f

.field public static final SECURITY_DISABLED:I = 0x5

.field public static final SPEC_MGMT_REQUIRED:I = 0x16

.field public static final STA_TIMED_OUT_WAITING_FOR_GAS_RESP:I = 0x3e

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_POWER_SAVE_MODE:I = 0x55

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0x18

.field public static final TCLAS_PROCESSING_TERMINATED:I = 0x61

.field public static final TCLAS_RESOURCES_EXCHAUSTED:I = 0x51

.field public static final TDLS_WAKEUP_ALTERNATE:I = 0x2

.field public static final TDLS_WAKEUP_REJECT:I = 0x3

.field public static final TRANSMISSION_FAILURE:I = 0x4f

.field public static final TRY_ANOTHER_BSS:I = 0x3a

.field public static final TS_NOT_CREATED:I = 0x2f

.field public static final TS_SCHEDULE_CONFLICT:I = 0x62

.field public static final UNACCEPTABLE_LIFETIME:I = 0x6

.field public static final UNKNOWN_AUTHENTICATION_SERVER:I = 0x71

.field public static final UNKNOWN_AUTH_TRANSACTION:I = 0xe

.field public static final UNSPECIFIED_FAILURE:I = 0x1

.field public static final UNSPECIFIED_QOS_FAILURE:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x2c

.field public static final U_APSD_COEX_MODE_NOT_SUPPORTED:I = 0x4a

.field public static final U_APSD_COEX_NOT_SUPPORTED:I = 0x49


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SUCCESS"

    .line 1405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    const-string v1, "UNSPECIFIED_FAILURE"

    .line 1407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    const-string v1, "TDLS_WAKEUP_ALTERNATE"

    .line 1411
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_22
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const-string v1, "TDLS_WAKEUP_REJECT"

    .line 1415
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2e
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3a

    const-string v1, "SECURITY_DISABLED"

    .line 1419
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_3a
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_46

    const-string v1, "UNACCEPTABLE_LIFETIME"

    .line 1423
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_46
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_52

    const-string v1, "NOT_IN_SAME_BSS"

    .line 1427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_52
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5f

    const-string v1, "CAPS_UNSUPPORTED"

    .line 1431
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_5f
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_6c

    const-string v1, "REASSOC_NO_ASSOC"

    .line 1435
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_6c
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_79

    const-string v1, "ASSOC_DENIED_UNSPEC"

    .line 1439
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_79
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_86

    const-string v1, "NOT_SUPPORTED_AUTH_ALG"

    .line 1443
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_86
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_93

    const-string v1, "UNKNOWN_AUTH_TRANSACTION"

    .line 1447
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_93
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_a0

    const-string v1, "CHALLENGE_FAIL"

    .line 1451
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_a0
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_ad

    const-string v1, "AUTH_TIMEOUT"

    .line 1455
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_ad
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_ba

    const-string v1, "AP_UNABLE_TO_HANDLE_NEW_STA"

    .line 1459
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_ba
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_c7

    const-string v1, "ASSOC_DENIED_RATES"

    .line 1463
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_c7
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_d4

    const-string v1, "ASSOC_DENIED_NOSHORT"

    .line 1467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_d4
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_e1

    const-string v1, "SPEC_MGMT_REQUIRED"

    .line 1471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_e1
    and-int/lit8 v1, p0, 0x17

    const/16 v3, 0x17

    if-ne v1, v3, :cond_ee

    const-string v1, "PWR_CAPABILITY_NOT_VALID"

    .line 1475
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x17

    :cond_ee
    and-int/lit8 v1, p0, 0x18

    const/16 v3, 0x18

    if-ne v1, v3, :cond_fb

    const-string v1, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 1479
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x18

    :cond_fb
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_108

    const-string v1, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    .line 1483
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x19

    :cond_108
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_115

    const-string v1, "ASSOC_DENIED_NO_HT"

    .line 1487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1b

    :cond_115
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_122

    const-string v1, "R0KH_UNREACHABLE"

    .line 1491
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1c

    :cond_122
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_12f

    const-string v1, "ASSOC_DENIED_NO_PCO"

    .line 1495
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1d

    :cond_12f
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_13c

    const-string v1, "ASSOC_REJECTED_TEMPORARILY"

    .line 1499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1e

    :cond_13c
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_149

    const-string v1, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    .line 1503
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1f

    :cond_149
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_156

    const-string v1, "UNSPECIFIED_QOS_FAILURE"

    .line 1507
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_156
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_163

    const-string v1, "DENIED_INSUFFICIENT_BANDWIDTH"

    .line 1511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_163
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_170

    const-string v1, "DENIED_POOR_CHANNEL_CONDITIONS"

    .line 1515
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x22

    :cond_170
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_17d

    const-string v1, "DENIED_QOS_NOT_SUPPORTED"

    .line 1519
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_17d
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_18a

    const-string v1, "REQUEST_DECLINED"

    .line 1523
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x25

    :cond_18a
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_197

    const-string v1, "INVALID_PARAMETERS"

    .line 1527
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x26

    :cond_197
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1a4

    const-string v1, "REJECTED_WITH_SUGGESTED_CHANGES"

    .line 1531
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x27

    :cond_1a4
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_1b1

    const-string v1, "INVALID_IE"

    .line 1535
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x28

    :cond_1b1
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1be

    const-string v1, "GROUP_CIPHER_NOT_VALID"

    .line 1539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x29

    :cond_1be
    and-int/lit8 v1, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_1cb

    const-string v1, "PAIRWISE_CIPHER_NOT_VALID"

    .line 1543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2a

    :cond_1cb
    and-int/lit8 v1, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_1d8

    const-string v1, "AKMP_NOT_VALID"

    .line 1547
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2b

    :cond_1d8
    and-int/lit8 v1, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1e5

    const-string v1, "UNSUPPORTED_RSN_IE_VERSION"

    .line 1551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2c

    :cond_1e5
    and-int/lit8 v1, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1f2

    const-string v1, "INVALID_RSN_IE_CAPAB"

    .line 1555
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2d

    :cond_1f2
    and-int/lit8 v1, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_1ff

    const-string v1, "CIPHER_REJECTED_PER_POLICY"

    .line 1559
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2e

    :cond_1ff
    and-int/lit8 v1, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_20c

    const-string v1, "TS_NOT_CREATED"

    .line 1563
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2f

    :cond_20c
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_219

    const-string v1, "DIRECT_LINK_NOT_ALLOWED"

    .line 1567
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_219
    and-int/lit8 v1, p0, 0x31

    const/16 v3, 0x31

    if-ne v1, v3, :cond_226

    const-string v1, "DEST_STA_NOT_PRESENT"

    .line 1571
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x31

    :cond_226
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_233

    const-string v1, "DEST_STA_NOT_QOS_STA"

    .line 1575
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_233
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_240

    const-string v1, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    .line 1579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_240
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_24d

    const-string v1, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 1583
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_24d
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_25a

    const-string v1, "INVALID_PMKID"

    .line 1587
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_25a
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_267

    const-string v1, "INVALID_MDIE"

    .line 1591
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_267
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_274

    const-string v1, "INVALID_FTIE"

    .line 1595
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_274
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_281

    const-string v1, "REQUESTED_TCLAS_NOT_SUPPORTED"

    .line 1599
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x38

    :cond_281
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_28e

    const-string v1, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    .line 1603
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x39

    :cond_28e
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_29b

    const-string v1, "TRY_ANOTHER_BSS"

    .line 1607
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3a

    :cond_29b
    and-int/lit8 v1, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2a8

    const-string v1, "GAS_ADV_PROTO_NOT_SUPPORTED"

    .line 1611
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3b

    :cond_2a8
    and-int/lit8 v1, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_2b5

    const-string v1, "NO_OUTSTANDING_GAS_REQ"

    .line 1615
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3c

    :cond_2b5
    and-int/lit8 v1, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_2c2

    const-string v1, "GAS_RESP_NOT_RECEIVED"

    .line 1619
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3d

    :cond_2c2
    and-int/lit8 v1, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_2cf

    const-string v1, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    .line 1623
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3e

    :cond_2cf
    and-int/lit8 v1, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_2dc

    const-string v1, "GAS_RESP_LARGER_THAN_LIMIT"

    .line 1627
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_2dc
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2e9

    const-string v1, "REQ_REFUSED_HOME"

    .line 1631
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_2e9
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_2f6

    const-string v1, "ADV_SRV_UNREACHABLE"

    .line 1635
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_2f6
    and-int/lit8 v1, p0, 0x43

    const/16 v3, 0x43

    if-ne v1, v3, :cond_303

    const-string v1, "REQ_REFUSED_SSPN"

    .line 1639
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x43

    :cond_303
    and-int/lit8 v1, p0, 0x44

    const/16 v3, 0x44

    if-ne v1, v3, :cond_310

    const-string v1, "REQ_REFUSED_UNAUTH_ACCESS"

    .line 1643
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x44

    :cond_310
    and-int/lit8 v1, p0, 0x48

    const/16 v3, 0x48

    if-ne v1, v3, :cond_31d

    const-string v1, "INVALID_RSNIE"

    .line 1647
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x48

    :cond_31d
    and-int/lit8 v1, p0, 0x49

    const/16 v3, 0x49

    if-ne v1, v3, :cond_32a

    const-string v1, "U_APSD_COEX_NOT_SUPPORTED"

    .line 1651
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x49

    :cond_32a
    and-int/lit8 v1, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v1, v3, :cond_337

    const-string v1, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    .line 1655
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4a

    :cond_337
    and-int/lit8 v1, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v1, v3, :cond_344

    const-string v1, "BAD_INTERVAL_WITH_U_APSD_COEX"

    .line 1659
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4b

    :cond_344
    and-int/lit8 v1, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_351

    const-string v1, "ANTI_CLOGGING_TOKEN_REQ"

    .line 1663
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4c

    :cond_351
    and-int/lit8 v1, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_35e

    const-string v1, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    .line 1667
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4d

    :cond_35e
    and-int/lit8 v1, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_36b

    const-string v1, "CANNOT_FIND_ALT_TBTT"

    .line 1671
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4e

    :cond_36b
    and-int/lit8 v1, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_378

    const-string v1, "TRANSMISSION_FAILURE"

    .line 1675
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4f

    :cond_378
    and-int/lit8 v1, p0, 0x50

    const/16 v3, 0x50

    if-ne v1, v3, :cond_385

    const-string v1, "REQ_TCLAS_NOT_SUPPORTED"

    .line 1679
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x50

    :cond_385
    and-int/lit8 v1, p0, 0x51

    const/16 v3, 0x51

    if-ne v1, v3, :cond_392

    const-string v1, "TCLAS_RESOURCES_EXCHAUSTED"

    .line 1683
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x51

    :cond_392
    and-int/lit8 v1, p0, 0x52

    const/16 v3, 0x52

    if-ne v1, v3, :cond_39f

    const-string v1, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    .line 1687
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x52

    :cond_39f
    and-int/lit8 v1, p0, 0x53

    const/16 v3, 0x53

    if-ne v1, v3, :cond_3ac

    const-string v1, "REJECT_WITH_SCHEDULE"

    .line 1691
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x53

    :cond_3ac
    and-int/lit8 v1, p0, 0x54

    const/16 v3, 0x54

    if-ne v1, v3, :cond_3b9

    const-string v1, "REJECT_NO_WAKEUP_SPECIFIED"

    .line 1695
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x54

    :cond_3b9
    and-int/lit8 v1, p0, 0x55

    const/16 v3, 0x55

    if-ne v1, v3, :cond_3c6

    const-string v1, "SUCCESS_POWER_SAVE_MODE"

    .line 1699
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x55

    :cond_3c6
    and-int/lit8 v1, p0, 0x56

    const/16 v3, 0x56

    if-ne v1, v3, :cond_3d3

    const-string v1, "PENDING_ADMITTING_FST_SESSION"

    .line 1703
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x56

    :cond_3d3
    and-int/lit8 v1, p0, 0x57

    const/16 v3, 0x57

    if-ne v1, v3, :cond_3e0

    const-string v1, "PERFORMING_FST_NOW"

    .line 1707
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x57

    :cond_3e0
    and-int/lit8 v1, p0, 0x58

    const/16 v3, 0x58

    if-ne v1, v3, :cond_3ed

    const-string v1, "PENDING_GAP_IN_BA_WINDOW"

    .line 1711
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x58

    :cond_3ed
    and-int/lit8 v1, p0, 0x59

    const/16 v3, 0x59

    if-ne v1, v3, :cond_3fa

    const-string v1, "REJECT_U_PID_SETTING"

    .line 1715
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x59

    :cond_3fa
    and-int/lit8 v1, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_407

    const-string v1, "REFUSED_EXTERNAL_REASON"

    .line 1719
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5c

    :cond_407
    and-int/lit8 v1, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_414

    const-string v1, "REFUSED_AP_OUT_OF_MEMORY"

    .line 1723
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5d

    :cond_414
    and-int/lit8 v1, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v1, v3, :cond_421

    const-string v1, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    .line 1727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5e

    :cond_421
    and-int/lit8 v1, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_42e

    const-string v1, "QUERY_RESP_OUTSTANDING"

    .line 1731
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5f

    :cond_42e
    and-int/lit8 v1, p0, 0x60

    const/16 v3, 0x60

    if-ne v1, v3, :cond_43b

    const-string v1, "REJECT_DSE_BAND"

    .line 1735
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x60

    :cond_43b
    and-int/lit8 v1, p0, 0x61

    const/16 v3, 0x61

    if-ne v1, v3, :cond_448

    const-string v1, "TCLAS_PROCESSING_TERMINATED"

    .line 1739
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x61

    :cond_448
    and-int/lit8 v1, p0, 0x62

    const/16 v3, 0x62

    if-ne v1, v3, :cond_455

    const-string v1, "TS_SCHEDULE_CONFLICT"

    .line 1743
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x62

    :cond_455
    and-int/lit8 v1, p0, 0x63

    const/16 v3, 0x63

    if-ne v1, v3, :cond_462

    const-string v1, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    .line 1747
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x63

    :cond_462
    and-int/lit8 v1, p0, 0x64

    const/16 v3, 0x64

    if-ne v1, v3, :cond_46f

    const-string v1, "MCCAOP_RESERVATION_CONFLICT"

    .line 1751
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x64

    :cond_46f
    and-int/lit8 v1, p0, 0x65

    const/16 v3, 0x65

    if-ne v1, v3, :cond_47c

    const-string v1, "MAF_LIMIT_EXCEEDED"

    .line 1755
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x65

    :cond_47c
    and-int/lit8 v1, p0, 0x66

    const/16 v3, 0x66

    if-ne v1, v3, :cond_489

    const-string v1, "MCCA_TRACK_LIMIT_EXCEEDED"

    .line 1759
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x66

    :cond_489
    and-int/lit8 v1, p0, 0x67

    const/16 v3, 0x67

    if-ne v1, v3, :cond_496

    const-string v1, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    .line 1763
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x67

    :cond_496
    and-int/lit8 v1, p0, 0x68

    const/16 v3, 0x68

    if-ne v1, v3, :cond_4a3

    const-string v1, "ASSOC_DENIED_NO_VHT"

    .line 1767
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x68

    :cond_4a3
    and-int/lit8 v1, p0, 0x69

    const/16 v3, 0x69

    if-ne v1, v3, :cond_4b0

    const-string v1, "ENABLEMENT_DENIED"

    .line 1771
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x69

    :cond_4b0
    and-int/lit8 v1, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v1, v3, :cond_4bd

    const-string v1, "RESTRICTION_FROM_AUTHORIZED_GDB"

    .line 1775
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6a

    :cond_4bd
    and-int/lit8 v1, p0, 0x6b

    const/16 v3, 0x6b

    if-ne v1, v3, :cond_4ca

    const-string v1, "AUTHORIZATION_DEENABLED"

    .line 1779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6b

    :cond_4ca
    and-int/lit8 v1, p0, 0x70

    const/16 v3, 0x70

    if-ne v1, v3, :cond_4d7

    const-string v1, "FILS_AUTHENTICATION_FAILURE"

    .line 1783
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x70

    :cond_4d7
    and-int/lit8 v1, p0, 0x71

    const/16 v3, 0x71

    if-ne v1, v3, :cond_4e4

    const-string v1, "UNKNOWN_AUTHENTICATION_SERVER"

    .line 1787
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x71

    :cond_4e4
    if-eq p0, v2, :cond_500

    .line 1791
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

    :cond_500
    const-string p0, " | "

    .line 1793
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "SUCCESS"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "UNSPECIFIED_FAILURE"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "TDLS_WAKEUP_ALTERNATE"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "TDLS_WAKEUP_REJECT"

    return-object p0

    :cond_17
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1d

    const-string p0, "SECURITY_DISABLED"

    return-object p0

    :cond_1d
    const/4 v0, 0x6

    if-ne p0, v0, :cond_23

    const-string p0, "UNACCEPTABLE_LIFETIME"

    return-object p0

    :cond_23
    const/4 v0, 0x7

    if-ne p0, v0, :cond_29

    const-string p0, "NOT_IN_SAME_BSS"

    return-object p0

    :cond_29
    const/16 v0, 0xa

    if-ne p0, v0, :cond_30

    const-string p0, "CAPS_UNSUPPORTED"

    return-object p0

    :cond_30
    const/16 v0, 0xb

    if-ne p0, v0, :cond_37

    const-string p0, "REASSOC_NO_ASSOC"

    return-object p0

    :cond_37
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3e

    const-string p0, "ASSOC_DENIED_UNSPEC"

    return-object p0

    :cond_3e
    const/16 v0, 0xd

    if-ne p0, v0, :cond_45

    const-string p0, "NOT_SUPPORTED_AUTH_ALG"

    return-object p0

    :cond_45
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4c

    const-string p0, "UNKNOWN_AUTH_TRANSACTION"

    return-object p0

    :cond_4c
    const/16 v0, 0xf

    if-ne p0, v0, :cond_53

    const-string p0, "CHALLENGE_FAIL"

    return-object p0

    :cond_53
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5a

    const-string p0, "AUTH_TIMEOUT"

    return-object p0

    :cond_5a
    const/16 v0, 0x11

    if-ne p0, v0, :cond_61

    const-string p0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    return-object p0

    :cond_61
    const/16 v0, 0x12

    if-ne p0, v0, :cond_68

    const-string p0, "ASSOC_DENIED_RATES"

    return-object p0

    :cond_68
    const/16 v0, 0x13

    if-ne p0, v0, :cond_6f

    const-string p0, "ASSOC_DENIED_NOSHORT"

    return-object p0

    :cond_6f
    const/16 v0, 0x16

    if-ne p0, v0, :cond_76

    const-string p0, "SPEC_MGMT_REQUIRED"

    return-object p0

    :cond_76
    const/16 v0, 0x17

    if-ne p0, v0, :cond_7d

    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    return-object p0

    :cond_7d
    const/16 v0, 0x18

    if-ne p0, v0, :cond_84

    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object p0

    :cond_84
    const/16 v0, 0x19

    if-ne p0, v0, :cond_8b

    const-string p0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    return-object p0

    :cond_8b
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_92

    const-string p0, "ASSOC_DENIED_NO_HT"

    return-object p0

    :cond_92
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_99

    const-string p0, "R0KH_UNREACHABLE"

    return-object p0

    :cond_99
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_a0

    const-string p0, "ASSOC_DENIED_NO_PCO"

    return-object p0

    :cond_a0
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_a7

    const-string p0, "ASSOC_REJECTED_TEMPORARILY"

    return-object p0

    :cond_a7
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_ae

    const-string p0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    return-object p0

    :cond_ae
    const/16 v0, 0x20

    if-ne p0, v0, :cond_b5

    const-string p0, "UNSPECIFIED_QOS_FAILURE"

    return-object p0

    :cond_b5
    const/16 v0, 0x21

    if-ne p0, v0, :cond_bc

    const-string p0, "DENIED_INSUFFICIENT_BANDWIDTH"

    return-object p0

    :cond_bc
    const/16 v0, 0x22

    if-ne p0, v0, :cond_c3

    const-string p0, "DENIED_POOR_CHANNEL_CONDITIONS"

    return-object p0

    :cond_c3
    const/16 v0, 0x23

    if-ne p0, v0, :cond_ca

    const-string p0, "DENIED_QOS_NOT_SUPPORTED"

    return-object p0

    :cond_ca
    const/16 v0, 0x25

    if-ne p0, v0, :cond_d1

    const-string p0, "REQUEST_DECLINED"

    return-object p0

    :cond_d1
    const/16 v0, 0x26

    if-ne p0, v0, :cond_d8

    const-string p0, "INVALID_PARAMETERS"

    return-object p0

    :cond_d8
    const/16 v0, 0x27

    if-ne p0, v0, :cond_df

    const-string p0, "REJECTED_WITH_SUGGESTED_CHANGES"

    return-object p0

    :cond_df
    const/16 v0, 0x28

    if-ne p0, v0, :cond_e6

    const-string p0, "INVALID_IE"

    return-object p0

    :cond_e6
    const/16 v0, 0x29

    if-ne p0, v0, :cond_ed

    const-string p0, "GROUP_CIPHER_NOT_VALID"

    return-object p0

    :cond_ed
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_f4

    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object p0

    :cond_f4
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_fb

    const-string p0, "AKMP_NOT_VALID"

    return-object p0

    :cond_fb
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_102

    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object p0

    :cond_102
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_109

    const-string p0, "INVALID_RSN_IE_CAPAB"

    return-object p0

    :cond_109
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_110

    const-string p0, "CIPHER_REJECTED_PER_POLICY"

    return-object p0

    :cond_110
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_117

    const-string p0, "TS_NOT_CREATED"

    return-object p0

    :cond_117
    const/16 v0, 0x30

    if-ne p0, v0, :cond_11e

    const-string p0, "DIRECT_LINK_NOT_ALLOWED"

    return-object p0

    :cond_11e
    const/16 v0, 0x31

    if-ne p0, v0, :cond_125

    const-string p0, "DEST_STA_NOT_PRESENT"

    return-object p0

    :cond_125
    const/16 v0, 0x32

    if-ne p0, v0, :cond_12c

    const-string p0, "DEST_STA_NOT_QOS_STA"

    return-object p0

    :cond_12c
    const/16 v0, 0x33

    if-ne p0, v0, :cond_133

    const-string p0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    return-object p0

    :cond_133
    const/16 v0, 0x34

    if-ne p0, v0, :cond_13a

    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object p0

    :cond_13a
    const/16 v0, 0x35

    if-ne p0, v0, :cond_141

    const-string p0, "INVALID_PMKID"

    return-object p0

    :cond_141
    const/16 v0, 0x36

    if-ne p0, v0, :cond_148

    const-string p0, "INVALID_MDIE"

    return-object p0

    :cond_148
    const/16 v0, 0x37

    if-ne p0, v0, :cond_14f

    const-string p0, "INVALID_FTIE"

    return-object p0

    :cond_14f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_156

    const-string p0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    return-object p0

    :cond_156
    const/16 v0, 0x39

    if-ne p0, v0, :cond_15d

    const-string p0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    return-object p0

    :cond_15d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_164

    const-string p0, "TRY_ANOTHER_BSS"

    return-object p0

    :cond_164
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_16b

    const-string p0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    return-object p0

    :cond_16b
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_172

    const-string p0, "NO_OUTSTANDING_GAS_REQ"

    return-object p0

    :cond_172
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_179

    const-string p0, "GAS_RESP_NOT_RECEIVED"

    return-object p0

    :cond_179
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_180

    const-string p0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    return-object p0

    :cond_180
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_187

    const-string p0, "GAS_RESP_LARGER_THAN_LIMIT"

    return-object p0

    :cond_187
    const/16 v0, 0x40

    if-ne p0, v0, :cond_18e

    const-string p0, "REQ_REFUSED_HOME"

    return-object p0

    :cond_18e
    const/16 v0, 0x41

    if-ne p0, v0, :cond_195

    const-string p0, "ADV_SRV_UNREACHABLE"

    return-object p0

    :cond_195
    const/16 v0, 0x43

    if-ne p0, v0, :cond_19c

    const-string p0, "REQ_REFUSED_SSPN"

    return-object p0

    :cond_19c
    const/16 v0, 0x44

    if-ne p0, v0, :cond_1a3

    const-string p0, "REQ_REFUSED_UNAUTH_ACCESS"

    return-object p0

    :cond_1a3
    const/16 v0, 0x48

    if-ne p0, v0, :cond_1aa

    const-string p0, "INVALID_RSNIE"

    return-object p0

    :cond_1aa
    const/16 v0, 0x49

    if-ne p0, v0, :cond_1b1

    const-string p0, "U_APSD_COEX_NOT_SUPPORTED"

    return-object p0

    :cond_1b1
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_1b8

    const-string p0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    return-object p0

    :cond_1b8
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_1bf

    const-string p0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    return-object p0

    :cond_1bf
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_1c6

    const-string p0, "ANTI_CLOGGING_TOKEN_REQ"

    return-object p0

    :cond_1c6
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1cd

    const-string p0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    return-object p0

    :cond_1cd
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1d4

    const-string p0, "CANNOT_FIND_ALT_TBTT"

    return-object p0

    :cond_1d4
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_1db

    const-string p0, "TRANSMISSION_FAILURE"

    return-object p0

    :cond_1db
    const/16 v0, 0x50

    if-ne p0, v0, :cond_1e2

    const-string p0, "REQ_TCLAS_NOT_SUPPORTED"

    return-object p0

    :cond_1e2
    const/16 v0, 0x51

    if-ne p0, v0, :cond_1e9

    const-string p0, "TCLAS_RESOURCES_EXCHAUSTED"

    return-object p0

    :cond_1e9
    const/16 v0, 0x52

    if-ne p0, v0, :cond_1f0

    const-string p0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    return-object p0

    :cond_1f0
    const/16 v0, 0x53

    if-ne p0, v0, :cond_1f7

    const-string p0, "REJECT_WITH_SCHEDULE"

    return-object p0

    :cond_1f7
    const/16 v0, 0x54

    if-ne p0, v0, :cond_1fe

    const-string p0, "REJECT_NO_WAKEUP_SPECIFIED"

    return-object p0

    :cond_1fe
    const/16 v0, 0x55

    if-ne p0, v0, :cond_205

    const-string p0, "SUCCESS_POWER_SAVE_MODE"

    return-object p0

    :cond_205
    const/16 v0, 0x56

    if-ne p0, v0, :cond_20c

    const-string p0, "PENDING_ADMITTING_FST_SESSION"

    return-object p0

    :cond_20c
    const/16 v0, 0x57

    if-ne p0, v0, :cond_213

    const-string p0, "PERFORMING_FST_NOW"

    return-object p0

    :cond_213
    const/16 v0, 0x58

    if-ne p0, v0, :cond_21a

    const-string p0, "PENDING_GAP_IN_BA_WINDOW"

    return-object p0

    :cond_21a
    const/16 v0, 0x59

    if-ne p0, v0, :cond_221

    const-string p0, "REJECT_U_PID_SETTING"

    return-object p0

    :cond_221
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_228

    const-string p0, "REFUSED_EXTERNAL_REASON"

    return-object p0

    :cond_228
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_22f

    const-string p0, "REFUSED_AP_OUT_OF_MEMORY"

    return-object p0

    :cond_22f
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_236

    const-string p0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    return-object p0

    :cond_236
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_23d

    const-string p0, "QUERY_RESP_OUTSTANDING"

    return-object p0

    :cond_23d
    const/16 v0, 0x60

    if-ne p0, v0, :cond_244

    const-string p0, "REJECT_DSE_BAND"

    return-object p0

    :cond_244
    const/16 v0, 0x61

    if-ne p0, v0, :cond_24b

    const-string p0, "TCLAS_PROCESSING_TERMINATED"

    return-object p0

    :cond_24b
    const/16 v0, 0x62

    if-ne p0, v0, :cond_252

    const-string p0, "TS_SCHEDULE_CONFLICT"

    return-object p0

    :cond_252
    const/16 v0, 0x63

    if-ne p0, v0, :cond_259

    const-string p0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    return-object p0

    :cond_259
    const/16 v0, 0x64

    if-ne p0, v0, :cond_260

    const-string p0, "MCCAOP_RESERVATION_CONFLICT"

    return-object p0

    :cond_260
    const/16 v0, 0x65

    if-ne p0, v0, :cond_267

    const-string p0, "MAF_LIMIT_EXCEEDED"

    return-object p0

    :cond_267
    const/16 v0, 0x66

    if-ne p0, v0, :cond_26e

    const-string p0, "MCCA_TRACK_LIMIT_EXCEEDED"

    return-object p0

    :cond_26e
    const/16 v0, 0x67

    if-ne p0, v0, :cond_275

    const-string p0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    return-object p0

    :cond_275
    const/16 v0, 0x68

    if-ne p0, v0, :cond_27c

    const-string p0, "ASSOC_DENIED_NO_VHT"

    return-object p0

    :cond_27c
    const/16 v0, 0x69

    if-ne p0, v0, :cond_283

    const-string p0, "ENABLEMENT_DENIED"

    return-object p0

    :cond_283
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_28a

    const-string p0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    return-object p0

    :cond_28a
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_291

    const-string p0, "AUTHORIZATION_DEENABLED"

    return-object p0

    :cond_291
    const/16 v0, 0x70

    if-ne p0, v0, :cond_298

    const-string p0, "FILS_AUTHENTICATION_FAILURE"

    return-object p0

    :cond_298
    const/16 v0, 0x71

    if-ne p0, v0, :cond_29f

    const-string p0, "UNKNOWN_AUTHENTICATION_SERVER"

    return-object p0

    .line 1399
    :cond_29f
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
