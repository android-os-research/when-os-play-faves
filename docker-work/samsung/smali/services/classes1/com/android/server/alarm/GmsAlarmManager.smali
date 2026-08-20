.class public Lcom/android/server/alarm/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;,
        Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;,
        Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;,
        Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;,
        Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;,
        Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;,
        Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;,
        Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;,
        Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_ALARM_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_check_gms_network"

.field public static final ACTION_ALARM_INSERT_LOG_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_insert_log"

.field public static final ACTION_GOOGLE_NET_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_google_net_state"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.gmsnet"

.field public static final ACTION_SETUPWIZARD_COMPLETE_BROADCAST:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final ALARM_RESTRICTION_ENABLE:I = 0x1

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHECKINSERVER_URL:Ljava/lang/String; = "checkin.gstatic.com"

.field public static final CHINA_MODE:Ljava/lang/String; = "CHINA"

.field public static final CONFIGUPDATER_PKG:Ljava/lang/String; = "com.google.android.configupdater"

.field public static final CONNECTION_TIME_OUT_MILLSEC:I = 0xbb8

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static DEBUG_SCPM:Z = false

.field public static final GMSALARMMANAGERLOGGING_APP_ID:Ljava/lang/String; = "com.android.server.gmsalarmmanager"

.field public static final GMSALARMMANAGERLOGGING_FEATURE_GNET:Ljava/lang/String; = "GNET"

.field public static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field public static final GNET_ALARM_RESTRICTION_ITEM:Ljava/lang/String; = "alarm_restriction"

.field public static final GNET_CHECKIN_ITEM:Ljava/lang/String; = "checkin_addr"

.field public static final GNET_NETWORK_RESTRICTION_ITEM:Ljava/lang/String; = "network_restriction"

.field public static final GNET_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field public static final GNET_WAKELOCK_RESTRICTION_ITEM:Ljava/lang/String; = "wakelock_restriction"

.field public static final GNET_WHITELIST_CATEGORY:Ljava/lang/String; = "whitelist"

.field public static final HONG_KONG_MODE:Ljava/lang/String; = "HONG KONG"

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final MASK:I = 0x7

.field public static final MSG_CHECK_MULTIUSERID:I = 0xa

.field public static final MSG_CHECK_NETWORK:I = 0x1

.field public static final MSG_CHECK_SPCM_PARAMETERES:I = 0x7

.field public static final MSG_DISABLE_GMS_NETWORK:I = 0x2

.field public static final MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING:I = 0x5

.field public static final MSG_ENABLE_GMS_NETWORK:I = 0x3

.field public static final MSG_ENABLE_GMS_NETWORK_BY_CHARGING:I = 0x4

.field public static final MSG_FORCE_RESET_GMS_NETWORK:I = 0xc

.field public static final MSG_INSERT_LOG:I = 0x6

.field public static final MSG_SETTINGS_CHANGE:I = 0xb

.field public static final MSG_USER_ADDED:I = 0x9

.field public static final MSG_USER_REMOVED:I = 0x8

.field public static final NETWORK_RESTRICTION_ENABLE:I = 0x2

.field public static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field public static final POLICY_ENABLE:Ljava/lang/String; = "true"

.field public static final READ_TIME_OUT_MILLSEC:I = 0xbb8

.field public static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final SCPM_POLICY_NAME:Ljava/lang/String; = "gmsnet"

.field public static final SCREEN_ON_ALARM_DELAY:J = 0x36ee80L

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "GmsAlarmManager"

.field public static final TIME_DELAY:J = 0x2710L

.field public static final TIME_DELAY_AFTER_SETUPWIZARD_COMPLETE:J = 0x3e8L

.field public static final TIME_DELAY_INSERT_LOG:J = 0x5265c00L

.field public static final TIME_OUT_DELAY:J = 0x1d4c0L

.field public static final WAKELOCK_RESTRICTION_ENABLE:I = 0x4

.field public static sHandlerThread:Landroid/os/HandlerThread;

.field public static sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public cm:Landroid/net/ConnectivityManager;

.field public isCharging:Z

.field public isChinaMode:Z

