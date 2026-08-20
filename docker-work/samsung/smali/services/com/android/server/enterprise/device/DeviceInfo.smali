.class public Lcom/android/server/enterprise/device/DeviceInfo;
.super Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_MSG_RECEIVED:Ljava/lang/String; = "com.samsung.mms.RECEIVED_MSG"

.field public static final ACTION_MSG_SENT:Ljava/lang/String; = "com.samsung.mms.SENT_MSG"

.field public static final DATA_USAGE_MILISECS_HIGH:I = 0x3c

.field public static final DATA_USAGE_MILISECS_LOW:I = 0x1

.field public static final DATA_USAGE_TO_STORAGE_COUNTER:I = 0xa

.field public static final ERROR:I = -0x1

.field public static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final NOK:I = 0x2

.field public static final OK:I = 0x1

.field public static final PRODUCTCODE_LTN_MOVISTAR_LIST:Ljava/lang/String; = "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

.field public static final SALESCODE_CHINA_LIST:Ljava/lang/String; = "CTC/CHN/CHM/CHU/CHC"

.field public static final SALESCODE_DCM:Ljava/lang/String; = "DCM"

.field public static final SALESCODE_HKTW_LIST:Ljava/lang/String; = "TGY/BRI"

.field public static final SALESCODE_KOR_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO/KOO"

.field public static final SALESCODE_KOR_ANY_ALL_LIST:Ljava/lang/String; = "ANY/KOO"

.field public static final SALESCODE_KOR_KTT_DEFAULT:Ljava/lang/String; = "KT"

.field public static final SALESCODE_KOR_KTT_UNUSED_LIST:Ljava/lang/String; = "MKT/KTT"

.field public static final SALESCODE_KOR_LGT_ALL_LIST:Ljava/lang/String; = "LG/LUC/LUO"

.field public static final SALESCODE_KOR_LGT_DEFAULT:Ljava/lang/String; = "LG"

.field public static final SALESCODE_KOR_LGT_UNUSED_LIST:Ljava/lang/String; = "MLG/LGT"

.field public static final SALESCODE_KOR_SKT_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO"

.field public static final SALESCODE_KOR_SKT_DEFAULT:Ljava/lang/String; = "SKT"

.field public static final SALESCODE_KOR_SKT_UNUSED_LIST:Ljava/lang/String; = "MSK"

.field public static final SALESCODE_LTN_OPEN:Ljava/lang/String; = "TFG"

.field public static final SALESCODE_NA_SPR_DEFAULT:Ljava/lang/String; = "SPR"

.field public static final SALESCODE_NA_SPR_LIST:Ljava/lang/String; = "BST/SPR/VMU/XAS"

.field public static final SALESCODE_NA_TMK:Ljava/lang/String; = "TMK"

.field public static final SALESCODE_NA_TMO:Ljava/lang/String; = "TMB"

.field public static final SALESCODE_SBM:Ljava/lang/String; = "SBM"

.field public static final TAG:Ljava/lang/String; = "DeviceInfo"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static mSignalStrength:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDataCallConnected:Z

.field public mDataCallLogLastNetType:Ljava/lang/String;

.field public mDataCallLogLastStatus:Ljava/lang/String;

.field public mDataCallLogLastTime:J

.field public mDataCallLogLastValue:J

.field public mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mDataLogEnabled:Z

.field public mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

.field public mDataStatisticsUpdateRun:Ljava/lang/Runnable;

.field public mDataStatsCounter:I

.field public mDataStatsEnabled:Z

.field public mDataUsageEventsHandler:Landroid/os/Handler;

.field public mDataUsageTimer:I

.field public mDataUsageTimerActivated:Z

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mHandler:Landroid/os/Handler;

.field public mLastUpdateMobileRx:J

.field public mLastUpdateMobileTx:J

.field public mLastUpdateWifiRx:J

.field public mLastUpdateWifiTx:J

.field public mMessagingReceiver:Landroid/content/BroadcastReceiver;

.field public mPhoneStateReceiver:Ljava/lang/Object;

.field public mStorageMobileRx:J

.field public mStorageMobileTx:J

.field public mStorageWifiRx:J

.field public mStorageWifiTx:J

