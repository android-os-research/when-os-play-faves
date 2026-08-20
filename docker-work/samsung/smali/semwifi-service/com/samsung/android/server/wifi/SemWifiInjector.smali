.class public Lcom/samsung/android/server/wifi/SemWifiInjector;
.super Ljava/lang/Object;
.source "SemWifiInjector.java"


# static fields
.field private static sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;


# instance fields
.field private mApeController:Lcom/samsung/android/server/wifi/SemApeController;

.field private mApeService:Lcom/samsung/android/server/wifi/SemApeService;

.field private final mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

.field private mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private final mAutoWifiLocalLog:Landroid/util/LocalLog;

.field private mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

.field private final mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

.field private final mContext:Landroid/content/Context;

.field private mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

.field private mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private final mLinkQualityMonitorHandlerThread:Landroid/os/HandlerThread;

.field private final mLnaControlHandlerThread:Landroid/os/HandlerThread;

.field private final mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

.field private final mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

.field private final mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

.field private final mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

.field private final mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

.field private final mScheduledPmHandlerThread:Landroid/os/HandlerThread;

.field private final mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

.field private final mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

.field private mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

.field private mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

.field private mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

.field private mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

.field private final mServiceDetectionHandlerThread:Landroid/os/HandlerThread;

.field private final mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

.field private final mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

.field private final mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

.field private final mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

.field private final mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

.field private final mSwitchBoardService:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

.field private final mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

.field private final mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

.field private final mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

.field private mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

.field private mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

.field private mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

.field private mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

.field private mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

.field private mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

.field private final mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

.field private final mWifiApHandler:Landroid/os/Handler;

.field private final mWifiApHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

.field private final mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApSessionDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

.field private mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

.field private mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

.field private mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

.field private mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

.field private mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

.field private mWifiApSmartLocalLog:Landroid/util/LocalLog;

.field private mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private final mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

.field private final mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

.field private final mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

.field private final mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

.field private mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

.field private final mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

.field private final mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

.field private final mWifiHandler:Landroid/os/Handler;

.field private final mWifiHandlerThread:Landroid/os/HandlerThread;

.field private mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

.field private final mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

.field private final mWifiLinkInfoCollectorHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

.field private final mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

.field private final mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

.field private final mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

.field private final mWifiOptimizerHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

.field private final mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field private mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

.field private mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

.field private final mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

.field private final mWifiTwtControlHandlerThread:Landroid/os/HandlerThread;