.field public isGmsNetWorkLimt:Z

.field public isHongKongMode:Z

.field public isSetupWizardCompleteOrBootComplete:Z

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

.field public mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

.field public mBigdataEnable:Z

.field public mCheckinServerUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConfigupdaterUid:I

.field public mContext:Landroid/content/Context;

.field public mCurrentIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGmsPkgAppid:I

.field public mGmsPkgUid:I

.field public mGmsUidOfMultiUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGoogleNetWork:Z

.field public mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

.field public mInsertLogIntent:Landroid/content/Intent;

.field public mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field public mIntent:Landroid/content/Intent;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPolicyControlSwitch:I

.field public mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

.field public mScreenOffChange:Z

.field public mScreenOn:Z

.field public mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

.field public mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

.field public mTimeoutcount:I

.field public mTimeoutcountDef:I

.field public mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

.field public mUserEnable:Z

.field public mVendingUid:I

.field public mWaitCheckNetWork:Z

.field public noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;


# direct methods
.method public static bridge synthetic -$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisHongKongMode(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;Landroid/net/NetworkInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbigData(Lcom/android/server/alarm/GmsAlarmManager;J)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->bigData(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->checkActiveNet()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOnceMultiUserid(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->checkOnceMultiUserid()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceWakeLockBlackListReset(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->forceWakeLockBlackListReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSettingsValueFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minsertLog(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misChnSim(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChnSim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misChnSimOrNoSim(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChnSimOrNoSim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWifiConnected(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->restoreGcmAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->sendCheckNetWorkDelay(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->sendInsertLogDelay(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->sendIntentToIBS(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGmsNetWorkForceReset(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsNetWorkForceReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSCPMParametersFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->updateSCPMParametersFromDB()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "content://com.samsung.android.sm/settings"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GmsAlarmManager"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 151
    sput-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 78
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 79
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 80
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 92
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 94
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 95
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 113
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 114
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 115
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 116
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    const/4 v0, 0x7

    .line 135
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 297
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 170
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isHongkong()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    :try_start_7e
    const-string v0, "com.google.android.gms"

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const-string v0, "com.android.vending"

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    const-string v0, "com.google.android.configupdater"

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 180
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_9e} :catch_9f

    goto :goto_b6

    :catch_9f
    move-exception p0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NameNotFoundException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GmsAlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b6
    return-void
.end method


# virtual methods
.method public final bigData(J)Ljava/lang/String;
    .registers 8

    .line 1320
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1321
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1322
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"GMST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"GMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1326
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMST\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1329
    sget-object p1, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\"VPNT\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    sget-object p1, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\"VPNC\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    sget-object p0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    sget-object p0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final cancelAlarm()V
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_b

    .line 293
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    return-void
.end method

.method public final checkActiveNet()Z
    .registers 3

    .line 1058
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 1059
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 1062
    :cond_10
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_39

    .line 1063
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "networkInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public final checkGoogleNetwork(Ljava/lang/String;)I
    .registers 4

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 923
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetworkByAll(Ljava/lang/String;)I

    move-result p0

    goto :goto_32

    .line 928
    :cond_2c
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 930
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetworkByDefault(Ljava/lang/String;)I

    move-result p0

    :goto_32
    return p0
.end method

.method public final checkGoogleNetworkByAll(Ljava/lang/String;)I
    .registers 15

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetworkByAll addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 944
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2b

    .line 945
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 947
    :cond_2b
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_113

    .line 948
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_113

    move v7, v3

    move v6, v5

    .line 951
    :goto_3a
    array-length v8, v2

    if-ge v6, v8, :cond_5d

    .line 952
    iget-object v8, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 954
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    :cond_4b
    const/16 v8, 0x11

    if-ne v7, v8, :cond_55

    .line 957
    aget-object v8, v2, v6

    invoke-virtual {v0, v5, v8}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_5a

    .line 959
    :cond_55
    aget-object v8, v2, v6

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 963
    :cond_5d
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v6, v3

    move v7, v4

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_111

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Network;

    .line 964
    iget-object v9, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_8c

    .line 966
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkGoogleNetworkByAll networkInfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_8c
    :try_start_8c
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v8, v9}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_97} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_f0
    .catchall {:try_start_8c .. :try_end_97} :catchall_ee

    if-nez v8, :cond_a5

    .line 972
    :try_start_99
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9f} :catch_a0
    .catchall {:try_start_99 .. :try_end_9f} :catchall_109

    goto :goto_a6

    :catch_a0
    move-exception v2

    goto :goto_f4

    :catch_a2
    move-exception v2

    goto/16 :goto_fe

    :cond_a5
    move-object v2, v8

    :goto_a6
    const/16 v8, 0xbb8

    .line 974
    :try_start_a8
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 975
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 976
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v8, "HEAD"

    .line 977
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 979
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    if-eq v6, v3, :cond_e9

    .line 981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkGoogleNetworkByAll responseCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d3} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d3} :catch_f0
    .catchall {:try_start_a8 .. :try_end_d3} :catchall_ee

    const v7, 0x9d0b

    .line 983
    :try_start_d6
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 984
    iput v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_db} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_db} :catch_df
    .catchall {:try_start_d6 .. :try_end_db} :catchall_ee

    .line 993
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v6

    :catch_df
    move-exception v7

    move-object v8, v2

    move-object v2, v7

    move v7, v5

    goto :goto_f4

    :catch_e4
    move-exception v7

    move-object v8, v2

    move-object v2, v7

    move v7, v5

    goto :goto_fe

    :cond_e9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_64

    :catchall_ee
    move-exception p0

    goto :goto_10b

    :catch_f0
    move-exception v8

    move-object v12, v8

    move-object v8, v2

    move-object v2, v12

    .line 990
    :goto_f4
    :try_start_f4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v8, :cond_106

    goto :goto_103

    :catch_fa
    move-exception v8

    move-object v12, v8

    move-object v8, v2

    move-object v2, v12

    .line 988
    :goto_fe
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_f4 .. :try_end_101} :catchall_109

    if-eqz v8, :cond_106

    .line 993
    :goto_103
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_106
    move-object v2, v8

    goto/16 :goto_64

    :catchall_109
    move-exception p0

    move-object v2, v8

    :goto_10b
    if-eqz v2, :cond_110

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 995
    :cond_110
    throw p0

    :cond_111
    move v3, v6

    goto :goto_114

    :cond_113
    move v7, v4

    .line 1001
    :goto_114
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result p1

    if-eqz p1, :cond_148

    if-eqz v7, :cond_148

    .line 1002
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkGoogleNetworkByAll timeout count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_145

    .line 1005
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14a

    .line 1007
    :cond_145
    iput v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    goto :goto_14a

    .line 1010
    :cond_148
    iput v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    :goto_14a
    return v3
.end method

.method public final checkGoogleNetworkByDefault(Ljava/lang/String;)I
    .registers 8

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetworkByDefault addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1022
    :try_start_18
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_61
    .catchall {:try_start_18 .. :try_end_23} :catchall_5f

    const/16 v2, 0xbb8

    .line 1024
    :try_start_25
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1025
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1026
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "HEAD"

    .line 1027
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1029
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleNetworkByDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x9d0b

    .line 1031
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1032
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_56} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_5a
    .catchall {:try_start_25 .. :try_end_56} :catchall_ae

    .line 1051
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v2

    :catch_5a
    move-exception p0

    move-object v2, p1

    goto :goto_62

    :catch_5d
    move-exception v2

    goto :goto_6f

    :catchall_5f
    move-exception p0

    goto :goto_b0

    :catch_61
    move-exception p0

    .line 1048
    :goto_62
    :try_start_62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_5f

    if-eqz v2, :cond_ac

    .line 1051
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ac

    :catch_6b
    move-exception p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 1035
    :goto_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1037
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleNetworkByDefault timeout count default: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_a2

    .line 1040
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a7

    .line 1042
    :cond_a2
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    goto :goto_a7

    .line 1045
    :cond_a5
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_a7
    .catchall {:try_start_6f .. :try_end_a7} :catchall_ae

    :goto_a7
    if-eqz p1, :cond_ac

    .line 1051
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ac
    :goto_ac
    const/4 p0, -0x1

    return p0

    :catchall_ae
    move-exception p0

    move-object v2, p1

    :goto_b0
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1053
    :cond_b5
    throw p0
.end method

.method public final checkOnceMultiUserid()V
    .registers 7

    .line 724
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 725
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_4f

    .line 727
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 728
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GmsAlarmManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-le v3, v2, :cond_4c

    if-eqz v3, :cond_4c

    .line 731
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x9

    .line 732
    iput v4, v2, Landroid/os/Message;->what:I

    .line 733
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 734
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_4f
    return-void
.end method

.method public final disableMultiUserGmsRestriction(I)V
    .registers 7

    const-string v0, "GmsAlarmManager"

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 805
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 806
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 807
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_24
    return-void

    .line 814
    :cond_25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_8a

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_30

    goto :goto_8a

    :cond_30
    const/4 v1, 0x1

    .line 818
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_3c

    .line 819
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_3c

    return-void

    .line 824
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 825
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 826
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5e} :catch_75
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_5e} :catch_5f

    goto :goto_40

    :catch_5f
    move-exception p0

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :catch_75
    move-exception p0

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    return-void
.end method

