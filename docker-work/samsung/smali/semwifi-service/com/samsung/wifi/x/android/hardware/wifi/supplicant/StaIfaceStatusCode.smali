.class public interface abstract annotation Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/StaIfaceStatusCode;
.super Ljava/lang/Object;
.source "StaIfaceStatusCode.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


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
