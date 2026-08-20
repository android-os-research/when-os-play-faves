.class public Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
.super Lcom/samsung/android/server/wifi/SemBaseWifiService;
.source "SemWifiServiceImpl.java"


# static fields
.field private static final ENABLE_TENCENT_SECURITY_WIFI:Z

.field private static final PRODUCT_DEV:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiService"

.field static final TWS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.tencentwifisecurity"


# instance fields
.field private CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

.field private final mAutoTestModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private final mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

.field private final mContext:Landroid/content/Context;

.field private mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

.field private final mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

.field private mIsNoSimState:Z

.field private final mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private final mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field private mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

.field private final mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private final mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

.field private mWifiDeveloperModeEnabled:Z

.field private final mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private final mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

.field private mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method public static synthetic $r8$lambda$0nt0NLP3y93UgqcdVHA50ZnP4Ms(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;[Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanChannels$23([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1SDhdNfddk18S-XGRMMqxjnIS4Y(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$removeNetwork$10(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1lNeTYPcj_l4FuskD2aSMpmAO98(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getProfileShareDump$14()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3tOsaUiUefE2-gal88GgZV0WsfE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamBand$19(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4AjrYBDJVPLItG5U4mWtEPBpeI4(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$factoryReset$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$5O9MZPW3DmdaFFGqRHSfwHVun7Y(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$addOrUpdateNetwork$9(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5ngoTTlhaonD8YRgY_rQK54uMOE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$AEI9hclvBO7W8ODOTXjIwMOjeas(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setWesModeEnabled$24(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BNJlo4sJfGO_RgQQ4LCyhadVbzw(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$sendVendorSpecificActionFrame$25(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DdaxS4x9FJKmutzQFN6XJStD3yM(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamTrigger$16(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E9GhkpiH1v0UJMxaa1yFQzM-eI0(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$7(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MwvvzqoHsAPHUViJAgV6WAKf_7Q(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getWifiApStaListDetail$4()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NBrmbOZyNtOVgMz51HOO2XdEt-A(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanEnabled$22(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Nf2x-ALGaDK_Q5278bS9PT8CkjI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setNCHOModeEnabled$21(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RdWpZRGdzCf4MbyCkV9TbxhAHAk(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$set5GmmWaveSarBackoffEnabled$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XRqZstLPW3OA0U_zZKXPjCKS1J8(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$6(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YAU3oCNXD8uRZHMRtJPNQSUyOpQ(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAppForWiFiOffloading$29(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YFq5DU9rkCEPaGwZiOAMYjMJRGY(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YXgbhKm8TdZD3mllo0S8lcCHAOI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleLazyBootCompleted()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9_x2u8BwqZvvD33PbqYfJg6gIM(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getAutoShareDump$15()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZsAWjSmVqxiDG-GbkrXqmlbKtGI(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setTdlsEnabled$31(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aLfleVAtVGwGQA1Nxgz2A3Nj4QQ(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamScanPeriod$18(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b50ljIz04p00sxeMOBrRDx6ydRo(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;IZ)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setWifiUwbCoexEnabled$28(IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ju_5EIh8KDYeLqekxLKyrRMm3Ms(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getDiagnosisResults$12()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kMocGQsyytVOQAf8ofszmaYxK6U(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$notifyConnect$30(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpvnC-VB5dmXYaAFw2gg3FepOyM(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAndStartWifi$0(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mu5PgC1X2wKm-wqU2Zv-5vDl-pE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$sendReassociationRequestFrame$26(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oIqeODJFFktmvHkplec97S1oe9o(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setRoamDelta$17(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qA0sgY7wylP6CIZgybA1feELkJQ(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$checkAndStartWifi$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tieRI0yQFTa_yL36m5jHr9lJJww(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setOptimizerMode$27(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yOncBphVaR48Icfn8NEgIwtWPRY(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$getQoSScores$13(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yeuLeZA-fIW1CZovF96xJZiE57U(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setCountryRev$20(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zmeiWB9BDE4mKgqAtx5s5jwHbVQ(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$setFccChannelBackoffEnabled$5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConnectivityMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShutDown(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->handleShutDown()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isAirplaneModeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->report(ILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 109
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TencentSecurityWiFi"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->ENABLE_TENCENT_SECURITY_WIFI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/android/internal/util/AsyncChannel;)V
    .registers 8

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemBaseWifiService;-><init>()V

    const/4 p3, 0x1

    .line 155
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIsNoSimState:Z

    const/4 p3, 0x0

    .line 157
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p3

    const-string v0, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {p3, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    .line 343
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 526
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 166
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 167
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 168
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 169
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 170
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 171
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    const-string v1, "SemWifiService"

    .line 172
    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 173
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 174
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 175
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 176
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 177
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 178
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getCountryCodeProperty()Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 179
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiEasySetupManager()Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    .line 181
    sget-boolean v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    if-eqz v2, :cond_94

    const/4 v2, 0x3

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 183
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoTestHelper()Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_94
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->makeSemWifiSwitchForIndividualAppsService(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 187
    invoke-static {p1, p2, p3, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->makeWifiConnectivityMonitor(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 190
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 191
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->makeIWCMonitor(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemIWCMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    .line 192
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setWcmAsyncChannel(Landroid/os/Handler;)V

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setIWCMonitorAsyncChannel(Landroid/os/Handler;)V

    .line 194
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 195
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 196
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 197
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableVerboseLoggingInternal(I)V

    .line 201
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    return-void
.end method

.method private WifiEnableWarningPolicyInit(Landroid/content/Context;)V
    .registers 5

    .line 2389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    const-string v1, "wlan_permission_available"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 2391
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setThirdPartyAppEnablingWifiConfirmationDialogEnabled(Z)V

    :cond_10
    return-void
.end method

.method private checkNetworkSettingsPermission(I)Z
    .registers 4

    .line 449
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private enableVerboseLoggingInternal(I)V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setVerboseLoggingState(I)V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->enableVerboseLogging(I)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->enableVerboseLogging(I)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enableVerboseLogging(I)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->enableVerboseLogging(I)V

    .line 399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->enableVerboseLogging(I)V

    return-void
.end method

.method private enforceAccessPermission()V
    .registers 3

    .line 424
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .registers 3

    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceFactoryTestPermission()V
    .registers 3

    .line 439
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.permission.WIFI_FACTORY_TEST"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceLocationPermissionInManifest(I)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 456
    invoke-virtual {p0, v0, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_16

    goto :goto_32

    .line 458
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have Location permission"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method private enforceNetworkSettingsPermission()V
    .registers 3

    .line 434
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceWifiDiagnosticsProviderPermission()V
    .registers 3

    .line 444
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.permission.WIFI_DIAGNOSTICS_PROVIDER"

    const-string v1, "SemWifiService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleLazyBootCompleted()V
    .registers 7

    .line 553
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 554
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSepStandardModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 556
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiGuiderManagementService()Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-eqz v0, :cond_23

    .line 558
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->checkAndStart()V

    .line 562
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 564
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->checkChipsetCapabilities(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 565
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 566
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScpmMonitor()Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    .line 570
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->checkAndStart()V

    move v0, v1

    .line 571
    :goto_58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getScpmCount()I

    move-result v2

    if-ge v0, v2, :cond_78

    .line 572
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_78
    move v0, v1

    .line 574
    :goto_79
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getModelCount()I

    move-result v2

    if-ge v0, v2, :cond_99

    .line 575
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getScpmExecutorList()[Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 577
    :cond_99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 578
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 581
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateScpmState()V

    .line 584
    :cond_d0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 585
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getContinuityService()Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 587
    :cond_e0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportEasySetup()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->checkAndStart()V

    .line 590
    :cond_eb
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->needToStartSilentRoaming()Z

    move-result v0

    const-string v2, "sem_wifi_switch_to_better_wifi_supported"

    if-eqz v0, :cond_13c

    .line 591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi_switch_to_better_wifi_enabled"

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_12a

    .line 595
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v2

    if-ne v0, v2, :cond_123

    const-string v0, "SemWifiService"

    const-string v2, "Set SilentRoamingManager to disable. Carrier is VZW"

    .line 596
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_12a

    .line 600
    :cond_123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 604
    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->checkAndStart()V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_143

    .line 608
    :cond_13c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    :goto_143
    return-void
.end method

.method private handleShutDown()V
    .registers 3

    const-string v0, "SemWifiService"

    const-string v1, "shutdown"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_e

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->handleShutDown()V

    :cond_e
    return-void
.end method

.method private isAirplaneModeEnabled()Z
    .registers 4

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v2, v0

    :cond_f
    return v2
.end method

.method private isPasspointEnabled()Z
    .registers 5

    .line 2398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi_hotspot20_enable"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v3, :cond_35

    const-string v2, "SemWifiService"

    const-string v3, "WIFI_HOTSPOT20_ENABLE is invalid"

    .line 2402
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object p0

    .line 2404
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "DEFAULT_ON"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_34

    :cond_2a
    const-string v2, "DEFAULT_OFF"

    .line 2406
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 v0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v1

    :cond_35
    :goto_35
    const/4 p0, 0x1

    if-eq v0, p0, :cond_3c

    if-ne v0, v1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :cond_3c
    :goto_3c
    return p0
.end method

.method private isSupportEasySetup()Z
    .registers 4

    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    .line 2279
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2280
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    const v2, 0xc3b4

    if-lt v0, v2, :cond_1c

    .line 2281
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2282
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetup()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method private isSupportSilentRoaming()Z
    .registers 1

    .line 2257
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2258
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSilentRoaming()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addOrUpdateNetwork$9(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 3

    .line 1459
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkAndStartWifi$0(Ljava/lang/String;ZZ)V
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz v0, :cond_19

    if-eqz p3, :cond_a

    .line 230
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiEnabledByUser(Z)V

    goto :goto_19

    :cond_a
    const-string p3, "samsung.wifi.autowifi"

    .line 231
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 232
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getBigDataString(Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_1b

    :cond_19
    :goto_19
    const-string p3, "0 0"

    .line 235
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p2, :cond_28

    move-object p2, v1

    goto :goto_29

    :cond_28
    move-object p2, v2

    :goto_29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    const-string p3, "ONOF"

    invoke-static {p3, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    .line 239
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz p0, :cond_66

    const/16 p2, 0xc9

    .line 241
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataFromBigDataParamsOfONOF(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    :cond_66
    return-void
.end method

.method private synthetic lambda$checkAndStartWifi$1()V
    .registers 4

    const-string v0, "SemWifiService"

    const-string v1, "SemWifiService starting up"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->initialize()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->initialize()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->initialize()V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->loadFromDb()V

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 215
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->WifiEnableWarningPolicyInit(Landroid/content/Context;)V

    .line 218
    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 219
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 220
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 221
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x41

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private synthetic lambda$checkAppForWiFiOffloading$29(Ljava/lang/String;)V
    .registers 2

    .line 2252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    move-result-object p0

    .line 2253
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->checkAppForOffloading(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$factoryReset$11()V
    .registers 3

    .line 1498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearAllNetworks()V

    .line 1499
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->clearAll(Landroid/content/ContentResolver;)V

    .line 1500
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz v0, :cond_18

    const v1, 0x8701b

    .line 1501
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(I)V

    .line 1503
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    if-eqz p0, :cond_1f

    .line 1504
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->factoryReset()V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$getAutoShareDump$15()Ljava/lang/String;
    .registers 1

    .line 1655
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->getSharedReport()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDiagnosisResults$12()Ljava/util/List;
    .registers 1

    .line 1575
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->getCachedDiagnosisResults()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getProfileShareDump$14()Ljava/lang/String;
    .registers 1

    .line 1645
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->dump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getQoSScores$13(Ljava/util/List;)Ljava/util/Map;
    .registers 2

    .line 1586
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getWifiApStaListDetail$4()Ljava/util/List;
    .registers 1

    .line 1043
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleBootCompleted$2()V
    .registers 4

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const-string v0, "wips"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private synthetic lambda$handleBootCompleted$3()V
    .registers 4

    const-string v0, "SemWifiService"

    const-string v1, "Handle boot completed"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->handleBootCompleted()V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->handleBootCompleted(Lcom/samsung/android/server/wifi/SemClientModeManager$LazyBootCompleteListener;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->loadSavedNetworks()V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->onBootPhase()V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz v0, :cond_47

    .line 275
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndStart()V

    .line 277
    :cond_47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 278
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSepStandardModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedMcfService()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiProfileAndQoSProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 318
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->checkAndStart()V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz v0, :cond_8d

    .line 322
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerOpenNetworkQosCallback(Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;)V

    .line 335
    :cond_8d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->registerWipsDetectionsChangedCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService$WipsDetectionsChangedCallback;)V

    .line 339
    :cond_97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isPasspointEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiPasspointEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$notifyConnect$30(I)V
    .registers 5

    .line 2304
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object v0

    .line 2305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2307
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_26

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_a

    :cond_26
    return-void

    .line 2311
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConnect: clearDisableReason for network = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(I)V

    return-void
.end method

.method private synthetic lambda$removeNetwork$10(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 3

    .line 1477
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeNetwork(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendReassociationRequestFrame$26(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3

    .line 2054
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$sendVendorSpecificActionFrame$25(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    .line 2046
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemClientModeManager;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$set5GmmWaveSarBackoffEnabled$8(Z)V
    .registers 5

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1419
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->forceEnable5GmmWaveBackoff(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method private synthetic lambda$setCountryRev$20(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 1964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setCountryRev(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setFccChannelBackoffEnabled$5(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 1409
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setFccChannelBackoffEnabled$6(ZLjava/lang/String;)V
    .registers 3

    .line 1410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 1411
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->forceEnableFccChannelBackoff(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$setFccChannelBackoffEnabled$7(Ljava/lang/String;Z)V
    .registers 5

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getInterfaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    .line 1409
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 1410
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setNCHOModeEnabled$21(Z)Ljava/lang/Boolean;
    .registers 2

    .line 2001
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setNCHOModeEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setOptimizerMode$27(I)Ljava/lang/Boolean;
    .registers 2

    .line 2191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->setOptimizerMode(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamBand$19(I)Ljava/lang/Boolean;
    .registers 2

    .line 1943
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamBand(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamDelta$17(I)Ljava/lang/Boolean;
    .registers 2

    .line 1901
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamDelta(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamScanChannels$23([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 2023
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamScanEnabled$22(Z)Ljava/lang/Boolean;
    .registers 2

    .line 2012
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamScanPeriod$18(I)Ljava/lang/Boolean;
    .registers 2

    .line 1922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamScanPeriod(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setRoamTrigger$16(I)Ljava/lang/Boolean;
    .registers 2

    .line 1881
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setRoamTrigger(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setTdlsEnabled$31(Z)Ljava/lang/Boolean;
    .registers 2

    .line 2358
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setTdlsEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setWesModeEnabled$24(Z)Ljava/lang/Boolean;
    .registers 2

    .line 2038
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setWesModeEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setWifiUwbCoexEnabled$28(IZ)Ljava/lang/Integer;
    .registers 3

    .line 2205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->setWifiUwbCoexEnabled(IZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private needToStartSilentRoaming()Z
    .registers 5

    .line 2262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isJdmProduct()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SemWifiService"

    if-eqz v0, :cond_11

    const-string p0, "Do not start SilentRoamingManager. jdmProduct"

    .line 2263
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2266
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportSilentRoaming()Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "Do not start SilentRoamingManager. WifiScpmPolicy"

    .line 2267
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    const-string p0, "ro.product.model"

    .line 2270
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "SM-A14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not start SilentRoamingManager. model: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_46
    const/4 p0, 0x1

    return p0
.end method

.method private registerForBroadcasts()V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v0, :cond_48

    .line 512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$7;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_48
    return-void
.end method

.method private report(ILandroid/os/Bundle;)V
    .registers 4

    .line 1516
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz v0, :cond_7

    .line 1517
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->report(ILandroid/os/Bundle;)V

    .line 1519
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_e

    .line 1520
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setCaptivePortalMode(ILandroid/os/Bundle;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 7

    .line 1451
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    const/4 v0, 0x0

    if-nez p1, :cond_7

    return v0

    .line 1455
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOrUpdateNetwork uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Lcom/samsung/android/wifi/SemWifiConfiguration;I)V

    const/4 p0, 0x0

    invoke-virtual {v2, v4, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-nez p0, :cond_52

    .line 1461
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to add or update network "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_52
    const/4 p0, 0x1

    return p0
.end method

.method public addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V
    .registers 5

    .line 1433
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1436
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 1439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1440
    throw p0
.end method

.method public blockFccChannelBackoff(Z)V
    .registers 2

    .line 1401
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1402
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->blockFccChannelBackoff(Z)V

    return-void
.end method

.method public canAutoHotspotBeEnabled()Z
    .registers 1

    .line 1171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->canAutoHotspotBeEnabled()Z

    move-result p0

    return p0
.end method

.method public checkAndStartWifi()V
    .registers 5

    const-string v0, "SemWifiService"

    const-string v1, "checkAndStartWifi start"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup default country code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setDefaultCountryCode(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .registers 4

    .line 2251
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    .line 2252
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearAutoHotspotLists()V
    .registers 1

    .line 937
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->clearAutoHotspotLists()V

    return-void
.end method

.method public connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I
    .registers 16

    .line 784
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z
    .registers 4

    .line 856
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result p0

    return p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .registers 18

    move-object v0, p0

    .line 815
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public disableRandomMac()V
    .registers 1

    .line 1780
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1781
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->disableRandomMac()V

    return-void
.end method

.method public disconnectApBlockAutojoin(Z)Z
    .registers 2

    .line 2154
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    const/4 p0, 0x0

    return p0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 2419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2419
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2424
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->dumpControlHistory(Landroid/content/ContentResolver;Ljava/io/PrintWriter;)V

    .line 2425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2426
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->dump(Ljava/io/PrintWriter;)V

    .line 2427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz v0, :cond_4a

    .line 2428
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2429
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2431
    :cond_4a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    if-eqz v0, :cond_61

    const-string v0, "========SWITCH FOR INDIVIDUAL APPS========"

    .line 2432
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 2434
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    :cond_61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->dump(Ljava/io/PrintWriter;)V

    .line 2438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCarrierInfoManager()Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->dump(Ljava/io/PrintWriter;)V

    .line 2439
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->dump(Ljava/io/PrintWriter;)V

    .line 2440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->dump(Ljava/io/PrintWriter;)V

    .line 2441
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz v0, :cond_89

    .line 2442
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->dump(Ljava/io/PrintWriter;)V

    .line 2444
    :cond_89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-eqz v0, :cond_90

    .line 2445
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2447
    :cond_90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz v0, :cond_97

    .line 2448
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2450
    :cond_97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz v0, :cond_9e

    .line 2451
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2453
    :cond_9e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    if-eqz v0, :cond_a5

    .line 2454
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2456
    :cond_a5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    if-eqz v0, :cond_ac

    .line 2457
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 2459
    :cond_ac
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz v0, :cond_b3

    .line 2460
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2462
    :cond_b3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->dump(Ljava/io/PrintWriter;)V

    .line 2465
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->dump(Ljava/io/PrintWriter;)V

    .line 2466
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 2467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 2468
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->dump(Ljava/io/PrintWriter;)V

    .line 2469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSupportedFeatureLogger()Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->dump(Ljava/io/PrintWriter;)V

    .line 2470
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2471
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeController()Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 2472
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeController()Lcom/samsung/android/server/wifi/SemApeController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemApeController;->dump(Ljava/io/PrintWriter;)V

    .line 2474
    :cond_10d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    move-result-object v0

    if-eqz v0, :cond_11e

    .line 2475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getApeService()Lcom/samsung/android/server/wifi/SemApeService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemApeService;->dump(Ljava/io/PrintWriter;)V

    .line 2477
    :cond_11e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 2478
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->dump(Ljava/io/PrintWriter;)V

    .line 2480
    :cond_12f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->dump(Ljava/io/PrintWriter;)V

    .line 2481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemQboxController;->dump(Ljava/io/PrintWriter;)V

    .line 2482
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableHotspotTsfInfo(Z)V
    .registers 2

    .line 2296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enableHotspotTsfInfo(Z)V

    return-void
.end method

.method enableWifiDeveloperModeInternal(Z)V
    .registers 2

    .line 413
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    return-void
.end method

.method public externalTwtInterface(ILjava/lang/String;)V
    .registers 3

    .line 2169
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2170
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 2171
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->externalTwtInterface(ILjava/lang/String;)V

    return-void
.end method

.method public factoryReset()V
    .registers 3

    .line 1496
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1497
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdvancedAutohotspotConnectSettings()I
    .registers 1

    .line 907
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAdvancedAutohotspotConnectSettings()I

    move-result p0

    return p0
.end method

.method public getAdvancedAutohotspotLCDSettings()I
    .registers 1

    .line 922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getAdvancedAutohotspotLCDSettings()I

    move-result p0

    return p0
.end method

.method public getAntInfo()Ljava/lang/String;
    .registers 3

    .line 1246
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1247
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1250
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getAntInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1253
    throw p0
.end method

.method public getAutoShareDump()Ljava/lang/String;
    .registers 4

    .line 1652
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1653
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1654
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    return-object v1
.end method

.method public getAutoWifiDump()Ljava/lang/String;
    .registers 1

    .line 1674
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1675
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz p0, :cond_c

    .line 1676
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getDebugString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-string p0, "UNSUPPORTED"

    return-object p0
.end method

.method public getChannelUtilization()I
    .registers 3

    .line 1871
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1872
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda46;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getConfiguredNetworkLocations()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1683
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1684
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz p0, :cond_c

    .line 1685
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getNetworkLocations()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1687
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1488
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1489
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 1490
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1489
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1491
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1556
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1557
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->getDataBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_c
    const-string p0, ""

    :goto_e
    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 1

    .line 1981
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1982
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 4

    .line 1971
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1972
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1973
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1974
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda32;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_29
    return-object v1
.end method

.method public getCurrentStatusMode()I
    .registers 1

    .line 1800
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1801
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    .line 1802
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentStatusMode()I

    move-result p0

    :goto_d
    return p0
.end method

.method public getDiagnosisResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1572
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1573
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-eqz v0, :cond_19

    .line 1574
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda42;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    .line 1576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 1574
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1578
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEasySetupScanSettings()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 1771
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1772
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 1773
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object p0

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEasySetupScanSettings size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFactoryMacAddress()Ljava/lang/String;
    .registers 3

    .line 1234
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1235
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1238
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1241
    throw p0
.end method

.method public getFrameburstInfo()Ljava/lang/String;
    .registers 3

    .line 1258
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1259
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1262
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFrameburstInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1264
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1265
    throw p0
.end method

.method public getHotspotAntMode()I
    .registers 1

    .line 1027
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getHotspotAntMode()I

    move-result p0

    return p0
.end method

.method public getIWCQTables()Ljava/lang/String;
    .registers 1

    .line 2122
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz p0, :cond_c

    .line 2124
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getQtables()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndoorStatus()I
    .registers 1

    .line 886
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getIndoorStatus()I

    move-result p0

    return p0
.end method

.method public getIssueDetectorDump(I)Ljava/lang/String;
    .registers 2

    .line 1526
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1527
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;->getRawData(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_c
    const-string p0, ""

    :goto_e
    return-object p0
.end method

.method public getMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1059
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxTdlsSession()I
    .registers 3

    .line 2362
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2363
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMcfConnectedStatus(Ljava/lang/String;)I
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 2

    .line 794
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getMcfScanDetail()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMcfScanDetail()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMonthlyDataUsage()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNumOfTdlsSession()I
    .registers 3

    .line 2368
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda38;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getNumOfWifiAnt()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getOptimizerMode()I
    .registers 3

    .line 2196
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    const/4 p0, 0x0

    .line 2198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2197
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getProfileShareDump()Ljava/lang/String;
    .registers 4

    .line 1642
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1643
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    return-object v1
.end method

.method public getProvisionSuccess()I
    .registers 1

    .line 987
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getProvisionSuccess()I

    move-result p0

    return p0
.end method

.method public getPsmInfo()Ljava/lang/String;
    .registers 3

    .line 1270
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1271
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1274
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getPsmInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1276
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    throw p0
.end method

.method public getQoSScores(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1583
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz v0, :cond_19

    .line 1585
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)V

    .line 1586
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 1585
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 1588
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRoamBand()I
    .registers 4

    .line 1950
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1951
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1952
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 1953
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_31
    return v1
.end method

.method public getRoamDelta()I
    .registers 4

    .line 1908
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1909
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1910
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_31
    return v1
.end method

.method public getRoamScanPeriod()I
    .registers 4

    .line 1929
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1930
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1931
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 1932
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_31
    return v1
.end method

.method public getRoamTrigger()I
    .registers 4

    .line 1888
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1889
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1890
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_31

    .line 1891
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_31
    return v1
.end method

.method public getRssi(Ljava/lang/String;)I
    .registers 3

    .line 2234
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2236
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not exist "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " interface"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xc8

    return p0

    .line 2239
    :cond_2d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getRssi(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSilentRoamingDump(I)Ljava/lang/String;
    .registers 2

    .line 1532
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1533
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getRawData(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_c
    const-string p0, ""

    :goto_e
    return-object p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .registers 2

    .line 826
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .registers 2

    .line 831
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSmartD2DClientConnectedStatus(Ljava/lang/String;)I
    .registers 2

    .line 861
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSoftApBands()[I
    .registers 1

    .line 1166
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApBands()[I

    move-result-object p0

    return-object p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 1

    .line 952
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getStationInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1007
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTWTParams()[I
    .registers 1

    .line 2176
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object p0

    .line 2178
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->getTWTParams()[I

    move-result-object p0

    return-object p0
.end method

.method public getTcpMonitorAllSocketHistory(I)Ljava/lang/String;
    .registers 2

    .line 2323
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTcpMonitorDnsHistory(I)Ljava/lang/String;
    .registers 2

    .line 2328
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;
    .registers 2

    .line 2318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiSwitchForIndividualAppsService:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTopHotspotClientsToday(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApClientDetails;",
            ">;"
        }
    .end annotation

    .line 680
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTopHotspotClientsTodayAsString(II)Ljava/lang/String;
    .registers 3

    .line 685
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValidState()I
    .registers 1

    .line 1807
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1808
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_f

    .line 1809
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getValidState()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1293
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1294
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1297
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    throw p0
.end method

.method public getWcmEverQualityTested()I
    .registers 1

    .line 1786
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    .line 1788
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getEverQualityTested()I

    move-result p0

    :goto_d
    return p0
.end method

.method public getWifiApBleD2DScanDetail()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApBleScanDetail()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApChannel()I
    .registers 1

    .line 1002
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApChannel()I

    move-result p0

    return p0
.end method

.method public getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;
    .registers 2

    .line 675
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApConnectedStationCount()I
    .registers 1

    .line 1135
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApConnectedStationCount()I

    move-result p0

    return p0
.end method

.method public getWifiApDailyDataLimit()J
    .registers 3

    .line 695
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApDailyDataLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiApFreq()I
    .registers 1

    .line 1012
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApFreq()I

    move-result p0

    return p0
.end method

.method public getWifiApGuestPassword()Ljava/lang/String;
    .registers 1

    .line 709
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .registers 1

    .line 992
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApIsolate()Z
    .registers 1

    .line 1064
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApIsolate()Z

    move-result p0

    return p0
.end method

.method public getWifiApLOHSState()I
    .registers 1

    .line 1140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApLOHSState()I

    move-result p0

    return p0
.end method

.method public getWifiApMacAclMode()I
    .registers 1

    .line 1083
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMacAclMode()I

    move-result p0

    return p0
.end method

.method public getWifiApMaxClient()I
    .registers 1

    .line 866
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClient()I

    move-result p0

    return p0
.end method

.method public getWifiApMaxClientFromFramework()I
    .registers 1

    .line 962
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApMaxClientFromFramework()I

    move-result p0

    return p0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 1

    .line 1048
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApStaList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApStaListDetail()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getWifiApState()I
    .registers 1

    .line 1155
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public getWifiApTodaysTotalDataUsage()J
    .registers 3

    .line 690
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiApWarningActivityRunningState()I
    .registers 1

    .line 947
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApWarningActivityRunningState()I

    move-result p0

    return p0
.end method

.method public getWifiApWpsPbc()Z
    .registers 1

    .line 1104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApWpsPbc()Z

    move-result p0

    return p0
.end method

.method public getWifiCid()Ljava/lang/String;
    .registers 3

    .line 1208
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1209
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1212
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 1214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    throw p0
.end method

.method public getWifiEnableHistory()Ljava/lang/String;
    .registers 1

    .line 1445
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1446
    invoke-static {}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->dumpControlHistory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiFirmwareVersion()Ljava/lang/String;
    .registers 4

    .line 1195
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1198
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 1199
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    const/4 v2, 0x1

    .line 1200
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 1202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    throw p0
.end method

.method public getWifiIconVisibility()I
    .registers 1

    .line 1793
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1794
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    .line 1795
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getWifiIconVisibility()I

    move-result p0

    :goto_d
    return p0
.end method

.method public getWifiStaInfo()Ljava/lang/String;
    .registers 3

    .line 2374
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2375
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p0, "SemWifiService"

    const-string v0, "Interface is not exist"

    .line 2377
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2380
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiSupportedFeatureSet()Ljava/lang/String;
    .registers 3

    .line 1282
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1285
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getFeatureInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1287
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1288
    throw p0
.end method

.method public getWifiUsabilityStatsEntry(I)Ljava/lang/String;
    .registers 2

    .line 2338
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2339
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiVersions()Ljava/lang/String;
    .registers 3

    .line 1220
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1221
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1224
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object p0

    .line 1225
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 1226
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getAllVersions()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 1228
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw p0
.end method

.method public handleBootCompleted()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleUserStop(I)V
    .registers 3

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handle user stop "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUserSwitch(I)V
    .registers 3

    .line 360
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handle user switch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleUserUnlock(I)V
    .registers 4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handle user unlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSepStandardModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-eqz p0, :cond_2f

    .line 367
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;->handleUserUnlock(I)V

    :cond_2f
    return-void
.end method

.method public hasConfiguredNetworkLocations(Ljava/lang/String;)Z
    .registers 2

    .line 1692
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1693
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz p0, :cond_c

    .line 1694
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->hasNetworkLocations(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailableAutoWifiScan()Z
    .registers 1

    .line 1668
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1669
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isAvailableTdls()Z
    .registers 3

    .line 2344
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .registers 2

    .line 655
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isClientAcceptedWifiProfileSharing(Z)V

    return-void
.end method

.method public isGripSensorMonitorEnabled()Z
    .registers 1

    .line 2065
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2066
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->isGripSensorMonitorEnabled()Z

    move-result p0

    return p0
.end method

.method public isIndividualAppSupported()Z
    .registers 1

    .line 2333
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isIndividualAppSupported()Z

    move-result p0

    return p0
.end method

.method public isMCFClientAutohotspotSupported()Z
    .registers 1

    .line 765
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isMCFClientAutohotspotSupported()Z

    move-result p0

    return p0
.end method

.method public isNCHOModeEnabled()Z
    .registers 4

    .line 1987
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1988
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1989
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1990
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public isOverAllMhsDataLimitReached()Z
    .registers 1

    .line 744
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isOverAllMhsDataLimitReached()Z

    move-result p0

    return p0
.end method

.method public isOverAllMhsDataLimitSet()Z
    .registers 1

    .line 749
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isOverAllMhsDataLimitSet()Z

    move-result p0

    return p0
.end method

.method public isP2pConnected()Z
    .registers 1

    .line 1176
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isP2pConnected()Z

    move-result p0

    return p0
.end method

.method public isScanningEnabled()Z
    .registers 3

    .line 1730
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1733
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->isScanningEnabled()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1735
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1736
    throw p0
.end method

.method public isSupportedAutoWifi()Z
    .registers 1

    .line 1662
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1663
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isSupportedProfileRequest()Z
    .registers 2

    .line 1635
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1636
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1637
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileRequest()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isSupportedQoSProvider()Z
    .registers 2

    .line 1628
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1630
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSamsungNetworkScore()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isUploadModeEnabled()Z
    .registers 3

    .line 1371
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1372
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1375
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->isUploadModeEnabled()Z

    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw p0
.end method

.method public isWesModeEnabled()Z
    .registers 3

    .line 2030
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2031
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isWiderBandwidthTdlsSupported()Z
    .registers 3

    .line 2350
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isWifiApEnabled()Z
    .registers 2

    .line 1119
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 1120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public isWifiApEnabledWithDualBand()Z
    .registers 1

    .line 1125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApEnabledWithDualBand()Z

    move-result p0

    return p0
.end method

.method public isWifiApGuestModeEnabled()Z
    .registers 1

    .line 714
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApGuestModeIsolationEnabled()Z
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApGuestModeIsolationEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApMacAclEnabled()Z
    .registers 1

    .line 1093
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApMacAclEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiApWpa3Supported()Z
    .registers 1

    .line 835
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiApWpa3Supported()Z

    move-result p0

    return p0
.end method

.method public isWifiDeveloperModeEnabled()Z
    .registers 1

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 420
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDeveloperModeEnabled:Z

    return p0
.end method

.method public isWifiSharingEnabled()Z
    .registers 1

    .line 891
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingEnabled()Z

    move-result p0

    return p0
.end method

.method public isWifiSharingLiteSupported()Z
    .registers 1

    .line 977
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    move-result p0

    return p0
.end method

.method public isWifiSharingSupported()Z
    .registers 1

    .line 972
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    move-result p0

    return p0
.end method

.method public linkQosQuery(JJJ)Z
    .registers 14

    .line 2183
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 2184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 2185
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosQuery(JJJ)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    monitor-enter p0

    .line 1075
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyConnect(ILjava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 2302
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->notifyConnect(ILjava/lang/String;)V

    .line 2303
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyReachabilityLost()V
    .registers 1

    .line 1814
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1815
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_a

    .line 1816
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyReachabilityLost()V

    :cond_a
    return-void
.end method

.method public declared-synchronized readWifiApMacAclList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1079
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 4

    .line 1593
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_13

    .line 1597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz p0, :cond_12

    .line 1598
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    :cond_12
    return-void

    .line 1595
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
    .registers 4

    .line 645
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V

    return-void
.end method

.method public registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V
    .registers 4

    .line 634
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V

    return-void
.end method

.method public removeExcludedNetwork(I)V
    .registers 2

    .line 1863
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1864
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_a

    .line 1865
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeExcludedNetwork(I)V

    :cond_a
    return-void
.end method

.method public removeFactoryMacAddress()Z
    .registers 3

    .line 1316
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1319
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->removeFactoryMacAddress()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1321
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    throw p0
.end method

.method public removeNetwork(Ljava/lang/String;)Z
    .registers 7

    .line 1469
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    .line 1473
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {v2, v4, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-nez p0, :cond_52

    .line 1479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to remove network "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_52
    const/4 p0, 0x1

    return p0
.end method

.method public removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2222
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2223
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reportBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1426
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1427
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBigDataManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 1428
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1427
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->insertLog(Landroid/os/Bundle;)V

    return-void
.end method

.method public reportHotspotDumpLogs(Ljava/lang/String;)V
    .registers 2

    .line 1161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->reportHotspotDumpLogs(Ljava/lang/String;)V

    return-void
.end method

.method public reportIssue(ILandroid/os/Bundle;)V
    .registers 3

    .line 1511
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1512
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->report(ILandroid/os/Bundle;)V

    return-void
.end method

.method public requestPassword(Z)V
    .registers 2

    .line 1612
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1613
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz p0, :cond_a

    .line 1614
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->requestPassword(Z)V

    :cond_a
    return-void
.end method

.method public requestStopAutohotspotAdvertisement(Z)V
    .registers 2

    .line 821
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->requestStopAutohotspotAdvertisement(Z)V

    return-void
.end method

.method public resetSoftAp(Landroid/os/Message;)V
    .registers 2

    .line 1181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetSoftAp(Landroid/os/Message;)V

    return-void
.end method

.method public restoreIWCSettingsValue(II)V
    .registers 4

    .line 2115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz p0, :cond_d

    const v0, 0x8701e

    .line 2117
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(III)V

    :cond_d
    return-void
.end method

.method public restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .registers 3

    .line 2093
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2094
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    if-nez v0, :cond_f

    .line 2095
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 2097
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    if-eqz p0, :cond_16

    .line 2098
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public retrieveSemWifiConfigsBackupData()Ljava/lang/String;
    .registers 4

    .line 2104
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 2105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2106
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2105
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    if-nez v1, :cond_25

    .line 2108
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 2110
    :cond_25
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->retrieveSemWifiConfigsBackupData(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 997
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveFwDump()Z
    .registers 1

    .line 2228
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2229
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->saveFwDump()Z

    move-result p0

    return p0
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;I)Z
    .registers 5

    .line 2052
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2053
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda31;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)V

    .line 2054
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2053
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 13

    .line 2044
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2045
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;IILjava/lang/String;)V

    .line 2047
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2045
    invoke-virtual {v0, v7, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public set5GmmWaveSarBackoffEnabled(Z)V
    .registers 4

    .line 1416
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdvancedAutohotspotConnectSettings(I)V
    .registers 2

    .line 917
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAdvancedAutohotspotConnectSettings(I)V

    return-void
.end method

.method public setAdvancedAutohotspotLCDSettings(I)V
    .registers 2

    .line 927
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAdvancedAutohotspotLCDSettings(I)V

    return-void
.end method

.method public setAllowWifiScan(ZLjava/lang/String;)V
    .registers 5

    .line 1719
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1720
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1722
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setScanningEnable(ZLjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 1724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    throw p0
.end method

.method public setAntInfo(Ljava/lang/String;)Z
    .registers 4

    .line 1349
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1352
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setAntInfo(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    throw p0
.end method

.method public setAntMode(I)V
    .registers 2

    .line 1017
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAntMode(I)V

    return-void
.end method

.method public setArdkPowerSaveMode(Z)V
    .registers 2

    .line 1130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setArdkPowerSaveMode(Z)V

    return-void
.end method

.method public setAutohotspotToastMessage(I)V
    .registers 2

    .line 912
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAutohotspotToastMessage(I)V

    return-void
.end method

.method public setConnectionAttemptInfo(IZLjava/lang/String;)V
    .registers 7

    .line 2071
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2072
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz v0, :cond_3f

    .line 2073
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config_key"

    .line 2074
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const-string v1, "calling_uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2076
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    .line 2077
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "calling_package"

    .line 2076
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const v1, 0x87022

    .line 2080
    iput v1, p3, Landroid/os/Message;->what:I

    .line 2081
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 2082
    iput p2, p3, Landroid/os/Message;->arg2:I

    .line 2083
    iput-object v0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2084
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p1, p3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessage(Landroid/os/Message;)V

    .line 2086
    :cond_3f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_46

    .line 2087
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectionAttemptInfo(Z)V

    :cond_46
    return-void
.end method

.method public setConnectivityCheckDisabled(Z)V
    .registers 2

    .line 1822
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1823
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_a

    .line 1824
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setConnectivityCheckDisabled(Z)V

    :cond_a
    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 5

    .line 1960
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1962
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1963
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda44;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;)V

    .line 1964
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1963
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setDtimInSuspendMode(I)V
    .registers 5

    .line 624
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 625
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "setDtimInSuspendMode uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    int-to-long v1, p1

    .line 627
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 628
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setDtimInSuspendMode(I)V

    return-void
.end method

.method public setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .registers 9

    const-string v0, "SemWifiService"

    .line 1752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1755
    :try_start_a
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->checkNetworkSettingsPermission(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1756
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceLocationPermissionInManifest(I)V

    .line 1758
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    .line 1759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEasySetupScanSettings for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_2f} :catch_32
    .catchall {:try_start_a .. :try_end_2f} :catchall_30

    goto :goto_4f

    :catchall_30
    move-exception p0

    goto :goto_53

    :catch_32
    move-exception p0

    .line 1762
    :try_start_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission violation - setEasySetupScanSettings not allowed for uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_30

    .line 1765
    :goto_4f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1766
    throw p0
.end method

.method public setFactoryMacAddress(Ljava/lang/String;)Z
    .registers 4

    .line 1327
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1330
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    throw p0
.end method

.method public setFccChannelBackoffEnabled(Ljava/lang/String;Z)V
    .registers 5

    .line 1407
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFrameburstInfo(Ljava/lang/String;)Z
    .registers 4

    .line 1360
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1363
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    throw p0
.end method

.method public setGripSensorMonitorEnabled(Z)V
    .registers 2

    .line 2059
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2060
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->setGripSensorMonitorEnabled(Z)V

    return-void
.end method

.method public setHotspotAntMode(I)V
    .registers 2

    .line 1022
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setHotspotAntMode(I)V

    return-void
.end method

.method public setIWCMockAction(I)V
    .registers 3

    .line 2146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2147
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz p0, :cond_e

    .line 2148
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setMockAction(I)V

    :cond_e
    return-void
.end method

.method public setIWCQTables(Ljava/lang/String;)V
    .registers 3

    .line 2130
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2131
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 2132
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setQtables(Ljava/lang/String;Z)V

    :cond_b
    return-void
.end method

.method public setImsCallEstablished(Z)V
    .registers 5

    .line 2160
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "setImsCallEstablished uid=% isEstablished=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 2162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 2163
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 2164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setImsCallEstablished(Z)V

    return-void
.end method

.method public setKeepConnection(ZZ)V
    .registers 4

    .line 1843
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1844
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz v0, :cond_a

    .line 1845
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelection(ZZ)V

    .line 1847
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 1848
    :goto_15
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendUserSelection(Z)V

    .line 1850
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    return-void
.end method

.method public setKeepConnectionAlways(Z)V
    .registers 3

    .line 1830
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz v0, :cond_a

    .line 1832
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelection(Z)V

    .line 1834
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz v0, :cond_11

    .line 1835
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendUserSelection(Z)V

    .line 1837
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->setAcceptUnvalidated(Z)V

    return-void
.end method

.method public setKeepConnectionBigData(I)V
    .registers 2

    .line 1855
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1856
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiConnectivityMonitor:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    if-eqz p0, :cond_a

    .line 1857
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setUserSelectionBigData(I)V

    :cond_a
    return-void
.end method

.method public setLatencyCritical(Ljava/lang/String;I)Z
    .registers 3

    .line 2210
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2211
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 897
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setMHSConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1054
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setMaxDtimInSuspendMode(Z)V
    .registers 5

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "setMaxDtimInSuspendMode uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 618
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 619
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setMaxDtimInSuspendMode(Z)V

    return-void
.end method

.method public setNCHOModeEnabled(Z)Z
    .registers 5

    .line 1997
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1998
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1999
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2000
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda34;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 2001
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2000
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setOptimizerMode(I)Z
    .registers 4

    .line 2190
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 2191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 2216
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2217
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setPowerSavingTime(I)V
    .registers 2

    .line 1032
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setPowerSavingTime(I)V

    return-void
.end method

.method public setProvisionSuccess(Z)Z
    .registers 2

    .line 982
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setProvisionSuccess(Z)Z

    move-result p0

    return p0
.end method

.method public setPsmInfo(Ljava/lang/String;)Z
    .registers 4

    .line 1338
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1341
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setPsmInfo(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    throw p0
.end method

.method public setRoamBand(I)Z
    .registers 5

    .line 1939
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1940
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1942
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 1943
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1942
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamDelta(I)Z
    .registers 5

    .line 1898
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1899
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1900
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda45;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanChannels([Ljava/lang/String;)Z
    .registers 5

    .line 2019
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2020
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2021
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2022
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda36;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;[Ljava/lang/String;)V

    .line 2023
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2022
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanEnabled(Z)Z
    .registers 5

    .line 2008
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2009
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2010
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2011
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda41;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 2012
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2011
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 5

    .line 1918
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1919
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1921
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 1922
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1921
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setRoamTrigger(I)Z
    .registers 5

    .line 1877
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1878
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1879
    invoke-static {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isGrantedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1880
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    .line 1881
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1880
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    .registers 2

    .line 967
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method public setTCRule(ZLjava/lang/String;I)V
    .registers 4

    .line 2290
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;->setTCRule(ZLjava/lang/String;I)V

    return-void
.end method

.method public setTdlsEnabled(Z)Z
    .registers 4

    .line 2356
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2357
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda40;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 2358
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2357
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setTestSettings(ILandroid/os/Bundle;)V
    .registers 6

    .line 1701
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->PRODUCT_DEV:Z

    if-eqz v0, :cond_3c

    .line 1704
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1707
    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mAutoTestModules:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;

    if-eqz p0, :cond_20

    .line 1711
    invoke-interface {p0, p2}, Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;->setTestSettings(Landroid/os/Bundle;)V
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_37

    .line 1713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1709
    :cond_20
    :try_start_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported auto test provider id: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 1713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    throw p0

    .line 1702
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unavailable test method (product dev only)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUploadModeEnabled(Z)Z
    .registers 4

    .line 1383
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 1384
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1387
    :try_start_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setUploadModeEnabled(Z)Z

    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 1389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1390
    throw p0
.end method

.method public setUserConfirmForSharingPassword(ZLjava/lang/String;)V
    .registers 3

    .line 1620
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1621
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz p0, :cond_a

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->setUserConfirm(ZLjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1305
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1308
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiDriverCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw p0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .registers 5

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "semSetVerboseLoggingEnabled uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 389
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 390
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableVerboseLoggingInternal(I)V

    return-void
.end method

.method public setWesModeEnabled(Z)Z
    .registers 4

    .line 2036
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2037
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    .line 2038
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2037
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setWifiApClientDataPaused(Ljava/lang/String;Z)V
    .registers 3

    .line 670
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWifiApClientMobileDataLimit(Ljava/lang/String;J)V
    .registers 4

    .line 660
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    return-void
.end method

.method public setWifiApClientTimeLimit(Ljava/lang/String;J)V
    .registers 4

    .line 665
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .registers 1

    .line 1190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApConfigurationToDefault()V

    return-void
.end method

.method public setWifiApDailyDataLimit(J)V
    .registers 3

    .line 699
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApDailyDataLimit(J)V

    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    .registers 3

    .line 902
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p0

    return p0
.end method

.method public setWifiApGuestModeEnabled(Z)V
    .registers 2

    .line 719
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestModeEnabled(Z)V

    return-void
.end method

.method public setWifiApGuestModeIsolationEnabled(Z)V
    .registers 2

    .line 729
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestModeIsolationEnabled(Z)V

    return-void
.end method

.method public setWifiApGuestPassword(Ljava/lang/String;)V
    .registers 2

    .line 704
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApGuestPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setWifiApIsolate(Z)V
    .registers 2

    .line 1069
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApIsolate(Z)V

    return-void
.end method

.method public setWifiApMacAclEnable(Z)V
    .registers 2

    .line 1098
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMacAclEnable(Z)V

    return-void
.end method

.method public setWifiApMacAclMode(I)V
    .registers 2

    .line 1088
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMacAclMode(I)V

    return-void
.end method

.method public setWifiApMaxClient(I)V
    .registers 2

    .line 1150
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMaxClient(I)V

    return-void
.end method

.method public setWifiApMaxClientToFramework(I)V
    .registers 2

    .line 957
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApMaxClientToFramework(I)V

    return-void
.end method

.method public setWifiApWarningActivityRunning(I)V
    .registers 2

    .line 942
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApWarningActivityRunning(I)V

    return-void
.end method

.method public setWifiApWpsPbc(Z)V
    .registers 2

    .line 1109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApWpsPbc(Z)V

    return-void
.end method

.method public setWifiDeveloperModeEnabled(Z)V
    .registers 5

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceAccessPermission()V

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    const-string v1, "setWifiDeveloperModeEnabled uid=% verbose=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 408
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(Z)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enableWifiDeveloperModeInternal(Z)V

    return-void
.end method

.method public setWifiSettingsForegroundState(I)V
    .registers 2

    .line 932
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSettingsForegroundState(I)V

    return-void
.end method

.method public setWifiSharingEnabled(Z)Z
    .registers 2

    .line 1037
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiSharingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setWifiUwbCoexEnabled(IZ)I
    .registers 5

    .line 2203
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;IZ)V

    const/4 p0, 0x2

    .line 2205
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2204
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->call(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public startIssueMonitoring(Landroid/os/Bundle;)V
    .registers 3

    .line 1538
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    if-eqz p1, :cond_25

    .line 1542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-nez v0, :cond_11

    const-string p0, "SemWifiService"

    const-string p1, "device doesn\'t support issue detector feature"

    .line 1543
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1546
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    if-nez v0, :cond_1d

    .line 1547
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueReporter()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    .line 1549
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiIssueReporter:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    if-eqz p0, :cond_24

    .line 1550
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;->startMonitoring(Landroid/os/Bundle;)V

    :cond_24
    return-void

    .line 1540
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setting is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startMcfClientMHSDiscovery(Z)I
    .registers 2

    .line 774
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->startMcfClientMHSDiscovery(Z)I

    move-result p0

    return p0
.end method

.method public startMcfMHSAdvertisement(Z)I
    .registers 2

    .line 779
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->startMcfMHSAdvertisement(Z)I

    move-result p0

    return p0
.end method

.method public startScan(Ljava/lang/String;)Z
    .registers 4

    .line 1741
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1744
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->startScan()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1747
    throw p0
.end method

.method public startTimerForWifiOffload()V
    .registers 1

    .line 2245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->startTimer()V

    return-void
.end method

.method public supportWifiAp5G()Z
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5G()Z

    move-result p0

    return p0
.end method

.method public supportWifiAp5GBasedOnCountry()Z
    .registers 1

    .line 876
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    move-result p0

    return p0
.end method

.method public supportWifiAp6GBasedOnCountry()Z
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    move-result p0

    return p0
.end method

.method public triggerBackoffRoutine(Z)V
    .registers 2

    .line 1395
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceFactoryTestPermission()V

    .line 1396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->triggerBackoffRoutine(Z)V

    return-void
.end method

.method public unRegisterWifiApDataUsageCallback(I)V
    .registers 2

    .line 650
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unRegisterWifiApDataUsageCallback(I)V

    return-void
.end method

.method public unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V
    .registers 2

    .line 1604
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceNetworkSettingsPermission()V

    .line 1605
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mProfileShare:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-eqz p0, :cond_a

    .line 1606
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->unregisterPasswordCallback()V

    :cond_a
    return-void
.end method

.method public unregisterWifiApSmartCallback(I)V
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->unregisterWifiApSmartCallback(I)V

    return-void
.end method

.method public updateGuiderFeature(Landroid/os/Bundle;)V
    .registers 2

    .line 1562
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceWifiDiagnosticsProviderPermission()V

    if-eqz p1, :cond_f

    .line 1566
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->setFeatureDefaults(Landroid/os/Bundle;)V

    return-void

    .line 1564
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateHostapdMacList(I)V
    .registers 2

    .line 1114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->updateHostapdMacList(I)V

    return-void
.end method

.method public updateIWCHintCard(J)V
    .registers 3

    .line 2138
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->enforceChangePermission()V

    .line 2139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mIWCMonitor:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    if-eqz p0, :cond_a

    .line 2140
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->updateHintCard(J)V

    :cond_a
    return-void
.end method

.method public wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;
    .registers 1

    .line 754
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wifiApBleClientRole(Z)Z
    .registers 2

    .line 804
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleClientRole(Z)Z

    move-result p0

    return p0
.end method

.method public wifiApBleD2DClientRole(Z)Z
    .registers 2

    .line 845
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleD2DClientRole(Z)Z

    move-result p0

    return p0
.end method

.method public wifiApBleD2DMhsRole(Z)Z
    .registers 2

    .line 850
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleD2DMhsRole(Z)Z

    move-result p0

    return p0
.end method

.method public wifiApBleMhsRole(Z)Z
    .registers 2

    .line 809
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApBleMhsRole(Z)Z

    move-result p0

    return p0
.end method

.method public wifiApDisassocSta(Ljava/lang/String;)V
    .registers 2

    .line 1145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApDisassocSta(Ljava/lang/String;)V

    return-void
.end method

.method public wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V
    .registers 2

    .line 759
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    return-void
.end method