.method public doDump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "  <GmsAlarmManager>"

    .line 1545
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHongKongMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_19f

    :cond_52
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19f

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiUidList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8b

    .line 1555
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPolicyControlSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->dumpNetStats(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCheckinServerUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17d

    :cond_19f
    return-void
.end method

.method public final dumpNetStats(J)Ljava/lang/String;
    .registers 6

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Since last 24 hours\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total time and # of event Google access is available   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Total time and # of event Google access is not possible : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Total time and # of event VPN is connected :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enableMultiUserGmsRestriction(I)V
    .registers 7

    const-string v0, "GmsAlarmManager"

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 837
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 838
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 839
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 842
    :cond_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_89

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_2f

    goto :goto_89

    .line 845
    :cond_2f
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_3a

    .line 846
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    const/4 v1, 0x0

    .line 852
    :try_start_3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 853
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 854
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5d} :catch_74
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_5d} :catch_5e

    goto :goto_3f

    :catch_5e
    move-exception p0

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :catch_74
    move-exception p0

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void
.end method

.method public final forceWakeLockBlackListReset()V
    .registers 3

    .line 708
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_e

    .line 709
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_e

    .line 710
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_e
    return-void
.end method

.method public final getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 1108
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1110
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1a
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    goto :goto_22

    :catch_1a
    move-exception p1

    .line 1113
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "network_management"

    .line 865
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 867
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 870
    :cond_13
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getSCPMPolicyItemFromDB()V
    .registers 12

    const-string/jumbo v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    .line 1486
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "getSCPMPolicyItemFromDB!!"

    .line 1488
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :try_start_13
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_40

    :catch_23
    move-exception v1

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_13e

    .line 1497
    :cond_42
    :goto_42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13a

    const/4 v2, 0x0

    .line 1498
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 1499
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1500
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1501
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "checkin_addr"

    .line 1502
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " ,scpm url: data1 = "

    if-eqz v8, :cond_95

    const-string/jumbo v8, "whitelist"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 1504
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    sget-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v2, :cond_42

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_95
    const-string/jumbo v8, "switch"

    .line 1507
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1508
    sget-boolean v8, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v8, :cond_c4

    .line 1509
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " item = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " switch category = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_c4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_146

    :goto_cf
    move v2, v5

    goto :goto_f2

    :sswitch_d1
    const-string v2, "alarm_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    goto :goto_cf

    :cond_da
    move v2, v6

    goto :goto_f2

    :sswitch_dc
    const-string/jumbo v2, "wakelock_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e6

    goto :goto_cf

    :cond_e6
    move v2, v4

    goto :goto_f2

    :sswitch_e8
    const-string/jumbo v8, "network_restriction"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f2

    goto :goto_cf

    :cond_f2
    :goto_f2
    const-string/jumbo v3, "true"

    packed-switch v2, :pswitch_data_154

    goto/16 :goto_42

    .line 1512
    :pswitch_fa
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 1513
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1515
    :cond_107
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1526
    :pswitch_10f
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 1527
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1529
    :cond_11d
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1519
    :pswitch_125
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 1520
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1522
    :cond_132
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_42

    .line 1538
    :cond_13a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_144

    :cond_13e
    const-string/jumbo p0, "getSCPMPolicyItemFromDB error, no database!!"

    .line 1540
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_144
    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        0xe15f73b -> :sswitch_e8
        0x3cdd985c -> :sswitch_dc
        0x6677fade -> :sswitch_d1
    .end sparse-switch

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_125
        :pswitch_10f
        :pswitch_fa
    .end packed-switch
