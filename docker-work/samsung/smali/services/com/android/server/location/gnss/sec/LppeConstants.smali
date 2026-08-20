.class public Lcom/android/server/location/gnss/sec/LppeConstants;
.super Ljava/lang/Object;
.source "LppeConstants.java"


# static fields
.field public static final DBH_ACCEPTABLE_MAX_DISTANCE:I = 0xfa

.field public static final DBH_DEFAULT_VERTICAL_ACCURACY:F = 100.0f

.field public static final DBH_FORMAT_CAPA_POSITION:I = 0x80

.field public static final DBH_FORMAT_CAPA_VELOCITY:I = 0x40

.field public static final DBH_MAX_ALTITUDE:D = 1280000.0

.field public static final DBH_MAX_VERTICAL_ACCURACY:F = 255.0f

.field public static final DBH_REQUESTED_DBH_NOT_AVAILABLE:I = 0x2

.field public static final DBH_UNDEFINED:I = 0x1

.field public static final FLP_HAS_ALTITUDE:I = 0x2

.field public static final FLP_HAS_BEARING:I = 0x8

.field public static final FLP_HAS_BEARING_ACCURACY:I = 0x80

.field public static final FLP_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final FLP_HAS_LAT_LONG:I = 0x1

.field public static final FLP_HAS_SPEED:I = 0x4

.field public static final FLP_HAS_SPEED_ACCURACY:I = 0x40

.field public static final FLP_HAS_VERTICAL_ACCURACY:I = 0x20

.field public static final GUARD_TIME:I = 0x1

.field public static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field public static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field public static final LPPE_DBH_MAX_RESP_TIME:I = 0x15

.field public static final LPPE_UBP_MAX_RESP_TIME:I = 0xf

.field public static final LPPE_UNIT_MILLIS:J = 0x3e8L

.field public static final LPPE_WLAN_MAX_RESP_TIME:I = 0xc

.field public static final UBP_ATMOSPHERIC_PRESSURE_AD_SUPPORT:I = 0x4

.field public static final UBP_ATMOSPHERIC_PRESSURE_ERROR:I = 0x4

.field public static final UBP_ATMOSPHERIC_PRESSURE_SUPPORT:I = 0x8

.field public static final UBP_MAX_ATMOSPHERIC_PRESSURE:I = 0x1c138

.field public static final UBP_MIN_ATMOSPHERIC_PRESSURE:I = 0x7530

.field public static final UBP_MOTIONSTATE_SUPPORT:I = 0x1

.field public static final UBP_MOTION_STATE_ERROR:I = 0x2

.field public static final UBP_NOT_SUPPORT:I = 0x1

.field public static final UBP_SECONDARY_STATE_ERROR:I = 0x3

.field public static final UBP_SECONDARY_SUPPORT:I = 0x2

.field public static final WLAN_AP_AG_NOT_AVAILABLE:I = 0x12

.field public static final WLAN_AP_CHAN_FREQ_NOT_AVAILABLE:I = 0xa

.field public static final WLAN_AP_DEV_TYPE_NOT_AVAILABLE:I = 0x7

.field public static final WLAN_AP_PHY_TYPE_NOT_AVAILABLE:I = 0x8

.field public static final WLAN_AP_REC_LOC_NOT_AVAILABLE:I = 0xe

.field public static final WLAN_AP_RSSI_MEASUREMENT_NOT_POSSIBLE:I = 0x9

.field public static final WLAN_AP_RTD_MEASUREMENT_NOT_POSSIBLE:I = 0xb

.field public static final WLAN_AP_SN_MEASUREMENT_NOT_POSSIBLE:I = 0x6

.field public static final WLAN_AP_SSID_NOT_AVAILABLE:I = 0x5

.field public static final WLAN_AP_TP_NOT_AVAILABLE:I = 0x11

.field public static final WLAN_AP_TYPE_IEEE802_11A:I = 0x8000

.field public static final WLAN_AP_TYPE_IEEE802_11AC:I = 0x800

.field public static final WLAN_AP_TYPE_IEEE802_11AD:I = 0x400

.field public static final WLAN_AP_TYPE_IEEE802_11B:I = 0x4000

.field public static final WLAN_AP_TYPE_IEEE802_11G:I = 0x2000

.field public static final WLAN_AP_TYPE_IEEE802_11N:I = 0x1000

.field public static final WLAN_HISTORIC_MEASUREMENTS_NOT_AVAILABLE:I = 0x10

.field public static final WLAN_MAX_SCAN_NUMBER:I = 0x40

.field public static final WLAN_MEAS_SUPPORT_AP_AG:I = 0x4

.field public static final WLAN_MEAS_SUPPORT_AP_CH_FREQ:I = 0x400

.field public static final WLAN_MEAS_SUPPORT_AP_DEV_TYPE:I = 0x2000

.field public static final WLAN_MEAS_SUPPORT_AP_PHY_TYPE:I = 0x1000

.field public static final WLAN_MEAS_SUPPORT_AP_REP_LOC:I = 0x40

.field public static final WLAN_MEAS_SUPPORT_AP_RSSI:I = 0x800

.field public static final WLAN_MEAS_SUPPORT_AP_RTD:I = 0x200

.field public static final WLAN_MEAS_SUPPORT_AP_SN:I = 0x4000

.field public static final WLAN_MEAS_SUPPORT_AP_SSID:I = 0x8000

.field public static final WLAN_MEAS_SUPPORT_AP_TP:I = 0x8

.field public static final WLAN_MEAS_SUPPORT_HISTORIC:I = 0x10

.field public static final WLAN_MEAS_SUPPORT_NON_SERVING:I = 0x20

.field public static final WLAN_MEAS_SUPPORT_UE_AG:I = 0x80

.field public static final WLAN_MEAS_SUPPORT_UE_RSSI:I = 0x1

.field public static final WLAN_MEAS_SUPPORT_UE_SN:I = 0x2

.field public static final WLAN_MEAS_SUPPORT_UE_TP:I = 0x100

.field public static final WLAN_NON_SERVING_MEASUREMENTS_NOT_AVAILABLE:I = 0xf

.field public static final WLAN_NOT_ALL_REQUESTED_MEAS_POSSIBLE:I = 0x4

.field public static final WLAN_NOT_SUPPORT:I = 0x1

.field public static final WLAN_OC_NOT_AVAILABLE:I = 0x15

.field public static final WLAN_REQUESTED_MEA_NOT_AVAILABLE:I = 0x3

.field public static final WLAN_UE_AG_NOT_AVAILABLE:I = 0xd

.field public static final WLAN_UE_MAC_ADDRESS_NOT_AVAILABLE:I = 0x16

.field public static final WLAN_UE_RSSI_NOT_AVAILABLE:I = 0x14

.field public static final WLAN_UE_SN_NOT_AVAILABLE:I = 0x13

.field public static final WLAN_UE_TP_NOT_AVAILABLE:I = 0xc

.field public static final WLAN_UNDEFINED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
