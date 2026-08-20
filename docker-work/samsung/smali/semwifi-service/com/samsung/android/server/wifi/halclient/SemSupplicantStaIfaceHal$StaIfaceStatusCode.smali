.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceStatusCode;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StaIfaceStatusCode"
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
.method protected constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_138

    .line 598
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown StaIfaceStatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "UNKNOWN_AUTHENTICATION_SERVER"

    return-object p0

    :pswitch_18
    const-string p0, "FILS_AUTHENTICATION_FAILURE"

    return-object p0

    :pswitch_1b
    const-string p0, "AUTHORIZATION_DEENABLED"

    return-object p0

    :pswitch_1e
    const-string p0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    return-object p0

    :pswitch_21
    const-string p0, "ENABLEMENT_DENIED"

    return-object p0

    :pswitch_24
    const-string p0, "ASSOC_DENIED_NO_VHT"

    return-object p0

    :pswitch_27
    const-string p0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    return-object p0

    :pswitch_2a
    const-string p0, "MCCA_TRACK_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_2d
    const-string p0, "MAF_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_30
    const-string p0, "MCCAOP_RESERVATION_CONFLICT"

    return-object p0

    :pswitch_33
    const-string p0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    return-object p0

    :pswitch_36
    const-string p0, "TS_SCHEDULE_CONFLICT"

    return-object p0

    :pswitch_39
    const-string p0, "TCLAS_PROCESSING_TERMINATED"

    return-object p0

    :pswitch_3c
    const-string p0, "REJECT_DSE_BAND"

    return-object p0

    :pswitch_3f
    const-string p0, "QUERY_RESP_OUTSTANDING"

    return-object p0

    :pswitch_42
    const-string p0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    return-object p0

    :pswitch_45
    const-string p0, "REFUSED_AP_OUT_OF_MEMORY"

    return-object p0

    :pswitch_48
    const-string p0, "REFUSED_EXTERNAL_REASON"

    return-object p0

    :pswitch_4b
    const-string p0, "REJECT_U_PID_SETTING"

    return-object p0

    :pswitch_4e
    const-string p0, "PENDING_GAP_IN_BA_WINDOW"

    return-object p0

    :pswitch_51
    const-string p0, "PERFORMING_FST_NOW"

    return-object p0

    :pswitch_54
    const-string p0, "PENDING_ADMITTING_FST_SESSION"

    return-object p0

    :pswitch_57
    const-string p0, "SUCCESS_POWER_SAVE_MODE"

    return-object p0

    :pswitch_5a
    const-string p0, "REJECT_NO_WAKEUP_SPECIFIED"

    return-object p0

    :pswitch_5d
    const-string p0, "REJECT_WITH_SCHEDULE"

    return-object p0

    :pswitch_60
    const-string p0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    return-object p0

    :pswitch_63
    const-string p0, "TCLAS_RESOURCES_EXCHAUSTED"

    return-object p0

    :pswitch_66
    const-string p0, "REQ_TCLAS_NOT_SUPPORTED"

    return-object p0

    :pswitch_69
    const-string p0, "TRANSMISSION_FAILURE"

    return-object p0

    :pswitch_6c
    const-string p0, "CANNOT_FIND_ALT_TBTT"

    return-object p0

    :pswitch_6f
    const-string p0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    return-object p0

    :pswitch_72
    const-string p0, "ANTI_CLOGGING_TOKEN_REQ"

    return-object p0

    :pswitch_75
    const-string p0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    return-object p0

    :pswitch_78
    const-string p0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    return-object p0

    :pswitch_7b
    const-string p0, "U_APSD_COEX_NOT_SUPPORTED"

    return-object p0

    :pswitch_7e
    const-string p0, "INVALID_RSNIE"

    return-object p0

    :pswitch_81
    const-string p0, "REQ_REFUSED_UNAUTH_ACCESS"

    return-object p0

    :pswitch_84
    const-string p0, "REQ_REFUSED_SSPN"

    return-object p0

    :pswitch_87
    const-string p0, "ADV_SRV_UNREACHABLE"

    return-object p0

    :pswitch_8a
    const-string p0, "REQ_REFUSED_HOME"

    return-object p0

    :pswitch_8d
    const-string p0, "GAS_RESP_LARGER_THAN_LIMIT"

    return-object p0

    :pswitch_90
    const-string p0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    return-object p0

    :pswitch_93
    const-string p0, "GAS_RESP_NOT_RECEIVED"

    return-object p0

    :pswitch_96
    const-string p0, "NO_OUTSTANDING_GAS_REQ"

    return-object p0

    :pswitch_99
    const-string p0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    return-object p0

    :pswitch_9c
    const-string p0, "TRY_ANOTHER_BSS"

    return-object p0

    :pswitch_9f
    const-string p0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    return-object p0

    :pswitch_a2
    const-string p0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    return-object p0

    :pswitch_a5
    const-string p0, "INVALID_FTIE"

    return-object p0

    :pswitch_a8
    const-string p0, "INVALID_MDIE"

    return-object p0

    :pswitch_ab
    const-string p0, "INVALID_PMKID"

    return-object p0

    :pswitch_ae
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object p0

    :pswitch_b1
    const-string p0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    return-object p0

    :pswitch_b4
    const-string p0, "DEST_STA_NOT_QOS_STA"

    return-object p0

    :pswitch_b7
    const-string p0, "DEST_STA_NOT_PRESENT"

    return-object p0

    :pswitch_ba
    const-string p0, "DIRECT_LINK_NOT_ALLOWED"

    return-object p0

    :pswitch_bd
    const-string p0, "TS_NOT_CREATED"

    return-object p0

    :pswitch_c0
    const-string p0, "CIPHER_REJECTED_PER_POLICY"

    return-object p0

    :pswitch_c3
    const-string p0, "INVALID_RSN_IE_CAPAB"

    return-object p0

    :pswitch_c6
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object p0

    :pswitch_c9
    const-string p0, "AKMP_NOT_VALID"

    return-object p0

    :pswitch_cc
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object p0

    :pswitch_cf
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    return-object p0

    :pswitch_d2
    const-string p0, "INVALID_IE"

    return-object p0

    :pswitch_d5
    const-string p0, "REJECTED_WITH_SUGGESTED_CHANGES"

    return-object p0

    :pswitch_d8
    const-string p0, "INVALID_PARAMETERS"

    return-object p0

    :pswitch_db
    const-string p0, "REQUEST_DECLINED"

    return-object p0

    :pswitch_de
    const-string p0, "DENIED_QOS_NOT_SUPPORTED"

    return-object p0

    :pswitch_e1
    const-string p0, "DENIED_POOR_CHANNEL_CONDITIONS"

    return-object p0

    :pswitch_e4
    const-string p0, "DENIED_INSUFFICIENT_BANDWIDTH"

    return-object p0

    :pswitch_e7
    const-string p0, "UNSPECIFIED_QOS_FAILURE"

    return-object p0

    :pswitch_ea
    const-string p0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    return-object p0

    :pswitch_ed
    const-string p0, "ASSOC_REJECTED_TEMPORARILY"

    return-object p0

    :pswitch_f0
    const-string p0, "ASSOC_DENIED_NO_PCO"

    return-object p0

    :pswitch_f3
    const-string p0, "R0KH_UNREACHABLE"

    return-object p0

    :pswitch_f6
    const-string p0, "ASSOC_DENIED_NO_HT"

    return-object p0

    :pswitch_f9
    const-string p0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    return-object p0

    :pswitch_fc
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object p0

    :pswitch_ff
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    return-object p0

    :pswitch_102
    const-string p0, "SPEC_MGMT_REQUIRED"

    return-object p0

    :pswitch_105
    const-string p0, "ASSOC_DENIED_NOSHORT"

    return-object p0

    :pswitch_108
    const-string p0, "ASSOC_DENIED_RATES"

    return-object p0

    :pswitch_10b
    const-string p0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    return-object p0

    :pswitch_10e
    const-string p0, "AUTH_TIMEOUT"

    return-object p0

    :pswitch_111
    const-string p0, "CHALLENGE_FAIL"

    return-object p0

    :pswitch_114
    const-string p0, "UNKNOWN_AUTH_TRANSACTION"

    return-object p0

    :pswitch_117
    const-string p0, "NOT_SUPPORTED_AUTH_ALG"

    return-object p0

    :pswitch_11a
    const-string p0, "ASSOC_DENIED_UNSPEC"

    return-object p0

    :pswitch_11d
    const-string p0, "REASSOC_NO_ASSOC"

    return-object p0

    :pswitch_120
    const-string p0, "CAPS_UNSUPPORTED"

    return-object p0

    :pswitch_123
    const-string p0, "NOT_IN_SAME_BSS"

    return-object p0

    :pswitch_126
    const-string p0, "UNACCEPTABLE_LIFETIME"

    return-object p0

    :pswitch_129
    const-string p0, "SECURITY_DISABLED"

    return-object p0

    :pswitch_12c
    const-string p0, "TDLS_WAKEUP_REJECT"

    return-object p0

    :pswitch_12f
    const-string p0, "TDLS_WAKEUP_ALTERNATE"

    return-object p0

    :pswitch_132
    const-string p0, "UNSPECIFIED_FAILURE"

    return-object p0

    :pswitch_135
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_135
        :pswitch_132
        :pswitch_12f
        :pswitch_12c
        :pswitch_3
        :pswitch_129
        :pswitch_126
        :pswitch_123
        :pswitch_3
        :pswitch_3
        :pswitch_120
        :pswitch_11d
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
        :pswitch_105
        :pswitch_3
        :pswitch_3
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_3
        :pswitch_f6
        :pswitch_f3
        :pswitch_f0
        :pswitch_ed
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_3
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_3
        :pswitch_84
        :pswitch_81
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