.end method

.method public final getSettingsValueFromDB()V
    .registers 9

    const-string v0, "GmsAlarmManager"

    .line 1159
    :try_start_2
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v1, "key"

    const-string/jumbo v4, "value"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_39

    :catch_1c
    move-exception v1

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_9b

    .line 1167
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_98

    const/4 v2, 0x0

    .line 1168
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_start_46
    const-string/jumbo v4, "spcm_switch"

    .line 1171
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    .line 1172
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5c

    move v2, v3

    .line 1173
    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get from smartmanager DB, spcm_switch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-boolean v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-eq v3, v2, :cond_3b

    .line 1178
    iput-boolean v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 1179
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7d} :catch_7e

    goto :goto_3b

    :catch_7e
    move-exception v2

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with parseInt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1187
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9b
    return-void
.end method

.method public final hasValidItemFromDB()Z
    .registers 10

    const-string/jumbo v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    .line 1454
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "hasValidItemFromDB!!"

    .line 1456
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :try_start_13
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_40

    :catch_23
    move-exception v1

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x0

    if-eqz v1, :cond_73

    .line 1465
    :cond_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6f

    .line 1466
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1467
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkin_addr"

    .line 1469
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1471
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    .line 1476
    :cond_6f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_79

    :cond_73
    const-string/jumbo p0, "hasValidItemFromDB error, no database!!"

    .line 1478
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return v2
.end method