.field public mTelMgr:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiStatsEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDataStatisticsUpdateRun(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataUsageTimer(Lcom/android/server/enterprise/device/DeviceInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataUsageTimerActivated(Lcom/android/server/enterprise/device/DeviceInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataCallConnected(Lcom/android/server/enterprise/device/DeviceInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDataCallLogLastTime(Lcom/android/server/enterprise/device/DeviceInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDataCallLogLastValue(Lcom/android/server/enterprise/device/DeviceInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDataStatsCounter(Lcom/android/server/enterprise/device/DeviceInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdataUsageValuesInit(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDataStatisticsUsage(Lcom/android/server/enterprise/device/DeviceInfo;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataStatisticsUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mupdateSignalStrength(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x63

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 109
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-wide/16 v1, 0x0

    .line 113
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 114
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 115
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 116
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 117
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 118
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 119
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 120
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    const/4 v3, 0x0

    .line 121
    iput v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    const/16 v4, 0xbb8

    .line 122
    iput v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 123
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 126
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 127
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 128
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    const-string v4, ""

    .line 129
    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 130
    iput-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 131
    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 132
    iput-boolean v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 139
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$1;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$2;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 984
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$3;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$4;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    .line 1327
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1917
    new-instance v1, Lcom/android/server/enterprise/device/DeviceInfo$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/device/DeviceInfo$5;-><init>(Lcom/android/server/enterprise/device/DeviceInfo;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mMessagingReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 203
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 206
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 207
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 208
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 212
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->initPhoneStateReceiver(Landroid/content/Context;Landroid/os/Handler;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    .line 222
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.mms.RECEIVED_MSG"

    .line 223
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.mms.SENT_MSG"

    .line 224
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mMessagingReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataConnectionStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 648
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_12

    if-gez v0, :cond_10

    goto :goto_19

    :cond_10
    move v1, v0

    goto :goto_19

    :catch_12
    const-string v0, "DeviceInfo"

    const-string v2, "could not parse integer "

    .line 653
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public clearCallingLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1254
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1258
    :cond_e
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "CallingLog"

    const-string v2, "callingCaptureAdmin"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final clearDatabasesOnAdminRemoval(I)V
    .registers 5

    const-string v0, "CallingLog"

    const-string v1, "callingCaptureAdmin"

    const/4 v2, 0x1

    .line 1381
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "SMS"

    const-string/jumbo v1, "smsCaptureAdmin"

    .line 1383
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "MMS"

    const-string/jumbo v1, "mmsCaptureAdmin"

    .line 1384
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    const-string v0, ";"

    const/4 v1, 0x0

    .line 1393
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 1395
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1396
    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 1397
    invoke-virtual {v3, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1398
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1399
    array-length v6, v5

    if-ne v6, v4, :cond_41

    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_41

    .line 1400
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-gtz v3, :cond_e

    return v1

    .line 1403
    :cond_41
    array-length v6, v5

    if-le v6, v4, :cond_e

    .line 1404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1405
    array-length v6, v5

    move v7, v1

    :goto_4b
    if-ge v7, v6, :cond_5e

    aget-object v8, v5, v7

    .line 1406
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eq p1, v9, :cond_5b

    .line 1407
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 1411
    :cond_5e
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1412
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_e

    return v1

    :cond_73
    if-nez p4, :cond_e

    .line 1419
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7b} :catch_7f

    if-gtz v3, :cond_e

    return v1

    :cond_7e
    return v4

    :catch_7f
    const-string p0, "DeviceInfo"

    const-string p1, "could not write log edm database"

    .line 1426
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public clearMMSLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1909
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1910
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "MMS"

    const-string/jumbo v1, "mmsCaptureAdmin"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public clearSMSLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1554
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1555
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "SMS"

    const-string/jumbo v1, "smsCaptureAdmin"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->clearLog(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    .line 1140
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    if-nez p1, :cond_1f

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    move p1, v0

    goto :goto_20

    :cond_1f
    :goto_1f
    move p1, v1

    :goto_20
    if-eqz p1, :cond_36

    .line 1142
    iget-boolean v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-nez v2, :cond_36

    .line 1144
    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 1146
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_45

    :cond_36
    if-nez p1, :cond_45

    .line 1147
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz p1, :cond_45

    .line 1149
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 1150
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public final dataUsageValuesInit()V
    .registers 9

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageValuesUpdate()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x3

    :goto_b
    mul-int/lit16 v0, v0, 0x3e8

    .line 1013
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    const/4 v0, 0x0

    .line 1014
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 1015
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    const-string v1, "deviceWifiSent"

    const-string v2, "deviceWifiReceived"

    const-string v3, "deviceNetworkSent"

    const-string v4, "deviceNetworkReceived"

    .line 1017
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 1019
    iget-object v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "DEVICE"

    invoke-virtual {v6, v7, v0, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 1021
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7b

    const/4 v6, 0x0

    .line 1022
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_7b

    .line 1025
    :try_start_47
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 1026
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 1027
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 1028
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_6f} :catch_70

    goto :goto_7b

    :catch_70
    const-string v1, "DeviceInfo"

    const-string/jumbo v2, "initializeStorageValues - Error reading from Device Storage"

    .line 1030
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public final dataUsageValuesUpdate()V
    .registers 3

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    const-wide/16 v0, 0x0

    .line 1042
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    return-void
.end method

.method public enableCallingCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1565
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1566
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1567
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1571
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string v1, "CallingLogEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public enableMMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1806
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1807
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1809
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string/jumbo v1, "mmsLogEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    return p0

    :catch_12
    const-string p0, "DeviceInfo"

    const-string p1, "could not enable mms capture"

    .line 1812
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public enableSMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1451
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1452
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1454
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string/jumbo v1, "smsLogEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    return p0

    :catch_12
    const-string p0, "DeviceInfo"

    const-string p1, "could not enable sms capture"

    .line 1457
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final enforceDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1342
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1341
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceKnoxInternalExceptionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1377
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1376
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1347
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1346
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePhone()V
    .registers 2

    .line 1356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_9

    return-void

    .line 1357
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by internal phone"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePhoneAppOrAdmin(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 4

    .line 1362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1e

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1363
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    :cond_1e
    return-void
.end method

.method public final enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 4

    .line 1370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    :cond_b
    return-void
.end method

.method public final enforceReadPrivilegedPhoneStatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1351
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2

    .line 304
    new-instance p1, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAvailableCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2

    .line 324
    new-instance p1, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAvailableRamMemory(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 8

    const-string p0, "MemFree:"

    const-string p1, "Cached:"

    .line 749
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array v0, p1, [J

    const-string v1, "/proc/meminfo"

    .line 751
    invoke-static {v1, p0, v0}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    const/4 p0, 0x0

    move v1, p0

    :goto_12
    if-ge v1, p1, :cond_1e

    .line 754
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1e
    aget-wide p0, v0, p0

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public getBytesReceivedNetwork(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 872
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 873
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    return-wide p0
.end method

.method public getBytesReceivedWiFi(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 861
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    return-wide p0
.end method

.method public getBytesSentNetwork(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 867
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    return-wide p0
.end method

.method public getBytesSentWiFi(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 855
    iget-wide p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    return-wide p0
.end method

.method public final getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 600
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_d

    return v0

    .line 605
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 610
    :cond_17
    :try_start_17
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    const-string p0, "DeviceInfo"

    const-string p1, "could not parse integer "

    .line 612
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return v0
.end method

.method public getCellTowerCID(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1706
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1709
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_14

    .line 1710
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_14

    .line 1712
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    .line 1716
    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCellTowerLAC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1721
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1724
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_14

    .line 1725
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_14

    .line 1727
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    .line 1731
    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCellTowerPSC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1739
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_14

    .line 1740
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p0, :cond_14

    .line 1742
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    .line 1746
    :goto_15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCellTowerRSSI(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1751
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1754
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x63

    if-eqz p1, :cond_5b

    .line 1755
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V

    .line 1757
    sget-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    return-object p0

    .line 1759
    :cond_16
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p1, :cond_5b

    .line 1761
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5b

    .line 1763
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 1764
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_51

    .line 1765
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    .line 1766
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-ne v2, p1, :cond_39

    .line 1767
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    move v0, p0

    goto :goto_5b

    :cond_51
    const-string p0, "DeviceInfo"

    const-string p1, "Could not retrieve NeighboringCellInfo"

    .line 1772
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    sget-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;

    return-object p0

    .line 1779
    :cond_5b
    :goto_5b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataCallLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1216
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "dataCallDate"

    const-string v0, "dataCallStatus"

    const-string v1, "dataCallNetType"

    const-string v2, "dataCallBytes"

    .line 1218
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p2, :cond_1d

    .line 1223
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "dataCallDate>=?"

    .line 1224
    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_1d
    move-object v5, v4

    .line 1226
    :goto_1e
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "DATACALLLOG"

    invoke-virtual {p0, p2, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_29

    return-object v4

    .line 1233
    :cond_29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_78

    .line 1236
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_78
    return-object p2
.end method

.method public getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1182
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "enableDataCallLogging"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method public getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 840
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "enableWifiDataCallDataStatistic"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 843
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public getDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4

    .line 922
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 925
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string/jumbo v1, "miscDataStatisticTimer"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception p0

    const-string p1, "DeviceInfo"

    const-string v0, "getDataUsageTimer could not read database"

    .line 928
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p0}, Landroid/util/AndroidException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_1a
    return p0
.end method

.method public getDeviceMaker(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "ro.product.manufacturer"

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 348
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    .line 350
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    return-object p1
.end method

.method public getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "os.name"

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "os.version"

    const/4 v0, 0x1

    .line 585
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDevicePlatform(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "ro.build.version.release"

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public getDeviceProcessorSpeed(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    .line 706
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_21
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    .line 708
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_1a
    .catchall {:try_start_d .. :try_end_11} :catchall_35

    .line 716
    :try_start_11
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 718
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    return-object p0

    :catch_1a
    move-exception p0

    goto :goto_25

    :catchall_1c
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_36

    :catch_21
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 712
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    if-eqz p1, :cond_32

    .line 716
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 718
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    const-string p0, ""

    return-object p0

    :catchall_35
    move-exception p0

    :goto_36
    if-eqz p1, :cond_40

    .line 716
    :try_start_38
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    .line 718
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 721
    :cond_40
    :goto_40
    throw p0
.end method

.method public getDeviceProcessorType(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5

    const/4 p1, 0x0

    .line 679
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_2e
    .catchall {:try_start_1 .. :try_end_d} :catchall_2c

    .line 681
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_29
    .catchall {:try_start_d .. :try_end_17} :catchall_26

    if-eqz p1, :cond_d

    .line 692
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 694
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-object p1

    .line 692
    :cond_22
    :try_start_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_38

    goto :goto_3c

    :catchall_26
    move-exception p0

    move-object p1, v0

    goto :goto_3f

    :catch_29
    move-exception p0

    move-object p1, v0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_3f

    :catch_2e
    move-exception p0

    .line 688
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    if-eqz p1, :cond_3c

    .line 692
    :try_start_34
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 694
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    const-string p0, ""

    return-object p0

    :goto_3f
    if-eqz p1, :cond_49

    .line 692
    :try_start_41
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p1

    .line 694
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 697
    :cond_49
    :goto_49
    throw p0
.end method

.method public getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    const-string v0, "dropped"

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 1330
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 1331
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1333
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getInboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1857
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string/jumbo v1, "mmsType"

    .line 1860
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 1861
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1862
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MMS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1864
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1865
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "mmsCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsTimeStamp"

    .line 1867
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsBody"

    .line 1868
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1866
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_75

    goto :goto_23

    :cond_74
    return-object v0

    :catch_75
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1873
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getInboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1503
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string/jumbo v1, "smsType"

    .line 1506
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 1507
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1508
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SMS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1510
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1511
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "smsCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsTimeStamp"

    .line 1513
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsBody"

    .line 1514
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_75

    goto :goto_23

    :cond_74
    return-object v0

    :catch_75
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1519
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getIncomingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1677
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1679
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1680
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1683
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_17
    const-string v1, "callingType"

    .line 1685
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 1686
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1687
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CallingLog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1689
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1690
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "callingCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingTimeStamp"

    .line 1692
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingDuration"

    .line 1693
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingStatus"

    .line 1694
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1691
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8a} :catch_8b

    goto :goto_30

    :catch_8b
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1698
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-object v0
.end method

.method public final getInt(Ljava/lang/String;)I
    .registers 3

    const/4 p0, -0x1

    .line 788
    :try_start_1
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p1, "DeviceInfo"

    const-string v0, "could not get property"

    .line 791
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return p0
.end method

.method public getKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 10

    .line 446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 449
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceInfo"

    const-string v2, ""

    if-eqz v0, :cond_9c

    .line 450
    array-length v3, v0

    if-nez v3, :cond_19

    goto/16 :goto_9c

    :cond_19
    const/4 v3, 0x0

    .line 454
    aget-object v0, v0, v3

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z

    move-result v4

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callingPackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isKnoxInternalApp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "serviceId"

    if-eqz v4, :cond_5b

    .line 460
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "adminUid"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "KnoxServiceIdTable"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5a

    return-object v2

    :cond_5a
    return-object p0

    :cond_5b
    const/4 p1, 0x0

    .line 469
    invoke-virtual {p0, p1, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getKnoxServiceIdData([Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 470
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9b

    .line 471
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6c
    :goto_6c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    const-string/jumbo v4, "packageList"

    .line 472
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6c

    const-string v5, ","

    .line 474
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 475
    array-length v5, v4

    move v6, v3

    :goto_89
    if-ge v6, v5, :cond_6c

    aget-object v7, v4, v6

    .line 476
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 477
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6c

    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    :cond_9b
    return-object v2

    .line 451
    :cond_9c
    :goto_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to find the packages for uid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getKnoxServiceIdData([Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "KnoxServiceIdTable"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxServicePackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceKnoxInternalExceptionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "packageList"

    .line 493
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 494
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "adminUid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->getKnoxServiceIdData([Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 498
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_59

    .line 499
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 500
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, ","

    .line 502
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 503
    array-length v2, p1

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v2, :cond_31

    aget-object v4, p1, v3

    .line 504
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_59
    return-object v0
.end method

.method public getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    const-string/jumbo v0, "missed"

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getModelName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "ro.product.name"

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModelNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "ro.product.model"

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModemFirmware(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "gsm.version.baseband"

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string/jumbo v1, "mmsType"

    .line 1837
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 1838
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1839
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "MMS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1841
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1842
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "mmsCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsTimeStamp"

    .line 1844
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mmsBody"

    .line 1845
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1843
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_75

    goto :goto_23

    :cond_74
    return-object v0

    :catch_75
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1850
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOutboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1480
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string/jumbo v1, "smsType"

    .line 1483
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 1484
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1485
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SMS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1487
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1488
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "smsCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsTimeStamp"

    .line 1490
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "smsBody"

    .line 1491
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_75

    goto :goto_23

    :cond_74
    return-object v0

    :catch_75
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1496
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOutgoingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1648
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1649
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1652
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_17
    const-string v1, "callingType"

    .line 1654
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 1655
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1656
    iget-object v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CallingLog"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1658
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1659
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "callingCaptureAdmin"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/enterprise/device/DeviceInfo;->isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingAddress"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - TimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingTimeStamp"

    .line 1661
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingDuration"

    .line 1662
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "callingStatus"

    .line 1663
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1660
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8a} :catch_8b

    goto :goto_30

    :catch_8b
    const-string p0, "DeviceInfo"

    const-string p1, "could not log edm database"

    .line 1667
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-object v0
.end method

.method public getPlatformSDK(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const-string/jumbo p1, "ro.build.version.sdk"

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPlatformVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string/jumbo p1, "ro.build.version.release"

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformVersionName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public final getProcessorTypeinLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "(?i:model)\\s*(?i:name).*:.*[a-zA-Z].*"

    .line 660
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "(?i:processor).*:.*[a-zA-Z].*"

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 661
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 662
    new-instance p1, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {p1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_1b
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 665
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_2a
    const-string p1, "^[0-9]+$"

    .line 668
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 6

    const-string p0, "DeviceInfo"

    const-string/jumbo p1, "ril.sales_code"

    const-string/jumbo v0, "none"

    .line 1984
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1985
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo p1, "ro.csc.sales_code"

    const-string v1, "BTU"

    .line 1986
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    :try_start_1b
    const-string v1, "MSK"

    .line 1990
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string p1, "SKT"

    goto :goto_7b

    :cond_26
    const-string v1, "MKT/KTT"

    .line 1992
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string p1, "KT"

    goto :goto_7b

    :cond_31
    const-string v1, "MLG/LGT"

    .line 1994
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string p1, "LG"

    goto :goto_7b

    :cond_3c
    const-string v1, "BST/SPR/VMU/XAS"

    .line 1998
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_48

    const-string p1, "SPR"

    goto :goto_7b

    :cond_48
    const-string v1, "TFG"

    .line 2002
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string/jumbo v1, "ril.product_code"

    .line 2003
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2004
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2005
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    .line 2006
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_6d} :catch_95

    if-eqz v1, :cond_7b

    :try_start_6f
    const-string p1, "SalesCode : Use product code as customerCode for Movistar single binary(TFG)"

    .line 2008
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_74} :catch_76

    move-object p1, v0

    goto :goto_7b

    :catch_76
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_96

    .line 2012
    :cond_7b
    :goto_7b
    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SalesCode : return ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_94} :catch_95

    goto :goto_af

    :catch_95
    move-exception v0

    .line 2014
    :goto_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSalesCode : RuntimeException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_af
    return-object p1
.end method

.method public getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PRIVILEGED_PHONE_STATE"
    .end annotation

    const-string v0, "00000000000"

    .line 362
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceReadPrivilegedPhoneStatePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo p1, "ril.serialnumber"

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move-object v0, p1

    goto :goto_24

    :cond_1c
    :goto_1c
    const-string/jumbo p1, "ro.boot.serialno"

    .line 365
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_23} :catch_24

    move-object v0, p0

    :catch_24
    :goto_24
    return-object v0
.end method

.method public final getStrictDataUsageTimer()I
    .registers 3

    .line 939
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "MISC"

    const-string/jumbo v1, "miscDataStatisticTimer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 941
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_24

    if-ge v1, v0, :cond_10

    :cond_24
    move v0, v1

    goto :goto_10

    :cond_26
    if-nez v0, :cond_29

    const/4 v0, 0x3

    :cond_29
    return v0
.end method

.method public final getString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const-string/jumbo p0, "unknown"

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 770
    :try_start_6
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_20

    .line 772
    :cond_c
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 773
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_19

    if-eqz p0, :cond_17

    goto :goto_20

    :cond_17
    move-object v0, p1

    goto :goto_20

    :catch_19
    const-string p0, "DeviceInfo"

    const-string p1, "could not get property"

    .line 777
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-object v0
.end method

.method public getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3

    const-string/jumbo v0, "success"

    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getCallsCount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTotalCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2

    .line 294
    new-instance p1, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 2

    .line 314
    new-instance p1, Lcom/android/server/enterprise/device/DeviceStorageUtil;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalRamMemory(Lcom/samsung/android/knox/ContextInfo;)J
    .registers 8

    const-string p0, "MemTotal:"

    .line 731
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array v0, p1, [J

    const-string v1, "/proc/meminfo"

    .line 733
    invoke-static {v1, p0, v0}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    const/4 p0, 0x0

    move v1, p0

    :goto_10
    if-ge v1, p1, :cond_1c

    .line 736
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public final getTrafficMobileRx()J
    .registers 7

    .line 976
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 978
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    .line 979
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    :cond_16
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-wide v4, v0

    :goto_1e
    return-wide v4
.end method

.method public final getTrafficMobileTx()J
    .registers 7

    .line 967
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 969
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    .line 970
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    :cond_16
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-wide v4, v0

    :goto_1e
    return-wide v4
.end method

.method public final getTrafficWifiRx()J
    .registers 9

    .line 960
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 961
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v4, v2

    const-wide/16 v6, 0x0

    if-nez p0, :cond_11

    move-wide v2, v6

    :cond_11
    cmp-long p0, v4, v0

    if-nez p0, :cond_16

    move-wide v0, v6

    :cond_16
    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final getTrafficWifiTx()J
    .registers 9

    .line 953
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 954
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v4, v2

    const-wide/16 v6, 0x0

    if-nez p0, :cond_11

    move-wide v2, v6

    :cond_11
    cmp-long p0, v4, v0

    if-nez p0, :cond_16

    move-wide v0, v6

    :cond_16
    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 813
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MISC"

    const-string v0, "enableWifiDataStatistic"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 815
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public final hasKnoxInternalExceptionPermission(Ljava/lang/String;)Z
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 1579
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1580
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 1585
    :cond_d
    :try_start_d
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MISC"

    const-string v1, "CallingLogEnabled"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1587
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2f

    if-eqz p1, :cond_1b

    const/4 p0, 0x1

    return p0

    :catch_2f
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1593
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v0
.end method

.method public final isCorrectAdmin(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 7

    .line 1434
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_27

    .line 1435
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, ";"

    .line 1436
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1437
    array-length p2, p0

    const/4 p3, 0x0

    move v1, p3

    :goto_18
    if-ge v1, p2, :cond_26

    aget-object v2, p0, v1

    .line 1438
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_23

    return v0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    return p3

    :cond_27
    return v0
.end method

.method public isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    .line 278
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "keyguard"

    .line 279
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 280
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const/4 p1, 0x0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, p1

    :goto_16
    return p0
.end method

.method public isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 256
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    :try_start_b
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    const-string p1, "DeviceInfo"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeviceSecure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_33
    .catchall {:try_start_b .. :try_end_2d} :catchall_31

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3c

    :catchall_31
    move-exception p0

    goto :goto_3d

    :catch_33
    move-exception p0

    const/4 p1, 0x0

    .line 265
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_31

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, p1

    :goto_3c
    return p0

    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    throw p0
.end method

.method public final isDuplicatedPackage(Ljava/util/List;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const-string v0, "adminUid"

    const-string/jumbo v1, "packageList"

    .line 384
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 385
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->getKnoxServiceIdData([Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_73

    .line 387
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    .line 388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 389
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v3, :cond_1a

    const-string v4, ","

    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 394
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    if-eq v2, p2, :cond_42

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already stored by uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_73
    const/4 p0, 0x0

    return p0
.end method

.method public isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1819
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MISC"

    const-string/jumbo v0, "mmsLogEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1821
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1822
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_23

    if-eqz p1, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_23
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1827
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1463
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhoneAppOrOwnerAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 1465
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MISC"

    const-string/jumbo v0, "smsLogEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_26

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    return p0

    :catch_26
    const-string p0, "DeviceInfo"

    const-string p1, "could not open edm database"

    .line 1473
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public final isWifiStateEnabled()Z
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 1047
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1049
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    if-nez p0, :cond_17

    return v0

    .line 1052
    :cond_17
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public final logDataCall(J)Z
    .registers 8

    .line 1264
    iget-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    const/4 v1, 0x0

    const-string v2, "DeviceInfo"

    if-nez v0, :cond_d

    const-string p0, "Logging disabled"

    .line 1265
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1268
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    if-nez v0, :cond_17

    const-string p0, "Data Disconnected, don\'t log"

    .line 1269
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_23

    const-string p0, "No bytes to log"

    .line 1273
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1279
    :cond_23
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2d

    const-string p0, "failed logDataCall because mTelMgr is null"

    .line 1280
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1284
    :cond_2d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "ROAMING"

    goto :goto_38

    :cond_36
    const-string v0, "NORMAL"

    .line 1291
    :goto_38
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    .line 1296
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 1297
    :cond_4e
    iput-wide v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1298
    iput-wide v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1302
    :cond_52
    iput-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    .line 1303
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1304
    iput-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 1307
    :cond_5e
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 1311
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1312
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "dataCallDate"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    const-string v1, "dataCallStatus"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    const-string v2, "dataCallNetType"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1318
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1319
    iget-wide v3, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1320
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dataCallBytes"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1323
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DATACALLLOG"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->updateDataUsageState()V

    .line 1970
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->clearDatabasesOnAdminRemoval(I)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 632
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 637
    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "success"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    and-int/lit8 p1, p1, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "missed"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p1, v0

    .line 639
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "dropped"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, p1

    return p0
.end method

.method public resetDataCallLogging(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-wide/16 v0, 0x0

    .line 1199
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1200
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    if-eqz p2, :cond_16

    .line 1206
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dataCallDate<=?"

    .line 1207
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1210
    :goto_17
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "DATACALLLOG"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 879
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 881
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 882
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 883
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 884
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 885
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 886
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "deviceWifiSent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "deviceWifiReceived"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "deviceNetworkSent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 889
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "deviceNetworkReceived"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 890
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DEVICE"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 893
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 894
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 895
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 896
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz p1, :cond_6f

    .line 897
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    return-void
.end method

.method public setDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1167
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1169
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "enableDataCallLogging"

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_1b
    return p2
.end method

.method public setDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 827
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 829
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "enableWifiDataCallDataStatistic"

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_1b
    return p2
.end method

.method public setDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 6
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 903
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 904
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 905
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_14

    const/16 v0, 0x3c

    if-le p2, v0, :cond_15

    :cond_14
    const/4 p2, 0x3

    .line 910
    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "MISC"

    const-string/jumbo v2, "miscDataStatisticTimer"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 913
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 915
    :cond_2a
    iget-boolean p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    if-eqz p2, :cond_38

    .line 916
    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    int-to-long v1, p0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_38
    return p1
.end method

.method public setKnoxServiceId(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;)Z
    .registers 9
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceKnoxInternalExceptionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "DeviceInfo"

    const/4 v0, 0x0

    if-eqz p2, :cond_94

    .line 408
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_94

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_94

    .line 414
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 417
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isDuplicatedPackage(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_21

    return v0

    .line 421
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2a
    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 423
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    .line 424
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 429
    :cond_57
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageList"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "serviceId"

    .line 432
    invoke-virtual {p2, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KnoxServiceIdTable"

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    if-nez p0, :cond_92

    const-string/jumbo p0, "setKnoxServiceId() fail"

    .line 439
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_92
    const/4 p0, 0x1

    return p0

    :cond_94
    :goto_94
    const-string/jumbo p0, "packageList or serviceId is null"

    .line 409
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "com.samsung.android.knox.permission.KNOX_INVENTORY"
    .end annotation

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->enforceOwnerOnlyAndDeviceInventoryPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 800
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 802
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "MISC"

    const-string v3, "enableWifiDataStatistic"

    invoke-virtual {v1, v0, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    :cond_1b
    return p2
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    const-string v0, "adminUid"

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1610
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 1614
    :cond_e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1615
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1d
    const-string v4, "CallingLogEnabled"

    const/4 v5, 0x1

    .line 1618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 1623
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1624
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    .line 1625
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1627
    :cond_50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "callingType"

    if-eqz p5, :cond_61

    const-string p5, "1"

    goto :goto_63

    :cond_61
    const-string p5, "0"

    .line 1628
    :goto_63
    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "callingStatus"

    .line 1629
    invoke-virtual {v1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "callingAddress"

    .line 1630
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callingTimeStamp"

    .line 1631
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callingDuration"

    .line 1632
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callingCaptureAdmin"

    .line 1633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CallingLog"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_8a} :catch_8b

    goto :goto_92

    :catch_8b
    const-string p0, "DeviceInfo"

    const-string p1, "could not write log edm database"

    .line 1637
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    return-void
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const-string v0, "adminUid"

    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_91

    .line 1880
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1881
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1b
    const-string/jumbo v4, "mmsLogEnabled"

    const/4 v5, 0x1

    .line 1884
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 1889
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1890
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    .line 1891
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 1893
    :cond_4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_91

    const-string/jumbo v0, "mmsType"

    if-eqz p4, :cond_61

    const-string p4, "1"

    goto :goto_63

    :cond_61
    const-string p4, "0"

    .line 1894
    :goto_63
    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "mmsAddress"

    .line 1895
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "mmsTimeStamp"

    .line 1896
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "mmsBody"

    .line 1897
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "mmsCaptureAdmin"

    .line 1898
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "MMS"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_89} :catch_8a

    goto :goto_91

    :catch_8a
    const-string p0, "DeviceInfo"

    const-string p1, "could not write log edm database"

    .line 1902
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    :goto_91
    return-void
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const-string v0, "adminUid"

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->enforcePhone()V

    .line 1526
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1527
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_14
    const-string/jumbo v4, "smsLogEnabled"

    const/4 v5, 0x1

    .line 1530
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    iget-object v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 1535
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1536
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    .line 1537
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 1539
    :cond_48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "smsType"

    if-eqz p4, :cond_5a

    const-string p4, "1"

    goto :goto_5c

    :cond_5a
    const-string p4, "0"

    .line 1540
    :goto_5c
    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "smsAddress"

    .line 1541
    invoke-virtual {v1, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smsTimeStamp"

    .line 1542
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smsBody"

    .line 1543
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smsCaptureAdmin"

    .line 1544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "SMS"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_82} :catch_83

    goto :goto_8a

    :catch_83
    const-string p0, "DeviceInfo"

    const-string p1, "could not write log edm database"

    .line 1548
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final updateDataStatisticsUsage()J
    .registers 14

    .line 1062
    iget v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    move-result-wide v0

    .line 1066
    iget-wide v2, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x0

    if-lez v4, :cond_24

    sub-long v2, v0, v2

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_25

    iget-boolean v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v4, :cond_25

    .line 1069
    iget-wide v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    goto :goto_25

    :cond_24
    move-wide v2, v5

    .line 1072
    :cond_25
    :goto_25
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    add-long/2addr v2, v5

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    move-result-wide v0

    .line 1078
    iget-wide v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    cmp-long v4, v0, v7

    if-lez v4, :cond_44

    sub-long v7, v0, v7

    .line 1080
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-boolean v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    if-eqz v4, :cond_45

    .line 1081
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    goto :goto_45

    :cond_44
    move-wide v7, v5

    .line 1084
    :cond_45
    :goto_45
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    add-long/2addr v2, v7

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    move-result-wide v0

    .line 1090
    iget-wide v7, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    cmp-long v4, v0, v7

    if-ltz v4, :cond_5e

    sub-long v7, v0, v7

    .line 1092
    iget-boolean v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v4, :cond_63

    .line 1093
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    goto :goto_63

    .line 1096
    :cond_5e
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1097
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    move-wide v7, v5

    .line 1099
    :cond_63
    :goto_63
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    add-long/2addr v7, v5

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    move-result-wide v0

    .line 1105
    iget-wide v9, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    cmp-long v4, v0, v9

    if-ltz v4, :cond_7c

    sub-long v9, v0, v9

    .line 1107
    iget-boolean v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    if-eqz v4, :cond_81

    .line 1108
    iget-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    goto :goto_81

    .line 1111
    :cond_7c
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 1112
    iput-wide v5, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    move-wide v9, v5

    .line 1114
    :cond_81
    :goto_81
    iput-wide v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    add-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-lez v0, :cond_8b

    .line 1119
    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/device/DeviceInfo;->logDataCall(J)Z

    .line 1121
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1124
    iget v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d7

    .line 1125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "deviceWifiSent"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "deviceWifiReceived"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1128
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "deviceNetworkSent"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1129
    iget-wide v4, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "deviceNetworkReceived"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1130
    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DEVICE"

    invoke-virtual {v1, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    const/4 v0, 0x0

    .line 1131
    iput v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    :cond_d7
    add-long/2addr v2, v7

    return-wide v2
.end method

.method public final updateDataUsageState()V
    .registers 3

    .line 1155
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1156
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 1157
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 1158
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 1159
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public final updateSignalStrength()V
    .registers 5

    .line 1784
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthDbm(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_f

    move v0, v1

    .line 1789
    :cond_f
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mPhoneStateReceiver:Ljava/lang/Object;

    invoke-virtual {v3, p0}, Lcom/android/server/enterprise/adapterlayer/TelephonyManagerAdapter;->getSignalStrengthLevelAsu(Ljava/lang/Object;)I

    move-result p0

    if-ne v2, p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, p0

    .line 1794
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dBm "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " asu"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/device/DeviceInfo;->mSignalStrength:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_5d

    :catch_41
    move-exception p0

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void
.end method