.field private final mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 32

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v12, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {v12}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    iput-object v12, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    if-eqz v11, :cond_3d0

    .line 223
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    if-nez v0, :cond_3c8

    .line 227
    sput-object v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 230
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemAsyncChannelHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 232
    new-instance v13, Landroid/os/HandlerThread;

    const-string v0, "SemWifiHandlerThread"

    invoke-direct {v13, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v13, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 233
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 234
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    .line 235
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v15, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandler:Landroid/os/Handler;

    .line 236
    new-instance v9, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    invoke-direct {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    iput-object v9, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 237
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiApHandlerThreads"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApHandlerThread:Landroid/os/HandlerThread;

    .line 238
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 239
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 240
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApHandler:Landroid/os/Handler;

    .line 242
    new-instance v7, Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-direct {v7}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;-><init>()V

    iput-object v7, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 243
    iput-object v11, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 244
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiManagerProxyHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 248
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    invoke-direct {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;-><init>(Landroid/os/Handler;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v16

    .line 253
    new-instance v5, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v15}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v4, Lcom/samsung/android/server/wifi/util/FeatureUtil;

    invoke-direct {v4, v7, v6}, Lcom/samsung/android/server/wifi/util/FeatureUtil;-><init>(Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/net/wifi/WifiManager;)V

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v17, v4

    move-object v4, v6

    move-object/from16 v18, v14

    move-object v14, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v13

    move-object v13, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;-><init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v14, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 256
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-direct {v7, v11, v15, v14, v12}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/util/SemClock;)V

    iput-object v7, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 258
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;-><init>()V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 259
    new-instance v6, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    invoke-direct {v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;-><init>()V

    iput-object v6, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 260
    new-instance v5, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-direct {v5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;-><init>()V

    .line 261
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-direct {v0, v5, v15}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;Landroid/os/Handler;)V

    .line 262
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;

    invoke-direct {v1, v11, v6, v13, v15}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V

    .line 264
    new-instance v4, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-direct {v4, v0, v1, v6}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V

    iput-object v4, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 265
    new-instance v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v20, v12

    move-object v12, v3

    move-object v3, v9

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v23, v6

    move-object v6, v14

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v8, v16

    move-object/from16 v26, v15

    move-object v15, v9

    move-object/from16 v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v12, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 268
    new-instance v9, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    move-object/from16 v12, v21

    invoke-direct {v9, v12}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;-><init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;)V

    iput-object v9, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 269
    new-instance v0, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;-><init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 270
    new-instance v0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    .line 272
    new-instance v1, Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    invoke-direct {v1, v11, v0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 273
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 274
    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v11, v1, v12, v14}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 275
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {v0, v11, v12, v10, v13}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 277
    new-instance v8, Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-object/from16 v6, v18

    invoke-direct {v8, v11, v6, v15, v10}, Lcom/samsung/android/server/wifi/SemClientModeManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v8, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 280
    new-instance v0, Landroid/util/LocalLog;

    const/16 v15, 0x64

    invoke-direct {v0, v15}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiLocalLog:Landroid/util/LocalLog;

    .line 281
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 282
    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 283
    new-instance v7, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    move-object/from16 v5, v26

    invoke-direct {v7, v1, v0, v11, v5}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 286
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-direct {v4, v11, v6, v10, v13}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    iput-object v4, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 287
    invoke-virtual {v8, v4}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiServiceDetectionHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mServiceDetectionHandlerThread:Landroid/os/HandlerThread;

    .line 290
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 291
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-direct {v3, v10, v4, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;)V

    iput-object v3, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 293
    invoke-virtual {v8, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 295
    new-instance v2, Landroid/os/HandlerThread;

    const-string v0, "SemWifiLnaControlHandlerThread"

    invoke-direct {v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLnaControlHandlerThread:Landroid/os/HandlerThread;

    .line 296
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 297
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    move-object v0, v1

    move-object v15, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move-object v2, v12

    move-object/from16 v26, v3

    move-object/from16 v3, v17

    move-object/from16 v27, v4

    move-object/from16 v4, p0

    move-object/from16 v28, v9

    move-object v9, v5

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V

    iput-object v15, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 298
    invoke-virtual {v8, v15}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 300
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiLinkQualityMonitorHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mLinkQualityMonitorHandlerThread:Landroid/os/HandlerThread;

    .line 301
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 302
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-object/from16 v2, v17

    invoke-direct {v1, v11, v10, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/net/wifi/WifiManager;Landroid/os/HandlerThread;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 303
    invoke-virtual {v8, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 305
    new-instance v15, Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v6

    move-object v4, v12

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemCellularStateManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;)V

    iput-object v15, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 307
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "SemWifiOptimizerThread"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizerHandlerThread:Landroid/os/HandlerThread;

    .line 308
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 309
    new-instance v15, Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v6

    move-object v0, v15

    move-object v2, v12

    move-object/from16 v3, v24

    move-object/from16 v4, p0

    move-object/from16 v5, v27

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v26

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v15, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 311
    invoke-virtual {v9, v15}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 313
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiTwtControlHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControlHandlerThread:Landroid/os/HandlerThread;

    .line 314
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 315
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    invoke-direct {v1, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;-><init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiScheduledPmControlHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmHandlerThread:Landroid/os/HandlerThread;

    .line 317
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    invoke-direct {v1, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;-><init>(Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    .line 319
    new-instance v6, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object/from16 v4, v27

    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v6, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 321
    invoke-virtual {v9, v6}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 322
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    .line 323
    invoke-virtual {v9, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 324
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    invoke-direct {v0, v11, v14, v12, v10}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 325
    new-instance v0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1, v13, v14}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 327
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    invoke-direct {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 329
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiLinkInfoCollectorHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollectorHandlerThread:Landroid/os/HandlerThread;

    .line 330
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 331
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-direct {v1, v11, v14, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 333
    invoke-virtual {v9, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->registerClientModeStateListener(Lcom/samsung/android/server/wifi/ClientModeStateListener;)V

    .line 335
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 336
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    .line 337
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v11, v1, v14}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 338
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-object/from16 v1, v25

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 339
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;-><init>()V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    .line 340
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-direct {v0, v11, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 341
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    .line 342
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    invoke-direct {v0, v11, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 343
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {v0, v11, v10, v13}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 344
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    .line 345
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-direct {v0, v11, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    .line 346
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    invoke-direct {v0, v11, v13}, Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    .line 347
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    invoke-direct {v0, v11, v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    .line 348
    new-instance v0, Landroid/util/LocalLog;

    .line 349
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_2c6

    const/16 v1, 0x100

    goto :goto_2c8

    :cond_2c6
    const/16 v1, 0x400

    :goto_2c8
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    .line 350
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 352
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;-><init>()V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    .line 353
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;

    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V

    .line 354
    new-instance v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;-><init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 355
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 357
    new-instance v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    move-object/from16 v15, v20

    invoke-direct {v1, v11, v12, v15, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/HandlerThread;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSwitchBoardService:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 358
    invoke-virtual {v1, v9}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->setClientModeManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 359
    new-instance v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Looper;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    .line 360
    new-instance v0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    move-object/from16 v1, v28

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 361
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    invoke-direct {v0, v11}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 363
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiSilentRoamingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 365
    new-instance v8, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 366
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v7, Landroid/util/LocalLog;

    .line 368
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_33b

    const/16 v0, 0x64

    goto :goto_33d

    :cond_33b
    const/16 v0, 0x12c

    :goto_33d
    invoke-direct {v7, v0}, Landroid/util/LocalLog;-><init>(I)V

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v24

    move-object/from16 v17, v7

    move-object/from16 v7, p0

    move-object v11, v8

    move-object v8, v13

    move-object/from16 v29, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V

    iput-object v11, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 370
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiEasySetupThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 372
    new-instance v7, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 373
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V

    iput-object v7, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 375
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-direct {v0, v10, v12, v15}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    const-string v0, "ro.product.vendor.device"

    const/4 v1, 0x0

    .line 376
    invoke-virtual {v13, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result v2

    if-eqz v2, :cond_3b4

    if-eqz v0, :cond_3b4

    const-string v2, "p3q"

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b4

    const-string v2, "p3s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b4

    .line 379
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v10}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 380
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StrongRssiRoamingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 382
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-direct {v1, v2, v10, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V

    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    goto :goto_3ba

    :cond_3b4
    move-object/from16 v2, p1

    .line 384
    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 385
    iput-object v1, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 396
    :goto_3ba
    new-instance v0, Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/SemQboxController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    iput-object v0, v10, Lcom/samsung/android/server/wifi/SemWifiInjector;->mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

    return-void

    .line 224
    :cond_3c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SemWifiInjector was already created, use getInstance instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_3d0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SemWifiInjector should not be initialized with a null Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 2

    .line 406
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiInjector;->sWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    if-eqz v0, :cond_5

    return-object v0

    .line 407
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to retrieve a SemWifiInjector instance before constructor was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->enableVerboseLogging(I)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->enableVerboseLogging(I)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->enableVerboseLogging(I)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->enableVerboseLogging(I)V

    .line 422
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->enableVerboseLogging(I)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->enableVerboseLogging(I)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    if-eqz v0, :cond_25

    .line 426
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->enableVerboseLogging(I)V

    .line 428
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    if-eqz v0, :cond_2c

    .line 429
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->enableVerboseLogging(I)V

    .line 431
    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    if-eqz p0, :cond_33

    .line 432
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->enableVerboseLogging(I)V

    :cond_33
    return-void
.end method

.method public getApeController()Lcom/samsung/android/server/wifi/SemApeController;
    .registers 1

    .line 863
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeController:Lcom/samsung/android/server/wifi/SemApeController;

    return-object p0
.end method

.method public getApeService()Lcom/samsung/android/server/wifi/SemApeService;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mApeService:Lcom/samsung/android/server/wifi/SemApeService;

    return-object p0
.end method

.method public getAsyncChannelHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    .line 441
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAsyncChannelHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getAutoTestHelper()Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    if-nez v0, :cond_f

    .line 838
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;-><init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    .line 840
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoTestHelper:Lcom/samsung/android/server/wifi/diagnostics/WifiAutoTestHelper;

    return-object p0
.end method

.method public getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
    .registers 9

    .line 826
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    if-nez v0, :cond_21

    .line 827
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoWifi"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 829
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiLocalLog:Landroid/util/LocalLog;

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Landroid/util/LocalLog;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 832
    :cond_21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    return-object p0
.end method

.method public getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
    .registers 1

    .line 822
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    return-object p0
.end method

.method public getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
    .registers 8

    .line 769
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    if-nez v0, :cond_1a

    .line 770
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 773
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mBigDataLogManager:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    return-object p0
.end method

.method public getCellularStateManager()Lcom/samsung/android/server/wifi/SemCellularStateManager;
    .registers 1

    .line 907
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCellularStateManager:Lcom/samsung/android/server/wifi/SemCellularStateManager;

    return-object p0
.end method

.method getClientModeManager()Lcom/samsung/android/server/wifi/SemClientModeManager;
    .registers 1

    .line 456
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    return-object p0
.end method

.method public getClock()Lcom/samsung/android/server/wifi/util/SemClock;
    .registers 1

    .line 469
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    return-object p0
.end method

.method public getConnectivityLogger()Lcom/samsung/android/server/wifi/SemConnectivityLogger;
    .registers 1

    .line 855
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mConnectivityLogger:Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    return-object p0
.end method

.method public getContinuityService()Lcom/samsung/android/server/wifi/share/WifiContinuityService;
    .registers 9

    .line 923
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    if-nez v0, :cond_1c

    .line 924
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 925
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 928
    :cond_1c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiContinuityService:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    return-object p0
.end method

.method public getCountryCodeProperty()Lcom/samsung/android/server/wifi/util/CountryCodeProperty;
    .registers 4

    .line 982
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    if-nez v0, :cond_f

    .line 983
    new-instance v0, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/CountryCodeProperty;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    .line 985
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mCountryCodeProperty:Lcom/samsung/android/server/wifi/util/CountryCodeProperty;

    return-object p0
.end method

.method public getDriverFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;
    .registers 1

    .line 903
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFeatureProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-object p0
.end method

.method public getHostapdHal()Lcom/samsung/android/server/wifi/ap/SemHostapdHal;
    .registers 1

    .line 635
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mHostapdHal:Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    return-object p0
.end method

.method public getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mClientModeManager:Lcom/samsung/android/server/wifi/SemClientModeManager;

    return-object p0
.end method

.method public getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;
    .registers 4

    .line 777
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    if-nez v0, :cond_f

    .line 778
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 780
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    return-object p0
.end method

.method public getMobileWipsFrameworkService()Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;
    .registers 1

    .line 891
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mMobileWipsFrameworkService:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    return-object p0
.end method

.method public getPickerDialogController()Lcom/samsung/android/server/wifi/ui/PickerDialogController;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mPickerDialogController:Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    return-object p0
.end method

.method public getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;
    .registers 1

    .line 871
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mQboxController:Lcom/samsung/android/server/wifi/SemQboxController;

    return-object p0
.end method

.method public getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;
    .registers 1

    .line 911
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    return-object p0
.end method

.method public getRoamingProcessor()Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
    .registers 1

    .line 915
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    return-object p0
.end method

.method public getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 1

    .line 506
    invoke-static {}, Lcom/samsung/android/server/wifi/util/ScanPool;->getInstance()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object p0

    return-object p0
.end method

.method public getSemSoftApConfiguration()Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;
    .registers 1

    .line 650
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemSoftApConfiguration:Lcom/samsung/android/server/wifi/ap/SemSoftApConfiguration;

    return-object p0
.end method

.method public getSemThroughputPredictor()Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;
    .registers 1

    .line 592
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 740
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 742
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotBleUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotMHSLcdOnOff()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;
    .registers 3

    .line 746
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 747
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    .line 749
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotMHSLcdOnOff:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;
    .registers 4

    .line 732
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 733
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 735
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotService:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    return-object p0
.end method

.method public getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 754
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    .line 756
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiApAdvancedAutohotspotTraffic:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    return-object p0
.end method

.method public getSemWifiBackupRestore()Lcom/samsung/android/server/wifi/SemWifiBackupRestore;
    .registers 3

    .line 941
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    if-nez v0, :cond_d

    .line 942
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    .line 944
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSemWifiBackupRestore:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    return-object p0
.end method

.method public getSilentRoamingManager()Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
    .registers 1

    .line 596
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSilentRoamingManager:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    return-object p0
.end method

.method public getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftApManager:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    return-object p0
.end method

.method public getSoftapUtils()Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;
    .registers 1

    .line 620
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSoftapUtils:Lcom/samsung/android/server/wifi/ap/SemSoftapUtils;

    return-object p0
.end method

.method public getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mStrongRssiRoaming:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    return-object p0
.end method

.method public getSupportedFeatureLogger()Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
    .registers 1

    .line 859
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mSupportedFeatureLogger:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    return-object p0
.end method

.method public getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
    .registers 1

    .line 647
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApBroadcastReceiver:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    return-object p0
.end method

.method public getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;
    .registers 1

    .line 623
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApChipInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    return-object p0
.end method

.method public getWifiApClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;
    .registers 1

    .line 641
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    return-object p0
.end method

.method public getWifiApConfigStore()Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
    .registers 5

    .line 663
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    if-nez v0, :cond_11

    .line 664
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 666
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApConfigStore:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    return-object p0
.end method

.method public getWifiApContinuityAdapter()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 948
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    .line 950
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityAdapter:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    return-object p0
.end method

.method public getWifiApContinuityClient()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;
    .registers 3

    .line 961
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFClientAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 962
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    .line 964
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClient:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClient;

    return-object p0
.end method

.method public getWifiApContinuityClientSession()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
    .registers 3

    .line 975
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFClientAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 976
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 978
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityClientSession:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    return-object p0
.end method

.method public getWifiApContinuityMHS()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;
    .registers 3

    .line 954
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 955
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    .line 957
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityMHS:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityMHS;

    return-object p0
.end method

.method public getWifiApContinuityUtil()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;
    .registers 3

    .line 968
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMCFAutohotspotSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 969
    new-instance v0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    .line 971
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApContinuityUtil:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    return-object p0
.end method

.method public getWifiApDevicePolicyManager()Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
    .registers 1

    .line 653
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApDevicePolicyManager:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;

    return-object p0
.end method

.method public getWifiApMonitor()Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;
    .registers 1

    .line 638
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApMonitor:Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;

    return-object p0
.end method

.method public getWifiApPowerSaveImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;
    .registers 1

    .line 631
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApPowerSaveImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl;

    return-object p0
.end method

.method public getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    return-object p0
.end method

.method public getWifiApSessionDataUsage()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSessionDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isSemWifiApDataUsageSupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 990
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSessionDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    .line 992
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSessionDataUsage:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    return-object p0
.end method

.method public getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
    .registers 6

    .line 704
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    if-nez v0, :cond_13

    .line 705
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    .line 708
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartBleScanner:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    return-object p0
.end method

.method public getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
    .registers 6

    .line 688
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    if-nez v0, :cond_13

    .line 689
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 692
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    return-object p0
.end method

.method public getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;
    .registers 5

    .line 719
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    if-nez v0, :cond_11

    .line 720
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 722
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    return-object p0
.end method

.method public getWifiApSmartD2DGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
    .registers 5

    .line 726
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    if-nez v0, :cond_11

    .line 727
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 729
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    return-object p0
.end method

.method public getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;
    .registers 5

    .line 712
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    if-nez v0, :cond_11

    .line 713
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 715
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartD2DMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    return-object p0
.end method

.method public getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
    .registers 6

    .line 696
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    if-nez v0, :cond_13

    .line 697
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 700
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    return-object p0
.end method

.method public getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
    .registers 6

    .line 656
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    if-nez v0, :cond_15

    .line 657
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 660
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    return-object p0
.end method

.method public getWifiApSmartLocalLog()Landroid/util/LocalLog;
    .registers 1

    .line 644
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method public getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
    .registers 5

    .line 681
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    if-nez v0, :cond_11

    .line 682
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 684
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    return-object p0
.end method

.method public getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .registers 5

    .line 674
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    if-nez v0, :cond_11

    .line 675
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartLocalLog:Landroid/util/LocalLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 677
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    return-object p0
.end method

.method public getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;
    .registers 1

    .line 612
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTetheredClientInfo:Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    return-object p0
.end method

.method public getWifiApTimeOutImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
    .registers 1

    .line 627
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTimeOutImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    return-object p0
.end method

.method public getWifiApTrafficPoller()Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
    .registers 1

    .line 669
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiApTrafficPoller:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    return-object p0
.end method

.method public getWifiBackOffController()Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
    .registers 1

    .line 761
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiBackOffController:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    return-object p0
.end method

.method public getWifiCarrierInfoManager()Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .registers 1

    .line 540
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    return-object p0
.end method

.method public getWifiCoexManager()Lcom/samsung/android/server/wifi/SemWifiCoexManager;
    .registers 1

    .line 932
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCoexManager:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    return-object p0
.end method

.method public getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .registers 1

    .line 465
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    return-object p0
.end method

.method public getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
    .registers 1

    .line 544
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiControlMonitor:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    return-object p0
.end method

.method public getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;
    .registers 1

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    return-object p0
.end method

.method public getWifiEasySetupManager()Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiEasySetupManager:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    return-object p0
.end method

.method public getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .registers 1

    .line 818
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    return-object p0
.end method

.method public getWifiGuiderManagementService()Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    if-nez v1, :cond_23

    if-eqz v0, :cond_23

    .line 809
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WifiGuiderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 811
    new-instance v2, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 812
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    .line 814
    :cond_23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiGuiderManagementService:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService;

    return-object p0
.end method

.method public getWifiHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getWifiIssueDetector()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 788
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-nez v0, :cond_29

    .line 789
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiIssueDetector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 791
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 792
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getBigDataLogManager()Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    .line 794
    :cond_29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    return-object p0
.end method

.method public getWifiIssueReporter()Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiIssueDetector:Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;

    if-eqz v0, :cond_11

    .line 800
    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/SemClock;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssueReporter;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/diagnostics/WifiIssueDetector;Lcom/samsung/android/server/wifi/util/SemClock;)V

    return-object v1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
    .registers 1

    .line 576
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkInfoCollector:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    return-object p0
.end method

.method public getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
    .registers 1

    .line 564
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    return-object p0
.end method

.method public getWifiLnaControl()Lcom/samsung/android/server/wifi/SemWifiLnaControl;
    .registers 1

    .line 560
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiLnaControl:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    return-object p0
.end method

.method public getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-object p0
.end method

.method public getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-object p0
.end method

.method public getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
    .registers 1

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    return-object p0
.end method

.method public getWifiNl80211Util()Lcom/samsung/android/server/wifi/util/WifiNl80211Util;
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    if-nez v0, :cond_d

    .line 515
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    .line 517
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiCondUtil:Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    return-object p0
.end method

.method public getWifiNotificationController()Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    if-nez v0, :cond_13

    .line 533
    new-instance v0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    .line 536
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiNotificationController:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    return-object p0
.end method

.method public getWifiOffloadController()Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;
    .registers 1

    .line 937
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOffloadController:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    return-object p0
.end method

.method public getWifiOptimizer()Lcom/samsung/android/server/wifi/SemWifiOptimizer;
    .registers 1

    .line 572
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiOptimizer:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    return-object p0
.end method

.method public getWifiP2pMonitor()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-object p0
.end method

.method public getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;
    .registers 1

    .line 899
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiP2pNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    return-object p0
.end method

.method public getWifiProfileAndQoSProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    if-nez v0, :cond_1b

    .line 846
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiProfileShare"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 848
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 851
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiProfileAndQoSProvider:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    return-object p0
.end method

.method public getWifiSafeModeObserver()Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;
    .registers 6

    .line 875
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    if-nez v0, :cond_1a

    .line 876
    new-instance v0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 877
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    .line 879
    :cond_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiSafeModeObserver:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    return-object p0
.end method

.method public declared-synchronized getWifiScanner()Landroid/net/wifi/WifiScanner;
    .registers 3

    monitor-enter p0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_11

    .line 479
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 481
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScanner:Landroid/net/wifi/WifiScanner;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
    .registers 1

    .line 584
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mScheduledPmControl:Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    return-object p0
.end method

.method public getWifiScpmMonitor()Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    if-nez v0, :cond_18

    .line 884
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 885
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    .line 887
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiScpmMonitor:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    return-object p0
.end method

.method public getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
    .registers 1

    .line 556
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    return-object p0
.end method

.method public getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;
    .registers 1

    .line 502
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    return-object p0
.end method

.method public getWifiTrafficControl()Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
    .registers 1

    .line 568
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficControl:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    return-object p0
.end method

.method public getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .registers 1

    .line 552
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    return-object p0
.end method

.method public getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtControl:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    return-object p0
.end method

.method public getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
    .registers 1

    .line 588
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiTwtMonitor:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    return-object p0
.end method

.method public getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;
    .registers 1

    .line 604
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    return-object p0
.end method

.method public getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;
    .registers 1

    .line 524
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    return-object p0
.end method

.method public makeClientModeImpl(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;
    .registers 10

    .line 460
    new-instance v7, Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiHandlerThread:Landroid/os/HandlerThread;

    .line 461
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mWifiThreadRunner:Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-object v0, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    return-object v7
.end method

.method public makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .registers 2

    .line 490
    new-instance p0, Lcom/samsung/android/server/wifi/util/SemLogcatLog;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/SemLogcatLog;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public makeTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    .line 765
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiInjector;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method