.method public init(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 7

    .line 190
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_a2

    :cond_8
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a2

    .line 191
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    sget-object v1, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 193
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 194
    :cond_26
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    .line 195
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    const-string v0, "checkin.gstatic.com"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initNetworkReceiver()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initScreenReceiver()V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initUserAddRemoveReceiver()V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initSetupWizardCompleteOrBootCompleteReceiver()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initSCPMReceiver()V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initBatteryChargingReceiver()V

    .line 202
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 204
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.server.action_check_gms_network"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.server.action_insert_log"

    .line 206
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 216
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 219
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 220
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 221
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    :cond_a2
    return-void
.end method

.method public final initBatteryChargingReceiver()V
    .registers 3

    .line 265
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.CHARGING"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public initGmsState()V
    .registers 2

    .line 1124
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    .line 1125
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    const/4 v0, 0x1

    .line 1126
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    :cond_b
    return-void
.end method

.method public final initNetworkReceiver()V
    .registers 3

    .line 242
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initSCPMReceiver()V
    .registers 3

    .line 227
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "sec.app.policy.UPDATE.gmsnet"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initScreenReceiver()V
    .registers 3

    .line 234
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initSetupWizardCompleteOrBootCompleteReceiver()V
    .registers 3

    .line 257
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initUserAddRemoveReceiver()V
    .registers 3

    .line 249
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1193
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v0, :cond_33

    .line 1194
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 1195
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 1196
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1a

    const-string v1, "extra"

    .line 1198
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 1202
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    .line 1204
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    .line 1205
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1208
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app_id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", feature = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GmsAlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isChn()Z
    .registers 2

    const-string/jumbo p0, "ro.csc.country_code"

    .line 874
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHINA"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isChnSim()Z
    .registers 3

    .line 904
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 906
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    const-string v1, "8986"

    .line 910
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "8985"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_25
    const/4 p0, 0x1

    return p0

    :cond_27
    return v0
.end method

.method public final isChnSimOrNoSim()Z
    .registers 3

    .line 890
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_26

    .line 892
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_15

    return v0

    :cond_15
    const-string v1, "8986"

    .line 896
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "8985"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_25
    return v0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 4

    if-eqz p1, :cond_2e

    .line 328
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_1a

    .line 330
    :cond_16
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    :goto_1a
    if-eqz p0, :cond_2e

    const-string p1, "com.google.android.gms.gcm."

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c

    const-string p1, "com.google.android.intent.action.GCM_RECONNECT"

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public final isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 5

    if-eqz p1, :cond_5d

    .line 343
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_17

    move-object v0, p1

    goto :goto_1b

    .line 345
    :cond_17
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    const/4 v1, 0x1

    if-eqz v0, :cond_47

    const-string v2, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "com.google.android.gms.matchstick.register_intent_action"

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "com.google.android.intent.action.SEND_IDLE"

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_46
    return v1

    :cond_47
    if-nez p0, :cond_4a

    goto :goto_4e

    .line 354
    :cond_4a
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    :goto_4e
    if-eqz p1, :cond_5d

    .line 356
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5d

    return v1

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method public final isHongkong()Z
    .registers 2

    const-string/jumbo p0, "ro.csc.country_code"

    .line 882
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HONG KONG"

    .line 883
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedUpdateSCPMPolicy()Z
    .registers 9

    .line 1428
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v1, "GmsAlarmManager"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    .line 1429
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    const-string/jumbo p0, "policy list is null"

    .line 1434
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_24
    const/4 v0, 0x0

    if-eqz p0, :cond_6d

    .line 1437
    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "policyName"

    .line 1438
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    .line 1439
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gmsnet"

    .line 1440
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , policyVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1446
    :cond_6a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6d
    return v0
.end method

.method public final isSCPMAvailable()Z
    .registers 3

    .line 1418
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "isSCPMAvailable"

    .line 1419
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_c
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public final isVPNConnected()Z
    .registers 2

    .line 1086
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/16 v0, 0x11

    .line 1087
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 1088
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isWifiConnected()Z
    .registers 2

    .line 1076
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 1077
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1078
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_18

    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public maxTriggerTime(JJJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long p0, p5, v0

    if-nez p0, :cond_8

    sub-long p5, p3, p1

    :cond_8
    const-wide/16 p0, 0x2710

    cmp-long p0, p5, p0

    if-gez p0, :cond_f

    goto :goto_10

    :cond_f
    move-wide v0, p5

    :goto_10
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double p5, v0

    mul-double/2addr p5, p0

    double-to-long p0, p5

    add-long/2addr p3, p0

    return-wide p3
.end method

.method public parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V
    .registers 8

    const-string v0, "GmsAlarmManager"

    .line 1337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GMS-CORE] parseHostAndSetUrlFirewallRule host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 1341
    :goto_21
    array-length v4, p1

    if-ge v3, v4, :cond_39

    .line 1342
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1343
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1346
    :cond_39
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_4d

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 1347
    :cond_4d
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1348
    invoke-virtual {p0, v2, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1349
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1350
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_60
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception p0

    .line 1353
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_65
    :goto_65
    return-void
.end method

.method public final restoreGcmAlarm()V
    .registers 7

    .line 716
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/alarm/Alarm;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 718
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x5

    const-wide/16 v4, 0x2710

    add-long/2addr v1, v4

    .line 719
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 720
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AlarmManagerService;->addAlarm(Lcom/android/server/alarm/Alarm;)V

    return-void
.end method

.method public schedulingGmsAlarms(Lcom/android/server/alarm/Alarm;)V
    .registers 11

    .line 369
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    return-void

    .line 372
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_4d

    :cond_f
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    if-eqz p1, :cond_4d

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4d

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-nez v1, :cond_1f

    goto :goto_4d

    .line 375
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xc

    goto :goto_31

    .line 377
    :cond_28
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x6

    .line 382
    :goto_31
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez p0, :cond_4d

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 384
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v5, v0

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    cmp-long p0, v3, v5

    if-lez p0, :cond_48

    return-void

    :cond_48
    add-long/2addr v1, v5

    const/4 p0, 0x5

    .line 389
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final sendCheckNetWorkDelay(J)V
    .registers 7

    .line 273
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 274
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 276
    :cond_10
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_26
    return-void
.end method

.method public final sendInsertLogDelay(J)V
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 284
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 286
    :cond_10
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_23

    const/4 v1, 0x3

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_23
    return-void
.end method

.method public final sendIntentToIBS(Z)V
    .registers 4

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.action_google_net_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 695
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setGMSLocationProviderChangeReceiverState(I)V
    .registers 5

    .line 1095
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1097
    :cond_5
    :try_start_5
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1098
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1099
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string p0, "GmsAlarmManager"

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGMSLocationProviderChangeReceiverState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 1102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public final setGmsMultiUserWorkAllow(Z)V
    .registers 7

    const-string v0, "GmsAlarmManager"

    .line 786
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_d

    .line 787
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 792
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 793
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 794
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_48
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-exception p0

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_48
    move-exception p0

    .line 797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final setGmsNetWorkAllow(Z)V
    .registers 5

    const-string v0, "GmsAlarmManager"

    .line 762
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    return-void

    .line 765
    :cond_9
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_14

    .line 766
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_14

    return-void

    .line 771
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 772
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 773
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 774
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_33} :catch_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_33} :catch_34

    goto :goto_5f

    :catch_34
    move-exception p0

    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_4a
    move-exception p0

    .line 777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public final setGmsNetWorkForceReset()V
    .registers 5

    const-string v0, "GmsAlarmManager"

    .line 740
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_d

    .line 741
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 746
    :cond_d
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    .line 748
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 749
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 750
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 751
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_31} :catch_48
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_31} :catch_32

    goto :goto_5d

    :catch_32
    move-exception p0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :catch_48
    move-exception p0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    return-void
