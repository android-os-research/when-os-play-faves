.class public Lcom/samsung/android/knoxguard/service/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knoxguard/service/utils/Constants$ClientHealth;,
        Lcom/samsung/android/knoxguard/service/utils/Constants$Rot;
    }
.end annotation


# static fields
.field public static final ALARM_ACTION_KG_CLIENT_HEALTH_CHECK:I = 0x0

.field public static final ALARM_ACTION_RETRY_LOCK:I = 0x1

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final ALARM_TYPE_UNDEFINED:I = -0x1

.field public static final CLIENT_HEALTH_ALARM_PERIOD:J = 0x493e0L

.field public static final CSC_FEATURE_SUPPORT_KNOXGUARD:Ljava/lang/String; = "CscFeature_Knox_SupportKnoxGuard"

.field public static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field public static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final EMMC_UN_R:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static final ERROR_CLIENT_APP_DATA_CLEARED:Ljava/lang/String; = "3001"

.field public static final ERROR_CLIENT_HEALTH_CHECK:Ljava/lang/String; = "2001"

.field public static final ERROR_CLIENT_INTEGRITY_FOR_CHINA:Ljava/lang/String; = "3040"

.field public static final ERROR_KGTA_INIT_FAILED:Ljava/lang/String; = "1001"

.field public static final ERROR_RETRY_LOCK_DEFAULT:Ljava/lang/String; = "2002"

.field public static final INTENT_CLIENT_HEALTH_CHECK:Ljava/lang/String; = "com.samsung.android.knoxguard.CLIENT_HEALTH_CHECK"

.field public static final INTENT_RETRY_LOCK:Ljava/lang/String; = "com.samsung.android.knoxguard.RETRY_LOCK"

.field public static final INTENT_SECSETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final INTENT_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

.field public static final IS_SUPPORT_KGTA:Z

.field public static final JSON_CLIENT_DATA_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_CLIENT_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final JSON_KG_POLICY_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_KG_POLICY_GENERAL:Ljava/lang/String; = "generalInfo"

.field public static final KG_APP_TITLE:Ljava/lang/String; = "Payment Services"

.field public static final KG_LOG_URI:Landroid/net/Uri;

.field public static final KG_OTP_BIT_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.boot.kg.bit"

.field public static final KG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KG_PERMISSION:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final KG_SERVICE_VERSION:I = 0xa21fe81

.field public static final KG_STATE_ACTIVE:I = 0x2

.field public static final KG_STATE_CHECKING:I = 0x1

.field public static final KG_STATE_COMPLETED:I = 0x4

.field public static final KG_STATE_ERROR:I = 0x5

.field public static final KG_STATE_LOCKED:I = 0x3

.field public static final KG_STATE_PRENORMAL:I = 0x0

.field public static final KG_SYSTEM_PROPERTY:Ljava/lang/String; = "knox.kg.state"

.field public static final MESSAGE_TYPE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final OTP_BIT_FIRST_BOOT:Ljava/lang/String; = "00"

.field public static final OTP_BIT_KG_COMPLETED:Ljava/lang/String; = "11"

.field public static final OTP_BIT_KG_ENABLED:Ljava/lang/String; = "01"

.field public static final OTP_BIT_KG_UNKNOWN:Ljava/lang/String; = "FF"

.field public static final POWEROFF_CODE_SYSTEMUI_DISABLED:I = 0x1

.field public static final POWEROFF_CODE_SYSTEMUI_HIDDEN:I = 0x2

.field public static final POWEROFF_CODE_SYSTEMUI_NOTREADY:I = 0x4

.field public static final RETRY_LOCK_ALARM_PERIOD:J = 0x493e0L

.field public static final RLC_STATE_BLINKED:Ljava/lang/String; = "Blink"

.field public static final RLC_STATE_CHECKING:Ljava/lang/String; = "Checking"

.field public static final RLC_STATE_COMPLETED:Ljava/lang/String; = "Completed"

.field public static final RLC_STATE_LOCKED:Ljava/lang/String; = "Locked"

.field public static final RLC_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final RLC_STATE_NULL:Ljava/lang/String; = ""

.field public static final RLC_STATE_PRENORMAL:Ljava/lang/String; = "Prenormal"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final TA_INFO_CERT_PROVISIONED:I = 0x2

.field public static final TA_INFO_HOTP_RETRY_COUNTER:I = 0x3

.field public static final TA_INFO_VERSION:I = 0x1

.field public static final TZ_KGTA_INIT_FAILED:I = -0x3ee

.field public static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static final UFS_UN_R:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final strState:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG"

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const-string v1, "Prenormal"

    const-string v2, "Checking"

    const-string v3, "Active"

    const-string v4, "Locked"

    const-string v5, "Completed"

    const-string v6, "Error"

    .line 64
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_SUPPORT_KGTA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
