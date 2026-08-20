.class public Lcom/android/server/location/gnss/sec/GnssConstants;
.super Ljava/lang/Object;
.source "GnssConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;
    }
.end annotation


# static fields
.field public static final ACTION_SEND_EMERGENCY_SMS_OVER_IMS:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

.field public static final AGPS_REF_LOCATION_TYPE_CDMA_CELLID:I = 0x5

.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_REF_LOCATION_TYPE_UNKNOWN:I = 0x0

.field public static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field public static final AGPS_SUPL_VER_1_0:I = 0x1

.field public static final AGPS_SUPL_VER_2_0:I = 0x2

.field public static final AGPS_SUPL_VER_2_0_1:I = 0x5

.field public static final AGPS_SUPL_VER_2_0_1_AGNSS:I = 0x4

.field public static final AGPS_SUPL_VER_2_0_2:I = 0x6

.field public static final AGPS_SUPL_VER_2_0_2_AGNSS:I = 0x7

.field public static final AGPS_SUPL_VER_2_0_4:I = 0x8

.field public static final AGPS_SUPL_VER_2_0_AGNSS:I = 0x3

.field public static final AGPS_SWITCH_MODE_ALL_NETWORK:I = 0x2

.field public static final AGPS_SWITCH_MODE_HOME_NETWORK_ONLY:I = 0x1

.field public static final AGPS_SWITCH_MODE_OFF:I = 0x0

.field public static final ALLOW_EXTRA_COMMAND:Ljava/lang/String; = "ALLOW_EXTRA_COMMAND"

.field public static final ANGRYGPS_DIR:Ljava/lang/String; = "/data/data/com.android.angryGps"

.field public static final CARD_STATUS_DISABLE:Ljava/lang/String; = "UNKNOWN"

.field public static final CARD_STATUS_EMPTY:Ljava/lang/String; = "ABSENT"

.field public static final CARD_STATUS_ENABLE:Ljava/lang/String; = "READY"

.field public static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field public static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field public static final CTS_RESTRICT_MODE_FILE:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field public static final DELETE_AIDING_DATA:I = 0x17

.field public static final EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

.field public static final FLOATING_POINT_EQUALITY_THRESHOLD:D = 1.0E-7

.field public static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final IMS_REGISTRATION:Ljava/lang/String; = "com.samsung.ims.action.IMS_REGISTRATION"

.field public static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field public static final INTENT_ISSUE_TRACKER_ONOFF:Ljava/lang/String; = "com.sec.android.ISSUE_TRACKER_ONOFF"

.field public static final LPP_SUPPORT_AGNSS:I = 0x1

.field public static final LPP_SUPPORT_CONVENTIONAL_GPS:I = 0x8

.field public static final LPP_SUPPORT_ECID:I = 0x4

.field public static final LPP_SUPPORT_INTER_FREQ_OTDOA:I = 0x20

.field public static final LPP_SUPPORT_LPP_EXTENSION_CP:I = 0x10

.field public static final LPP_SUPPORT_LPP_EXTENSION_UP:I = 0x40

.field public static final LPP_SUPPORT_NONE:I = 0x0

.field public static final LPP_SUPPORT_OTDOA:I = 0x2

.field public static final MAX_NUMBER_OF_SV_INFO_PER_LINE:I = 0x6

.field public static final NAVIGATION_APP_LIST:[Ljava/lang/String;

.field public static final PROPERTIES_FILE_CMCC:Ljava/lang/String; = "/etc/gps_cmcc.conf"

.field public static final PSDS_SERVER_BROADCOM_4DAYS_1:Ljava/lang/String; = "http://gllto1.glpals.com/4day/v5/latest/lto2.dat"

.field public static final PSDS_SERVER_BROADCOM_4DAYS_2:Ljava/lang/String; = "http://gllto2.glpals.com/4day/v5/latest/lto2.dat"

.field public static final PSDS_SERVER_BROADCOM_7DAYS_1:Ljava/lang/String; = "http://gllto1.glpals.com/7day/v5/latest/lto2.dat"

.field public static final PSDS_SERVER_BROADCOM_7DAYS_2:Ljava/lang/String; = "http://gllto2.glpals.com/7day/v5/latest/lto2.dat"

.field public static final PSDS_SERVER_SLSI:Ljava/lang/String; = "http://1.ssiloc.com:80/p4/46F3"

.field public static final SEC_GNSS_CONFIGURATION_UPDATE:I = 0x18

.field public static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field public static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field public static final SEC_HARDWARE_FACTOR_FILE:Ljava/lang/String; = "/vendor/etc/gnss/hardware_factors.conf"

.field public static final SIM_SLOT_ID:Ljava/lang/String; = "persist.sys.gps.dds.subId"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SUPL_SERVER_CHN_CHC_IP_ADDR:Ljava/lang/String; = "221.176.0.55"

.field public static final SUPL_SERVER_DCM_SUPL_COM:Ljava/lang/String; = "dcm-supl.com"

.field public static final SUPL_SERVER_GEO_T_MOBILE_COM:Ljava/lang/String; = "supl.geo.t-mobile.com"

.field public static final SUPL_SERVER_GOOGLE_DEFAULT:Ljava/lang/String; = "supl.google.com"

.field public static final SUPL_SERVER_JPN_KDI:Ljava/lang/String; = "location2.kddi.ne.jp"

.field public static final SUPL_SERVER_JPN_RKT:Ljava/lang/String; = "supl.rm-n.jp"

.field public static final SUPL_SERVER_KOR_KT_IP_ADDR:Ljava/lang/String; = "221.148.242.107"

.field public static final SUPL_SERVER_KOR_LGU:Ljava/lang/String; = "e-slp.uplus.co.kr"

.field public static final SUPL_SERVER_MEX_UNE:Ljava/lang/String; = "supl.attmex.mx"

.field public static final SUPL_SERVER_QIANXUN:Ljava/lang/String; = "supl.qxwz.com"

.field public static final SUPL_SERVER_SKT_WPDE_NATE_COM:Ljava/lang/String; = "wpde.nate.com"

.field public static final TIME_DAY_MILLIS:J = 0x5265c00L

.field public static final TIME_HOUR_MILLIS:J = 0x36ee80L

.field public static final TIME_MIN_MILLIS:J = 0xea60L

.field public static final TIME_SEC_MILLIS:J = 0x3e8L

.field public static final USE_SECGPS_CONF:Ljava/lang/String; = "USE_SECGPS_CONF"


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    const-string v0, "com.android.angryGps"

    const-string v1, "com.android.cts.verifier"

    const-string v2, "android.location.cts"

    const-string v3, "android.location.cts.gnss"

    const-string v4, "android.location.cts.fine"

    const-string v5, "android.location.cts.coarse"

    const-string v6, "com.android.shell"

    const-string v7, "android.seclocation.cts"

    const-string v8, "android.seclonglocation.cts"

    const-string v9, "com.google.android.location.gts"

    const-string v10, "com.starriver.gnsstester"

    const-string v11, "com.kt.serviceagent"

    const-string v12, "com.kaf.apitest"

    const-string v13, "com.kt.oladc"

    const-string v14, "com.rohdeschwarz.e112advanced"

    const-string v15, "com.cetecom.e112"

    .line 48
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    const-string v0, "Y29tLmF1dG9uYXZpLm1pbmltYXA="

    const-string v1, "Y29tLmJhaWR1LkJhaWR1TWFw"

    const-string v2, "Y29tLnRlbmNlbnQubWFw"

    const-string v3, "Y29tLmJhaWR1LmNhcmxpZmU="

    .line 126
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