.end method

.method public setUrlFirewallRule(ZLjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_b

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1365
    :cond_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "GmsAlarmManager"

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GMS-CORE] setUrlFirewallRule, ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDeleteRule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mGmsPkgUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 1368
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_f

    :catch_52
    move-exception p0

    .line 1371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_56
    return-void
.end method

.method public final setWakeLockBlackListEnableDisable(Z)V
    .registers 3

    .line 700
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    return-void

    .line 702
    :cond_7
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_10

    .line 703
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, p0, p1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_10
    return-void
.end method

.method public skipGmsAlarms(Landroid/app/PendingIntent;)Z
    .registers 4

    if-eqz p1, :cond_2a

    .line 414
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_1a

    .line 416
    :cond_16
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    :goto_1a
    if-eqz p0, :cond_2a

    .line 417
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.google.android.gms.checkin.CheckinServiceReceiver"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public skipGmsAlarms(Lcom/android/server/alarm/Alarm;)Z
    .registers 4

    .line 407
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    if-eqz v0, :cond_14

    goto :goto_19

    .line 409
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->skipGmsAlarms(Landroid/app/PendingIntent;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public final updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1376
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Multi userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsAlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-le p1, v1, :cond_83

    :try_start_27
    const-string v1, "com.google.android.gms"

    const/4 v3, 0x0

    .line 1385
    invoke-virtual {p0, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1

    const-string v4, "com.android.vending"

    .line 1386
    invoke-virtual {p0, v4, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v4

    const-string v5, "com.google.android.configupdater"

    .line 1387
    invoke-virtual {p0, v5, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0

    .line 1389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gmsuid = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vendinguid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configupdate = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_6d} :catch_6e

    goto :goto_83

    :catch_6e
    move-exception p0

    .line 1396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-object v0
.end method

.method public final updateSCPMParametersFromDB()V
    .registers 3

    .line 1403
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v1, "GmsAlarmManager"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "updateSCPMParametersFromDB"

    .line 1404
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 1409
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSCPMPolicyItemFromDB()V

    .line 1411
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_30

    :cond_2a
    const-string/jumbo p0, "scpm doesn\'t find the Policy name for gmsnet"

    .line 1413
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public updateSettings()V
    .registers 5

    .line 1132
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 1133
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 1134
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    :cond_23
    return-void
.end method
