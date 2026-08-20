.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$StaIfaceReasonCode;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StaIfaceReasonCode"
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
.method protected constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_d0

    packed-switch p0, :pswitch_data_122

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown StaIfaceReasonCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    const-string p0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    return-object p0

    :pswitch_1b
    const-string p0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    return-object p0

    :pswitch_1e
    const-string p0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    return-object p0

    :pswitch_21
    const-string p0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    return-object p0

    :pswitch_24
    const-string p0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    return-object p0

    :pswitch_27
    const-string p0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    return-object p0

    :pswitch_2a
    const-string p0, "MESH_INVALID_SECURITY_CAP"

    return-object p0

    :pswitch_2d
    const-string p0, "MESH_INCONSISTENT_PARAMS"

    return-object p0

    :pswitch_30
    const-string p0, "MESH_INVALID_GTK"

    return-object p0

    :pswitch_33
    const-string p0, "MESH_CONFIRM_TIMEOUT"

    return-object p0

    :pswitch_36
    const-string p0, "MESH_MAX_RETRIES"

    return-object p0

    :pswitch_39
    const-string p0, "MESH_CLOSE_RCVD"

    return-object p0

    :pswitch_3c
    const-string p0, "MESH_CONFIG_POLICY_VIOLATION"

    return-object p0

    :pswitch_3f
    const-string p0, "MESH_MAX_PEERS"

    return-object p0

    :pswitch_42
    const-string p0, "MESH_PEERING_CANCELLED"

    return-object p0

    :pswitch_45
    const-string p0, "INVALID_FTE"

    return-object p0

    :pswitch_48
    const-string p0, "INVALID_MDE"

    return-object p0

    :pswitch_4b
    const-string p0, "INVALID_PMKID"

    return-object p0

    :pswitch_4e
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object p0

    :pswitch_51
    const-string p0, "EXTERNAL_SERVICE_REQUIREMENTS"

    return-object p0

    :pswitch_54
    const-string p0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    return-object p0

    :pswitch_57
    const-string p0, "PEERKEY_MISMATCH"

    return-object p0

    :pswitch_5a
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_5d
    const-string p0, "UNKNOWN_TS_BA"

    return-object p0

    :pswitch_60
    const-string p0, "END_TS_BA_DLS"

    return-object p0

    :pswitch_63
    const-string p0, "STA_LEAVING"

    return-object p0

    :pswitch_66
    const-string p0, "EXCEEDED_TXOP"

    return-object p0

    :pswitch_69
    const-string p0, "DISASSOC_LOW_ACK"

    return-object p0

    :pswitch_6c
    const-string p0, "NOT_ENOUGH_BANDWIDTH"

    return-object p0

    :pswitch_6f
    const-string p0, "UNSPECIFIED_QOS_REASON"

    return-object p0

    :pswitch_72
    const-string p0, "SERVICE_CHANGE_PRECLUDES_TS"

    return-object p0

    :pswitch_75
    const-string p0, "NOT_AUTHORIZED_THIS_LOCATION"

    return-object p0

    :pswitch_78
    const-string p0, "BAD_CIPHER_OR_AKM"

    return-object p0

    :pswitch_7b
    const-string p0, "NO_SSP_ROAMING_AGREEMENT"

    return-object p0

    :pswitch_7e
    const-string p0, "SSP_REQUESTED_DISASSOC"

    return-object p0

    :pswitch_81
    const-string p0, "TDLS_TEARDOWN_UNSPECIFIED"

    return-object p0

    :pswitch_84
    const-string p0, "TDLS_TEARDOWN_UNREACHABLE"

    return-object p0

    :pswitch_87
    const-string p0, "CIPHER_SUITE_REJECTED"

    return-object p0

    :pswitch_8a
    const-string p0, "IEEE_802_1X_AUTH_FAILED"

    return-object p0

    :pswitch_8d
    const-string p0, "INVALID_RSN_IE_CAPAB"

    return-object p0

    :pswitch_90
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object p0

    :pswitch_93
    const-string p0, "AKMP_NOT_VALID"

    return-object p0

    :pswitch_96
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object p0

    :pswitch_99
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    return-object p0

    :pswitch_9c
    const-string p0, "IE_IN_4WAY_DIFFERS"

    return-object p0

    :pswitch_9f
    const-string p0, "GROUP_KEY_UPDATE_TIMEOUT"

    return-object p0

    :pswitch_a2
    const-string p0, "FOURWAY_HANDSHAKE_TIMEOUT"

    return-object p0

    :pswitch_a5
    const-string p0, "MICHAEL_MIC_FAILURE"

    return-object p0

    :pswitch_a8
    const-string p0, "INVALID_IE"

    return-object p0

    :pswitch_ab
    const-string p0, "BSS_TRANSITION_DISASSOC"

    return-object p0

    :pswitch_ae
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object p0

    :pswitch_b1
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    return-object p0

    :pswitch_b4
    const-string p0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    return-object p0

    :pswitch_b7
    const-string p0, "DISASSOC_STA_HAS_LEFT"

    return-object p0

    :pswitch_ba
    const-string p0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    return-object p0

    :pswitch_bd
    const-string p0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    return-object p0

    :pswitch_c0
    const-string p0, "DISASSOC_AP_BUSY"

    return-object p0

    :pswitch_c3
    const-string p0, "DISASSOC_DUE_TO_INACTIVITY"

    return-object p0

    :pswitch_c6
    const-string p0, "DEAUTH_LEAVING"

    return-object p0

    :pswitch_c9
    const-string p0, "PREV_AUTH_NOT_VALID"

    return-object p0

    :pswitch_cc
    const-string p0, "UNSPECIFIED"

    return-object p0

    nop

    :pswitch_data_d0
    .packed-switch 0x1
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
        :pswitch_84
        :pswitch_81
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
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x2d
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
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
        :pswitch_18
    .end packed-switch
.end method
