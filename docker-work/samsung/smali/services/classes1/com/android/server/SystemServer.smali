.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$SystemServerDumper;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field public static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field public static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field public static final AD_SERVICES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adservices.AdServicesManagerService$Lifecycle"

.field public static final ALARM_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.alarm.AlarmManagerService"

.field public static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field public static final APPSEARCH_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.appsearch.AppSearchModule$Lifecycle"

.field public static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field public static final APP_COMPAT_OVERRIDES_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

.field public static final APP_HIBERNATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.apphibernation.AppHibernationService"

.field public static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field public static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field public static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field public static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field public static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field public static final BLUETOOTH_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.btservices/javalib/service-bluetooth.jar"

.field public static final BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.bluetooth.BluetoothService"

.field public static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field public static final CLOUDSEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cloudsearch.CloudSearchManagerService"

.field public static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field public static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field public static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field public static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field public static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field public static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field public static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field public static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field public static final DEFAULT_SYSTEM_THEME:I = 0x103043f

.field public static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field public static final EXTENDED_ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ExtendedEthernetService"

.field public static final GAME_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.app.GameManagerService$Lifecycle"

.field public static final GNSS_TIME_UPDATE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

.field public static final HEALTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.healthservices.HealthService"

.field public static final HEAP_DUMP_PATH:Ljava/io/File;

.field public static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field public static final IP_CONNECTIVITY_METRICS_CLASS:Ljava/lang/String; = "com.android.server.connectivity.IpConnectivityMetrics"

.field public static final ISOLATED_COMPILATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compos.IsolatedCompilationService"

.field public static final ISRB_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.isrb.IsrbManagerService"

.field public static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field public static final LOCATION_TIME_ZONE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

.field public static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field public static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field public static final MAX_HEAP_DUMPS:I = 0x2

.field public static final MEDIA_COMMUNICATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaCommunicationService"

.field public static final MEDIA_RESOURCE_MONITOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaResourceMonitorService"

.field public static final MEDIA_SESSION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaSessionService"

.field public static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field public static final MUSIC_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.musicrecognition.MusicRecognitionManagerService"

.field public static final NETWORK_STATS_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.NetworkStatsServiceInitializer"

.field public static final PACM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.PACMService"

.field public static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field public static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field public static final REBOOT_READINESS_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

.field public static final RESOURCE_ECONOMY_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.tare.InternalResourceService"

.field public static final ROLE_SERVICE_CLASS:Ljava/lang/String; = "com.android.role.RoleService"

.field public static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field public static final SAFETY_CENTER_SERVICE_CLASS:Ljava/lang/String; = "com.android.safetycenter.SafetyCenterService"

.field public static final SCHEDULING_APEX_PATH:Ljava/lang/String; = "/apex/com.android.scheduling/javalib/service-scheduling.jar"

.field public static final SDK_SANDBOX_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

.field public static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field public static final SEARCH_UI_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.searchui.SearchUiManagerService"

.field public static final SEM_PRIVILEGE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.privilege.SemPrivilegeManagerService"

.field public static final SEM_WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.aware.SemWifiAwareService"

.field public static final SEM_WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

.field public static final SEM_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.SemWifiService"

.field public static final SEPUNION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sepunion.SemUnionMainService"

.field public static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static final SMARTSPACE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.smartspace.SmartspaceManagerService"

.field public static final SPEECH_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.speech.SpeechRecognitionManagerService"

.field public static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field public static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field public static final STATS_BOOTSTRAP_ATOM_SERVICE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

.field public static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field public static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field public static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field public static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field public static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field public static final SYSPROP_FDTRACK_ABORT_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_abort_threshold"

.field public static final SYSPROP_FDTRACK_ENABLE_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_enable_threshold"

.field public static final SYSPROP_FDTRACK_INTERVAL:Ljava/lang/String; = "persist.sys.debug.fdtrack_interval"

.field public static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field public static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field public static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field public static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field public static final TAG:Ljava/lang/String; = "SystemServer"

.field public static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field public static final TEXT_TO_SPEECH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.texttospeech.TextToSpeechManagerService"

.field public static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field public static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field public static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field public static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field public static final TRANSLATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.translation.TranslationManagerService"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field public static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field public static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field public static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field public static final VIRTUAL_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.virtual.VirtualDeviceManagerService"

.field public static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field public static final WALLPAPER_EFFECTS_GENERATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

.field public static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field public static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field public static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.displayoffload.DisplayOffloadService"

.field public static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field public static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field public static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field public static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field public static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field public static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field public static final WIFI_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.wifi/javalib/service-wifi.jar"

.field public static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field public static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field public static final WIFI_RTT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.rtt.RttService"

.field public static final WIFI_SCANNING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.scanner.WifiScanningService"

.field public static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field public static final sMaxBinderThreads:I = 0x1f

.field public static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field public knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field public mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field public mDualAppService:Lcom/android/server/DualAppManagerService;

.field public final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field public mEntropyMixer:Lcom/android/server/EntropyMixer;

.field public mEpicManagerService:Landroid/os/epic/EpicManagerService;

.field public final mFactoryTestMode:I

.field public mFirstBoot:Z

.field public mIncrementalServiceHandle:J

.field public mLedBackCoverService:Lcom/android/server/ledcover/LedBackCoverService;

.field public mLedCoverAppService:Lcom/android/server/ledcoverapp/LedCoverAppService;

.field public mOnlyCore:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field public mProfilerSnapshotTimer:Ljava/util/Timer;

.field public final mRuntimeRestart:Z

.field public final mRuntimeStartElapsedTime:J

.field public final mRuntimeStartUptime:J

.field public mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

.field public mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

.field public mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

.field public final mStartCount:I

.field public mSystemContext:Landroid/content/Context;

.field public mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field public mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

.field public mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field public mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public static synthetic $r8$lambda$7VyBGkQcJLZ7yagkzNfFqfz29w4(Landroid/os/IBinder;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8zxOYx-QEMffbYJtoGp6Ub2KG-8(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C6uHt-PDp4NvE_Nxo5S0JPZAZxc()V
    .registers 0

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$startOtherServices$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GdFcqWB8sCTzm0hNmQqV36Q1mT8()V
    .registers 0

    invoke-static {}, Lcom/android/server/SystemServer;->lambda$startOtherServices$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$aO1yxyj8N2Uvxez_SSPRStpWZDY(Lcom/android/server/SystemServer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemServer;->lambda$startOtherServices$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nG7XwJlwV2eNiP3C-iTim-mbKmM(Lcom/android/server/SystemServer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$v-psNxxn04XSmew8NxqdyfW0MfY(III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/SystemServer;->lambda$spawnFdLeakCheckThread$0(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$yywHzndPMju08ytjpQW_8ms478k(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V
    .registers 22

    invoke-direct/range {p0 .. p21}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 874
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 520
    iput-object v0, p0, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const-wide/16 v1, 0x0

    .line 782
    iput-wide v1, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 813
    iput-object v0, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    .line 817
    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 819
    new-instance v1, Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 994
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    .line 999
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 1000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 1001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v1, v5

    move-wide v3, v7

    .line 1002
    invoke-static/range {v1 .. v8}, Landroid/os/Process;->setStartTimes(JJJJ)V

    const-string/jumbo v0, "sys.boot_completed"

    .line 1009
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method public static dumpHprof()V
    .registers 8

    .line 886
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 887
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_2c

    aget-object v5, v1, v4

    .line 888
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_29

    .line 891
    :cond_19
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_29

    .line 894
    :cond_26
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 896
    :cond_2c
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x2

    const-string v4, "System"

    if-lt v1, v2, :cond_69

    :goto_35
    const/4 v1, 0x1

    if-ge v3, v1, :cond_3e

    .line 899
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 901
    :cond_3e
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 902
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_42

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clean up hprof "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 909
    :cond_69
    :try_start_69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/heapdump/fdtrack-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".hprof"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    move-exception v0

    const-string v1, "Failed to dump fdtrack hprof"

    .line 913
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9a
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method public static getMaxFd()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/dev/null"

    .line 854
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_11} :catch_1e
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    .line 861
    :try_start_11
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v0

    .line 864
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1c
    move-exception v1

    goto :goto_46

    :catch_1e
    move-exception v1

    :try_start_1f
    const-string v2, "System"

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get maximum fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    if-eqz v0, :cond_42

    .line 861
    :try_start_37
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_42

    :catch_3b
    move-exception v0

    .line 864
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    :goto_42
    const v0, 0x7fffffff

    return v0

    :goto_46
    if-eqz v0, :cond_53

    .line 861
    :try_start_48
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4b
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_53

    :catch_4c
    move-exception v0

    .line 864
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    :cond_53
    :goto_53
    throw v1
.end method

.method public static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 11

    .line 4996
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const/16 p2, 0x3e8

    .line 4998
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v2, "system_server"

    iget-object v5, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const/4 v3, -0x1

    move v1, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "system_server"

    const/16 v0, 0x50

    const/16 v1, 0x3e8

    const/4 v5, 0x3

    move-object v2, p1

    move v4, p0

    .line 5001
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 5004
    const-class p0, Lcom/android/server/SystemServer;

    monitor-enter p0

    .line 5005
    :try_start_25
    sget-object p2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez p2, :cond_30

    .line 5006
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    sput-object p2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 5008
    :cond_30
    sget-object p2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance p4, Landroid/util/Pair;

    invoke-direct {p4, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5009
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method public static isValidTimeZoneId(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 1352
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1353
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 930
    :catch_3
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    if-le v3, p0, :cond_13

    .line 933
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 934
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 935
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    :cond_13
    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "System"

    const/16 v7, 0x16c

    if-le v3, p0, :cond_2c

    if-nez v0, :cond_2c

    const-string v0, "fdtrack enable threshold reached, enabling"

    .line 939
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {v7, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    const-string v0, "fdtrack"

    .line 944
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move v0, v4

    goto :goto_51

    :cond_2c
    if-le v3, p1, :cond_3e

    const-string v4, "fdtrack abort threshold reached, dumping and aborting"

    .line 947
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    .line 948
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 952
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 953
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_51

    .line 956
    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v8, v1

    if-lez v6, :cond_51

    const-wide/32 v1, 0x36ee80

    add-long/2addr v8, v1

    if-eqz v0, :cond_4d

    move v4, v5

    .line 959
    :cond_4d
    invoke-static {v7, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v8

    :cond_51
    :goto_51
    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    .line 967
    :try_start_54
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_3

    goto :goto_3
.end method

.method public static synthetic lambda$startOtherServices$1()V
    .registers 5

    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    .line 1920
    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1922
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1923
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1924
    array-length v3, v0

    if-lez v3, :cond_23

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Unable to preload default resources for secondary"

    .line 1925
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_23
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    const-string v2, "Exception preloading default resources"

    .line 1929
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    return-void
.end method

.method public static synthetic lambda$startOtherServices$2()V
    .registers 2

    .line 2284
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string v1, "StartHidlServices"

    .line 2285
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2286
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 2287
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method private synthetic lambda$startOtherServices$3()V
    .registers 4

    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    .line 4307
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 4309
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4310
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4311
    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 4312
    iget-object p0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 4313
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Landroid/os/IBinder;)V
    .registers 4

    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 4489
    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    return-void
.end method

.method private synthetic lambda$startOtherServices$5(Z)V
    .registers 5

    .line 4696
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    if-nez p1, :cond_1a

    const-string p1, "DsmsService"

    .line 4746
    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_b
    const-string v1, "dsms"

    .line 4748
    const-class v2, Lcom/samsung/android/jdsms/DsmsService;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v1

    .line 4750
    invoke-virtual {p0, p1, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4752
    :goto_17
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1a
    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 4757
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    const-string p0, "VideoTranscodingService"

    .line 4761
    invoke-virtual {v0, p0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_24
    const-string p0, "SemVideoTranscodingService"

    .line 4763
    const-class p1, Lcom/samsung/android/media/codec/VideoTranscodingService;

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_34

    :catchall_2c
    move-exception p0

    const-string p1, "SystemServer"

    const-string v1, "Failed to start VideoTranscodingService "

    .line 4765
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4767
    :goto_34
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method private synthetic lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V
    .registers 36

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p12

    const-string v7, "SystemServer"

    const-string v0, "Making services ready"

    .line 4280
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartActivityManagerReadyPhase"

    .line 4281
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY"

    .line 4282
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, p1, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4284
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartObservingNativeCrashes"

    .line 4285
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4287
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_37

    :catchall_30
    move-exception v0

    const-string/jumbo v8, "observing native crashes"

    .line 4289
    invoke-virtual {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4291
    :goto_37
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "RegisterAppOpsPolicy"

    .line 4293
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4295
    :try_start_3f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_4c

    goto :goto_53

    :catchall_4c
    move-exception v0

    const-string/jumbo v8, "registering app ops policy"

    .line 4297
    invoke-virtual {p0, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4299
    :goto_53
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4305
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v8, "WebViewFactoryPreparation"

    const/4 v9, 0x0

    if-nez v0, :cond_6c

    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v0, :cond_6c

    .line 4306
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v10, v0

    goto :goto_6d

    :cond_6c
    move-object v10, v9

    .line 4317
    :goto_6d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.type.automotive"

    .line 4318
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9e

    const-string v0, "StartCarServiceHelperService"

    .line 4320
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4321
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.internal.car.CarServiceHelperService"

    .line 4322
    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 4323
    instance-of v12, v0, Landroid/util/Dumpable;

    if-eqz v12, :cond_90

    .line 4324
    iget-object v12, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v13, v0

    check-cast v13, Landroid/util/Dumpable;

    invoke-static {v12, v13}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 4326
    :cond_90
    instance-of v12, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v12, :cond_9b

    .line 4327
    check-cast v0, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    .line 4329
    :cond_9b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_9e
    const-string v0, "MakeExtendedEthernetServiceReady"

    .line 4333
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p3, :cond_b1

    .line 4336
    :try_start_a5
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/ExtendedEthernetService;->systemReady()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_b1

    :catchall_a9
    move-exception v0

    move-object v12, v0

    const-string/jumbo v0, "making ExtendedEthernetService ready"

    .line 4339
    invoke-virtual {p0, v0, v12}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4341
    :cond_b1
    :goto_b1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "startResourceOverlayService"

    .line 4346
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4348
    :try_start_ba
    invoke-virtual {p0, v3}, Lcom/android/server/SystemServer;->startResourceOverlayService(Z)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c6

    :catchall_be
    move-exception v0

    move-object v12, v0

    const-string/jumbo v0, "starting Resource Overlay Service"

    .line 4350
    invoke-virtual {p0, v0, v12}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4352
    :goto_c6
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "startThemeService"

    .line 4358
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4360
    :try_start_cf
    invoke-virtual {p0, v3}, Lcom/android/server/SystemServer;->startThemeService(Z)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_db

    :catchall_d3
    move-exception v0

    move-object v12, v0

    const-string/jumbo v0, "starting Theme Service"

    .line 4362
    invoke-virtual {p0, v0, v12}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4364
    :goto_db
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 v12, 0x1

    if-eqz v3, :cond_f4

    const-string v0, "EnableAirplaneModeInSafeMode"

    .line 4374
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4376
    :try_start_e6
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_f1

    :catchall_ea
    move-exception v0

    move-object v3, v0

    const-string v0, "enabling Airplane Mode during Safe Mode bootup"

    .line 4378
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4380
    :goto_f1
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_f4
    const-string v0, "MakeNetworkManagementServiceReady"

    .line 4382
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p6, :cond_11a

    :try_start_fb
    const-string v0, "!@Boot_DEBUG: start networkManagement"

    .line 4385
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_D: start networkManagement"

    .line 4386
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/NetworkManagementService;->systemReady()V

    const-string v0, "!@Boot_DEBUG: end networkManagement"

    .line 4388
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_D: end networkManagement"

    .line 4389
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_fb .. :try_end_112} :catchall_113

    goto :goto_11a

    :catchall_113
    move-exception v0

    const-string/jumbo v3, "making Network Managment Service ready"

    .line 4392
    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11a
    :goto_11a
    if-eqz v5, :cond_122

    .line 4397
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v3, v0

    goto :goto_123

    :cond_122
    move-object v3, v9

    .line 4399
    :goto_123
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeConnectivityServiceReady"

    .line 4400
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v4, :cond_139

    .line 4403
    :try_start_12d
    invoke-virtual/range {p5 .. p5}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    goto :goto_139

    :catchall_131
    move-exception v0

    move-object v4, v0

    const-string/jumbo v0, "making Connectivity Service ready"

    .line 4406
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4408
    :cond_139
    :goto_139
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeVpnManagerServiceReady"

    .line 4409
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p8, :cond_14f

    .line 4412
    :try_start_143
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_147

    goto :goto_14f

    :catchall_147
    move-exception v0

    move-object v4, v0

    const-string/jumbo v0, "making VpnManagerService ready"

    .line 4415
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4417
    :cond_14f
    :goto_14f
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeVcnManagementServiceReady"

    .line 4418
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p9, :cond_165

    .line 4421
    :try_start_159
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_15d

    goto :goto_165

    :catchall_15d
    move-exception v0

    move-object v4, v0

    const-string/jumbo v0, "making VcnManagementService ready"

    .line 4424
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4426
    :cond_165
    :goto_165
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeNetworkPolicyServiceReady"

    .line 4427
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v5, :cond_17b

    .line 4430
    :try_start_16f
    invoke-virtual {v5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_173

    goto :goto_17b

    :catchall_173
    move-exception v0

    move-object v3, v0

    const-string/jumbo v0, "making Network Policy Service ready"

    .line 4433
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4435
    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeUrspServiceReady"

    .line 4438
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p10, :cond_191

    .line 4441
    :try_start_185
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/net/UrspService;->systemReady()V
    :try_end_188
    .catchall {:try_start_185 .. :try_end_188} :catchall_189

    goto :goto_191

    :catchall_189
    move-exception v0

    move-object v3, v0

    const-string/jumbo v0, "making ursp Service ready"

    .line 4444
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4446
    :cond_191
    :goto_191
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4450
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    const-string v0, "PhaseThirdPartyAppsCanStart"

    .line 4454
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v10, :cond_1a3

    .line 4457
    invoke-static {v10, v8}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1a3
    const-string v0, "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START"

    .line 4459
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x258

    invoke-virtual {v0, p1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4461
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4463
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_1ce

    if-nez v11, :cond_1ce

    const-string v0, "BootUserInitializer"

    .line 4465
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Lcom/android/server/BootUserInitializer;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v3, v4}, Lcom/android/server/BootUserInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, p1}, Lcom/android/server/BootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4467
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1ce
    const-string v0, "StartNetworkStack"

    .line 4470
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4477
    :try_start_1d3
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1da
    .catchall {:try_start_1d3 .. :try_end_1da} :catchall_1db

    goto :goto_1e2

    :catchall_1db
    move-exception v0

    const-string/jumbo v3, "starting Network Stack"

    .line 4479
    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4481
    :goto_1e2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartTethering"

    .line 4483
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4486
    :try_start_1ea
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v3, "android.net.ITetheringConnector"

    const-string v4, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_1fa
    .catchall {:try_start_1ea .. :try_end_1fa} :catchall_1fb

    goto :goto_202

    :catchall_1fb
    move-exception v0

    const-string/jumbo v3, "starting Tethering"

    .line 4494
    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4496
    :goto_202
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "SLocationServiceReady"

    .line 4499
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p11, :cond_236

    :try_start_20d
    const-string v0, "com.samsung.android.location.SLocationLoader"

    .line 4502
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "systemReady"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    .line 4503
    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v3

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v8, v12

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object p11, v4, v12

    .line 4504
    invoke-virtual {v0, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22e
    .catchall {:try_start_20d .. :try_end_22e} :catchall_22f

    goto :goto_236

    :catchall_22f
    move-exception v0

    const-string/jumbo v4, "making SLocation Service ready : "

    .line 4507
    invoke-virtual {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4509
    :cond_236
    :goto_236
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "SAccessoryManager"

    .line 4513
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p13, :cond_24b

    .line 4515
    :try_start_240
    invoke-virtual/range {p13 .. p13}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_243} :catch_244

    goto :goto_24b

    :catch_244
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying SAccessoryManager running"

    .line 4517
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4519
    :cond_24b
    :goto_24b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeCountryDetectionServiceReady"

    .line 4522
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p14, :cond_260

    .line 4525
    :try_start_255
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_259

    goto :goto_260

    :catchall_259
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying CountryDetectorService running"

    .line 4528
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4530
    :cond_260
    :goto_260
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeNetworkTimeUpdateReady"

    .line 4531
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p15, :cond_275

    .line 4534
    :try_start_26a
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_26d
    .catchall {:try_start_26a .. :try_end_26d} :catchall_26e

    goto :goto_275

    :catchall_26e
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying NetworkTimeService running"

    .line 4537
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4539
    :cond_275
    :goto_275
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeInputManagerServiceReady"

    .line 4540
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p16, :cond_28a

    .line 4544
    :try_start_27f
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_282
    .catchall {:try_start_27f .. :try_end_282} :catchall_283

    goto :goto_28a

    :catchall_283
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying InputManagerService running"

    .line 4547
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4549
    :cond_28a
    :goto_28a
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeTelephonyRegistryReady"

    .line 4550
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p17, :cond_29f

    .line 4553
    :try_start_294
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_297
    .catchall {:try_start_294 .. :try_end_297} :catchall_298

    goto :goto_29f

    :catchall_298
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying TelephonyRegistry running"

    .line 4556
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4558
    :cond_29f
    :goto_29f
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "MakeMediaRouterServiceReady"

    .line 4559
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p18, :cond_2b4

    .line 4562
    :try_start_2a9
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_2ac
    .catchall {:try_start_2a9 .. :try_end_2ac} :catchall_2ad

    goto :goto_2b4

    :catchall_2ad
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying MediaRouterService running"

    .line 4565
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4567
    :cond_2b4
    :goto_2b4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4571
    :try_start_2b7
    invoke-static/range {p12 .. p12}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2b7 .. :try_end_2ba} :catch_2bb

    goto :goto_2c2

    :catch_2bb
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying EmergencyModeService running"

    .line 4573
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4577
    :goto_2c2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ce

    if-eqz p19, :cond_2e3

    :cond_2ce
    const-string v0, "MakeMmsServiceReady"

    .line 4578
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz p20, :cond_2e0

    .line 4580
    :try_start_2d5
    invoke-virtual/range {p20 .. p20}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_2d8
    .catchall {:try_start_2d5 .. :try_end_2d8} :catchall_2d9

    goto :goto_2e0

    :catchall_2d9
    move-exception v0

    move-object v4, v0

    const-string v0, "Notifying MmsService running"

    .line 4582
    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4584
    :cond_2e0
    :goto_2e0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2e3
    const-string v0, "IncidentDaemonReady"

    .line 4587
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_2e8
    const-string/jumbo v0, "incident"

    .line 4592
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4591
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_2ff

    .line 4594
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_2f8
    .catchall {:try_start_2e8 .. :try_end_2f8} :catchall_2f9

    goto :goto_2ff

    :catchall_2f9
    move-exception v0

    const-string v4, "Notifying incident daemon running"

    .line 4597
    invoke-virtual {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4599
    :cond_2ff
    :goto_2ff
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4601
    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_317

    const-string v0, "MakeIncrementalServiceReady"

    .line 4602
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4603
    iget-wide v4, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v4, v5}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 4604
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4610
    :cond_317
    :try_start_317
    invoke-virtual/range {p12 .. p12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1110134

    .line 4611
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_322
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_322} :catch_323

    goto :goto_32a

    :catch_323
    move-exception v0

    const-string v4, "Not starting ExynosDisplaySolutionService"

    .line 4613
    invoke-static {v7, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_32a
    if-eqz v0, :cond_35f

    const-string v0, "ExynosDisplaySolution"

    .line 4617
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_331
    const-string v0, "ExynosDisplaySolution Service"

    .line 4619
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.server.display.exynos.ExynosDisplaySolutionManagerService"

    .line 4621
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Class;

    .line 4625
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 4626
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v4, "exynos_display"

    .line 4627
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_355
    .catchall {:try_start_331 .. :try_end_355} :catchall_356

    goto :goto_35c

    :catchall_356
    move-exception v0

    const-string v4, "Failed To Start ExynosDisplaySolution Service "

    .line 4630
    invoke-virtual {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4632
    :goto_35c
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_35f
    const-string v0, "SemMdnieManagerService"

    .line 4637
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_364
    const-string/jumbo v0, "mDNIe Service"

    .line 4639
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.hardware.display.SemMdnieManagerService"

    .line 4641
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Class;

    .line 4645
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 4646
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v4, "mDNIe"

    .line 4647
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38a
    .catchall {:try_start_364 .. :try_end_38a} :catchall_38b

    goto :goto_391

    :catchall_38b
    move-exception v0

    const-string v4, "Failed To Start Mdnie Service "

    .line 4650
    invoke-virtual {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4652
    :goto_391
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "SemDisplaySolution"

    .line 4655
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_399
    const-string v0, "SemDisplaySolution Service"

    .line 4657
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    .line 4659
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Class;

    .line 4663
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 4664
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v4, "DisplaySolution"

    .line 4665
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3bd
    .catchall {:try_start_399 .. :try_end_3bd} :catchall_3be

    goto :goto_3c4

    :catchall_3be
    move-exception v0

    const-string v4, "Failed To Start SemDisplaySolution Service "

    .line 4668
    invoke-virtual {p0, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4670
    :goto_3c4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemDisplayQualityFeature.ENABLED:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",PLATFORM:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v0, :cond_41e

    const-string v0, "SemDisplayQuality"

    .line 4675
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_3f0
    const-string v0, "SemDisplayQuality Service"

    .line 4677
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.displayquality.SemDisplayQualityManagerService"

    .line 4679
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Class;

    .line 4683
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 4684
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v3, "DisplayQuality"

    .line 4685
    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_414
    .catchall {:try_start_3f0 .. :try_end_414} :catchall_415

    goto :goto_41b

    :catchall_415
    move-exception v0

    const-string v3, "Failed To Start SemDisplayQuality Service "

    .line 4688
    invoke-virtual {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4690
    :goto_41b
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4695
    :cond_41e
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    move/from16 v3, p21

    invoke-direct {v0, p0, v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/SystemServer;Z)V

    const-string v3, "Load of Classes of Lazy Services"

    invoke-static {v0, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    const-string v0, "KT UCA Service"

    .line 4772
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v4, "ro.csc.sales_code"

    .line 4773
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4774
    new-instance v5, Ljava/io/File;

    const-string v8, "/system/lib/libktuca2.so"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4775
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v8, "SKC"

    .line 4776
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_462

    const-string v8, "KTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_462

    const-string v8, "LUC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_462

    const-string v8, "KOO"

    .line 4777
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47f

    :cond_462
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_47f

    if-eqz v5, :cond_47f

    .line 4780
    :try_start_46a
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ktuca"

    .line 4781
    new-instance v4, Landroid/ktuca/KtUcaService;

    invoke-direct {v4, v6}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_478
    .catchall {:try_start_46a .. :try_end_478} :catchall_479

    goto :goto_47f

    :catchall_479
    move-exception v0

    const-string v4, "Failure starting KT UCA Service"

    .line 4783
    invoke-static {v7, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4786
    :cond_47f
    :goto_47f
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "Mobile Payment Service"

    .line 4790
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4793
    :try_start_487
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    invoke-virtual/range {p12 .. p12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v12, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string/jumbo v0, "mobile_payment"

    .line 4799
    new-instance v4, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a3
    .catchall {:try_start_487 .. :try_end_4a3} :catchall_4a4

    goto :goto_4aa

    :catchall_4a4
    move-exception v0

    const-string v4, "Failure starting Payment Manager Service"

    .line 4801
    invoke-static {v7, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4804
    :goto_4aa
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartSamsungHealthService"

    .line 4808
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4809
    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v0, v6}, Lcom/android/server/shealth/SamsungHealthService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

    .line 4810
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartVoiceNoteService"

    .line 4814
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4815
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    invoke-direct {v0, v6}, Lcom/android/server/voicenote/VoiceNoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

    .line 4816
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "LazyService Wait Here"

    .line 4819
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "Lazy Service"

    .line 4820
    invoke-static {v3, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4821
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "OdsignStatsLogger"

    .line 4823
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4825
    :try_start_4dd
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_4e0
    .catchall {:try_start_4dd .. :try_end_4e0} :catchall_4e1

    goto :goto_4e8

    :catchall_4e1
    move-exception v0

    move-object v3, v0

    const-string v0, "Triggering OdsignStatsLogger"

    .line 4827
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4829
    :goto_4e8
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    .line 989
    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method public static spawnFdLeakCheckThread()V
    .registers 5

    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x400

    .line 921
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0x800

    .line 922
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    .line 923
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 925
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 972
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 4

    const-string v0, "SystemServer"

    .line 4847
    :try_start_2
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 4849
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V

    goto :goto_27

    :cond_c
    const-string p0, "Starting emergency service failed: emMgr is null"

    .line 4851
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_27

    :catch_12
    move-exception p0

    .line 4854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting emergency service failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method public static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 4980
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4981
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4982
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 4983
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4985
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4986
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method


# virtual methods
.method public final createSystemContext()V
    .registers 3

    .line 1420
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const p0, 0x103043f

    .line 1422
    invoke-virtual {v1, p0}, Landroid/content/Context;->setTheme(I)V

    .line 1424
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1425
    invoke-virtual {v0, p0}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public final deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 3

    .line 4890
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4891
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 1019
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array p2, p2, [Ljava/lang/Object;

    .line 1020
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Start count: %d\n"

    invoke-virtual {p1, v0, p2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string p2, "Runtime start-up time: "

    .line 1021
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "Runtime start-elapsed time: "

    .line 1023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 1

    .line 1014
    const-class p0, Lcom/android/server/SystemServer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isFirstBootOrUpgrade()Z
    .registers 2

    .line 1357
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final performPendingShutdown()V
    .registers 9

    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    .line 1366
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 1368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_88

    const/4 v2, 0x0

    .line 1369
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1372
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_30

    .line 1373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v6

    :goto_31
    if-eqz v1, :cond_71

    const-string/jumbo v4, "recovery-update"

    .line 1383
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1384
    new-instance v4, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1388
    :try_start_49
    invoke-static {v4, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_54

    :catch_4e
    move-exception v2

    const-string v4, "Error reading uncrypt package file"

    .line 1390
    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    if-eqz v6, :cond_71

    const-string v2, "/data"

    .line 1393
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1394
    new-instance v2, Ljava/io/File;

    const-string v4, "/cache/recovery/block.map"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_71

    const-string p0, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    .line 1395
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1402
    :cond_71
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    .line 1413
    invoke-virtual {p0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1414
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_88
    return-void
.end method

.method public final reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string p0, "SystemServer"

    const-string v0, "***********************************************"

    .line 1361
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOOT FAILURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final run()V
    .registers 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    const-string v4, "SystemServer"

    .line 1102
    new-instance v5, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    :try_start_11
    const-string v6, "InitBeforeStartServices"

    .line 1104
    invoke-virtual {v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v6, "sys.system_server.start_count"

    .line 1107
    iget v7, v0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sys.system_server.start_elapsed"

    .line 1108
    iget-wide v7, v0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sys.system_server.start_uptime"

    .line 1109
    iget-wide v7, v0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "!@Boot_EBS_F: SYSTEM_SERVER_START"

    .line 1111
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xbc3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1112
    iget v8, v0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 1113
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-wide v10, v0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget-wide v11, v0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v8

    .line 1112
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1118
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1119
    invoke-static {v6}, Lcom/android/server/SystemServer;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 1120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist.sys.timezone is not valid ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "); setting to GMT."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "GMT"

    .line 1122
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_8b
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b2

    .line 1134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "persist.sys.locale"

    .line 1136
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.sys.country"

    .line 1138
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.sys.localevar"

    .line 1139
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->setSystemServerProcess()V

    .line 1147
    invoke-static {v10}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 1149
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    const-string v1, "FULL"

    .line 1152
    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1155
    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    const-string v2, "Entered the Android system server!"

    .line 1158
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "!@Boot: Entered the Android system server!"

    .line 1159
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN"

    .line 1160
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v6, 0xbc2

    .line 1162
    invoke-static {v6, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1163
    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_e6

    const/16 v6, 0x13

    .line 1164
    invoke-static {v7, v6, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_e6
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    .line 1177
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1184
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 1188
    invoke-static {v10}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 1192
    invoke-static {v10}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 1195
    invoke-static {v10}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 1198
    invoke-static {v10}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v2, 0x1f

    .line 1201
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v2, -0x2

    .line 1204
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1206
    invoke-static {v9}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1207
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 1208
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-wide/16 v11, 0x64

    const-wide/16 v13, 0xc8

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 1211
    sput-boolean v10, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    const-string v2, "android_servers"

    .line 1214
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1217
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 1220
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_135

    .line 1221
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 1226
    :cond_135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 1232
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    const-string/jumbo v2, "system_server_dumper"

    .line 1235
    iget-object v3, v0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1236
    iget-object v2, v0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v2, v0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1239
    new-instance v11, Lcom/android/server/SystemServiceManager;

    iget-object v2, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1240
    iget-boolean v12, v0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v13, v0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v2, v0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v15, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 1242
    iget-object v2, v0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v2, v3}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1244
    const-class v2, Lcom/android/server/SystemServiceManager;

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1246
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v2

    .line 1247
    iget-object v3, v0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1253
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 1257
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_17a
    .catchall {:try_start_11 .. :try_end_17a} :catchall_274

    const-string v3, "System"

    if-eqz v2, :cond_1bb

    :try_start_17e
    const-string/jumbo v2, "persist.sys.dalvik.jvmtiagent"

    .line 1259
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1bb

    const/16 v6, 0x3d

    .line 1261
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1262
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v10

    .line 1264
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_19e
    .catchall {:try_start_17e .. :try_end_19e} :catchall_274

    .line 1267
    :try_start_19e
    invoke-static {v8, v6, v1}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_274

    goto :goto_1bb

    :catch_1a2
    :try_start_1a2
    const-string v6, "*************************************************"

    .line 1269
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "********** Failed to load jvmti plugin: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_1a2 .. :try_end_1bb} :catchall_274

    .line 1275
    :cond_1bb
    :goto_1bb
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1279
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    :try_start_1c6
    const-string v2, "StartServices"

    .line 1283
    invoke-virtual {v5, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v2, "!@Boot_EBS_F: startBootstrapServices"

    .line 1284
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string v2, "!@Boot_EBS_F: startCoreServices"

    .line 1286
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string v2, "!@Boot_EBS_F: startOtherServices"

    .line 1288
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1290
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    :try_end_1e6
    .catchall {:try_start_1c6 .. :try_end_1e6} :catchall_263

    .line 1296
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1299
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1306
    :try_start_1ec
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.voc"

    const-wide/16 v5, 0x80

    .line 1307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1306
    invoke-interface {v1, v2, v5, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_207

    const-string/jumbo v1, "sys.members.installed"

    const-string/jumbo v2, "true"

    .line 1310
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_207
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_207} :catch_207

    .line 1316
    :catch_207
    :cond_207
    iget-boolean v1, v0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_237

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_237

    .line 1317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x14

    .line 1318
    invoke-static {v7, v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v5, 0xea60

    cmp-long v3, v1, v5

    if-lez v3, :cond_237

    .line 1323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServerTiming"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_237
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v1, :cond_24e

    .line 1331
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 1332
    new-instance v2, Lcom/android/server/SystemServer$1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;I)V

    .line 1338
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v5, 0x7530

    .line 1339
    invoke-virtual {v0, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_24e
    const-string v0, "!@Boot: Loop forever"

    .line 1344
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_D: Loop forever"

    .line 1345
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1347
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_263
    move-exception v0

    :try_start_264
    const-string v1, "******************************************"

    .line 1292
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "************ Failure starting system services"

    .line 1293
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    throw v0
    :try_end_26f
    .catchall {:try_start_264 .. :try_end_26f} :catchall_26f

    :catchall_26f
    move-exception v0

    .line 1296
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1297
    throw v0

    :catchall_274
    move-exception v0

    .line 1275
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1276
    throw v0
.end method

.method public final startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    const-string v0, "StartAmbientContextService"

    .line 4974
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4975
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4976
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7

    const-string/jumbo v0, "startApexServices"

    .line 4867
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4870
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 4871
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 4872
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4873
    invoke-virtual {v1}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v1

    .line 4874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4875
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 4876
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_4c

    .line 4878
    :cond_47
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4880
    :goto_4c
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_12

    .line 4884
    :cond_50
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 4886
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 4950
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p0, "SystemServer"

    const-string p1, "AttentionService is not configured on this device"

    .line 4951
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string p1, "StartAttentionManagerService"

    .line 4955
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4956
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4957
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 14

    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "moveab"

    const-string/jumbo v2, "startBootstrapServices"

    .line 1435
    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v2, "StartWatchdog"

    .line 1439
    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1440
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 1442
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1443
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    .line 1445
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ReadingSystemConfig"

    .line 1447
    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1448
    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v5, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1449
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v4, "PlatformCompat"

    .line 1453
    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1454
    new-instance v4, Lcom/android/server/compat/PlatformCompat;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "platform_compat"

    .line 1455
    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1456
    new-instance v5, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v5, v4}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v6, "platform_compat_native"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v5, 0x0

    new-array v6, v5, [J

    .line 1458
    invoke-static {v6}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 1459
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartFileIntegrityService"

    .line 1464
    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1465
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1466
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartInstaller"

    .line 1471
    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1472
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/Installer;

    .line 1473
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "DeviceIdentifiersPolicyService"

    .line 1477
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1478
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1479
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "UriGrantsManagerService"

    .line 1482
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1483
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1484
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartPowerStatsService"

    .line 1486
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1488
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1489
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartIStatsService"

    .line 1491
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1492
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1493
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "MemtrackProxyService"

    .line 1497
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1498
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1499
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartActivityManager"

    .line 1502
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1504
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1505
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    .line 1506
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v8, v7}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1508
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1509
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1510
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1511
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartDataLoaderManagerService"

    .line 1514
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1515
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1517
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartIncrementalService"

    .line 1520
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1522
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartPowerManager"

    .line 1528
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1529
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1530
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartThermalManager"

    .line 1532
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1533
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1534
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartHintManager"

    .line 1548
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1549
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1550
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "InitPowerManagement"

    .line 1554
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1555
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1556
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "VaultKeeperService"

    .line 1559
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1560
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/VaultKeeperService$LifeCycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1561
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "PACMService"

    .line 1565
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1566
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.PACMService"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1567
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartRecoverySystemService"

    .line 1571
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1572
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1573
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1578
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1579
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    const-string v7, "StartLightsService"

    .line 1582
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1583
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1584
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartPdpService"

    .line 1587
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1588
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pdp/PdpService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1589
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartDisplayOffloadService"

    .line 1591
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v7, "config.enable_display_offload"

    .line 1593
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1bd

    .line 1594
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1596
    :cond_1bd
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartSidekickService"

    .line 1598
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v7, "config.enable_sidekick_graphics"

    .line 1600
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1d4

    .line 1601
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1603
    :cond_1d4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartDisplayManager"

    .line 1607
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1608
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1609
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "WaitForDisplay"

    .line 1612
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v7, "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 1613
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v7, p1, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1615
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1618
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "trigger_restart_min_framework"

    .line 1619
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_21d

    const-string v7, "Detected encryption in progress - only parsing core apps"

    .line 1620
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iput-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_22c

    :cond_21d
    const-string v8, "1"

    .line 1622
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22c

    const-string v7, "Device encrypted - only parsing core apps"

    .line 1623
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    iput-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1628
    :cond_22c
    :goto_22c
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v8, 0xf0

    if-nez v7, :cond_23b

    const/16 v7, 0xe

    .line 1632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1629
    invoke-static {v8, v7, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_23b
    const-string v7, "StartDomainVerificationService"

    .line 1635
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1636
    new-instance v7, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1637
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v11

    invoke-direct {v7, v10, v11, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1638
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v10, v7}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1639
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v10, "StartPackageManagerService"

    .line 1642
    invoke-virtual {p1, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v10, "!@Boot: Start PackageManagerService"

    .line 1643
    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :try_start_25d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1646
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v11, :cond_26b

    goto :goto_26c

    :cond_26b
    move v9, v5

    :goto_26c
    iget-boolean v11, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v10, v6, v7, v9, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;ZZ)Landroid/util/Pair;

    move-result-object v6

    .line 1649
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 1650
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/IPackageManager;
    :try_end_27c
    .catchall {:try_start_25d .. :try_end_27c} :catchall_3b3

    .line 1652
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    const-string v0, "!@Boot: End PackageManagerService"

    .line 1654
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-static {v6}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1662
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1663
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1664
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_2b1

    invoke-virtual {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_2b1

    const/16 v0, 0xf

    .line 1668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1665
    invoke-static {v8, v0, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_2b1
    const-string v0, "StartASKSManagerService"

    .line 1672
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1673
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->main(Landroid/content/Context;)Lcom/android/server/asks/ASKSManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    .line 1674
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1679
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_2ff

    const-string v0, "config.disable_otadexopt"

    .line 1680
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2ff

    const-string v0, "StartOtaDexOptService"

    .line 1683
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1685
    :try_start_2d2
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_2e0
    .catchall {:try_start_2d2 .. :try_end_2e0} :catchall_2e1

    goto :goto_2e8

    :catchall_2e1
    move-exception v0

    :try_start_2e2
    const-string/jumbo v6, "starting OtaDexOptService"

    .line 1688
    invoke-virtual {p0, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e8
    .catchall {:try_start_2e2 .. :try_end_2e8} :catchall_2f3

    .line 1690
    :goto_2e8
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2ff

    :catchall_2f3
    move-exception p0

    .line 1690
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1692
    throw p0

    :cond_2ff
    :goto_2ff
    const-string v0, "StartUserManagerService"

    .line 1696
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1698
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "InitAttributerCache"

    .line 1701
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1703
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "SetSystemProcess"

    .line 1706
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1708
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1711
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    const-string v0, "InitWatchdog"

    .line 1715
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v0, "!@Boot_EBS_D: InitWatchdog"

    .line 1716
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1718
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1722
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    const-string v0, "StartOverlayManagerService"

    .line 1725
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1727
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartResourcesManagerService"

    .line 1730
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1731
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1732
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1733
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1734
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartSensorPrivacyService"

    .line 1736
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1738
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "persist.sys.displayinset.top"

    .line 1740
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3a0

    .line 1742
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1743
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    :cond_3a0
    const-string v0, "StartSensorService"

    .line 1748
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1749
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/sensors/SensorService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1750
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1751
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_3b3
    move-exception p0

    .line 1652
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1653
    throw p0
.end method

.method public final startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6

    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    .line 4917
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServer"

    if-eqz v0, :cond_27

    const-string v2, "default"

    .line 4919
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 4920
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v2, "ContentCaptureService explicitly enabled by DeviceConfig"

    .line 4922
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_21
    const-string p0, "ContentCaptureService explicitly disabled by DeviceConfig"

    .line 4924
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-nez v0, :cond_39

    const v0, 0x104031a

    .line 4931
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_39

    const-string p0, "ContentCaptureService disabled because resource is not overlaid"

    .line 4932
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const-string p1, "StartContentCaptureService"

    .line 4937
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4938
    iget-object p1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v0, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4940
    const-class p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4941
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz p1, :cond_56

    .line 4942
    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p0, :cond_56

    .line 4943
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 4946
    :cond_56
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4

    const-string/jumbo v0, "startCoreServices"

    .line 1758
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.enable_isrb"

    const/4 v1, 0x0

    .line 1761
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "StartISRBService"

    .line 1763
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.isrb.IsrbManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1765
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1f
    const-string v0, "StartSystemConfigService"

    .line 1770
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1771
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1772
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartBatteryService"

    .line 1774
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1777
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartUsageService"

    .line 1780
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1782
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1783
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1782
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1784
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1787
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "StartWebViewUpdateService"

    .line 1788
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1790
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_77
    const-string v0, "StartCachedDeviceStateService"

    .line 1794
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1796
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartBinderCallsStatsService"

    .line 1799
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1800
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1801
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartLooperStatsService"

    .line 1804
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1806
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartRollbackManagerService"

    .line 1809
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1811
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartNativeTombstoneManagerService"

    .line 1814
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1816
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "StartBugreportManagerService"

    .line 1819
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1821
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "GpuService"

    .line 1824
    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1825
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v0, Lcom/android/server/gpu/GpuService;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1826
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1828
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5

    const-string v0, "SystemServer"

    :try_start_2
    const-string v1, "DualAppManagerService"

    .line 5017
    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v1, "startDualAppManagerService | add Service : startDualAppManagerService"

    .line 5019
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    const-string/jumbo p0, "startDualAppManagerService | context is null"

    .line 5021
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_29

    .line 5031
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 5024
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-nez v1, :cond_30

    .line 5025
    invoke-static {p1}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    const-string p0, "dual_app"

    .line 5026
    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_29

    goto :goto_30

    :catchall_29
    move-exception p0

    :try_start_2a
    const-string/jumbo p1, "startDualAppManagerService | Fail to start service"

    .line 5029
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_34

    .line 5031
    :cond_30
    :goto_30
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_34
    move-exception p0

    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 5032
    throw p0
.end method

.method public final startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 38

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    .line 1835
    const-class v1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    const-class v2, Lcom/android/server/SpegService;

    const-class v3, Lcom/android/server/SpqrService;

    const-string/jumbo v4, "startOtherServices"

    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1836
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v4}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1838
    iget-object v12, v14, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const-string v4, "config.disable_systemtextclassifier"

    const/4 v11, 0x0

    .line 1876
    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "config.disable_networktime"

    .line 1879
    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v5, "config.disable_cameraservice"

    .line 1881
    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "config.enable_lefty"

    .line 1883
    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v6, "ro.boot.qemu"

    .line 1885
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1887
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1890
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "org.chromium.arc"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1893
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.vr.high_performance"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x1

    if-nez v6, :cond_62

    move/from16 v20, v11

    goto :goto_64

    :cond_62
    move/from16 v20, v10

    :goto_64
    const-string v6, "factory"

    const-string/jumbo v7, "ro.factory.factory_binary"

    .line 1899
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const-string/jumbo v6, "ro.config.disable_bluetooth"

    .line 1901
    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1904
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_8b

    const-string v6, "debug.crash_system"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_85

    goto :goto_8b

    .line 1905
    :cond_85
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_8b
    :goto_8b
    const-string/jumbo v6, "lazy_service"

    .line 1908
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1909
    new-instance v6, Landroid/os/ServiceManager;

    invoke-direct {v6}, Landroid/os/ServiceManager;-><init>()V

    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/os/ServiceManager;->initLazyServiceManager(Landroid/content/Context;)V

    .line 1910
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1918
    :try_start_9e
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v7, "SecondaryZygotePreload"

    invoke-static {v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, v14, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v6, "StartKeyAttestationApplicationIdProviderService"

    .line 1933
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v6, "sec_key_att_app_id_provider"

    .line 1934
    new-instance v7, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v7, v12}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1936
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartKeyChainSystemService"

    .line 1938
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1939
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1940
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartBinaryTransparencyService"

    .line 1942
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1943
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1944
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartSchedulingPolicyService"

    .line 1946
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v6, "scheduling_policy"

    .line 1947
    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1948
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartSpqrService"

    .line 1953
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_9e .. :try_end_f4} :catchall_1cf3

    .line 1958
    :try_start_f4
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/SpqrService;

    .line 1959
    invoke-static {v3, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_ff} :catch_100
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_1cf3

    goto :goto_109

    :catch_100
    move-exception v0

    move-object v3, v0

    :try_start_102
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Spqr Service"

    .line 1962
    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1964
    :goto_109
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_1cf3

    :try_start_10c
    const-string v3, "SEAMS"

    .line 1969
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v3, "SEAMService"

    .line 1970
    new-instance v6, Lcom/android/server/SEAMService;

    invoke-direct {v6, v12}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11b
    .catchall {:try_start_10c .. :try_end_11b} :catchall_11f

    .line 1974
    :goto_11b
    :try_start_11b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_1cf3

    goto :goto_129

    :catchall_11f
    move-exception v0

    move-object v3, v0

    :try_start_121
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    .line 1972
    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_128
    .catchall {:try_start_121 .. :try_end_128} :catchall_1cec

    goto :goto_11b

    .line 1980
    :goto_129
    :try_start_129
    iget-object v3, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.microphone"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_147

    iget-object v3, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.telecom"

    .line 1981
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_147

    iget-object v3, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.telephony"

    .line 1982
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_156

    :cond_147
    const-string v3, "StartTelecomLoaderService"

    .line 1983
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1984
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1985
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_156
    const-string v3, "StartTelephonyRegistry"

    .line 1988
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1989
    new-instance v3, Lcom/android/server/TelephonyRegistry;

    new-instance v6, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v6}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v3, v12, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V

    const-string/jumbo v6, "telephony.registry"

    .line 1991
    invoke-static {v6, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1992
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartEntropyMixer"

    .line 1994
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1995
    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v12}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v6, v14, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    .line 1999
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catchall {:try_start_129 .. :try_end_184} :catchall_1cf3

    :try_start_184
    const-string v6, "ReactiveService"

    .line 2001
    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v12}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18e
    .catchall {:try_start_184 .. :try_end_18e} :catchall_18f

    goto :goto_196

    :catchall_18f
    :try_start_18f
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    .line 2004
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_18f .. :try_end_196} :catchall_1cf3

    :goto_196
    :try_start_196
    const-string v6, "false"

    const-string/jumbo v7, "ro.product_ship"

    const-string v8, "false"

    .line 2010
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c9

    const-string v6, "SEDenial"

    .line 2011
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v6, "sedenial"

    .line 2012
    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v12}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    .line 2013
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1c1
    .catchall {:try_start_196 .. :try_end_1c1} :catchall_1c2

    goto :goto_1c9

    :catchall_1c2
    :try_start_1c2
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    .line 2017
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c9
    :goto_1c9
    const-string v6, "StartPersonaManager"

    .line 2059
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1ce
    .catchall {:try_start_1c2 .. :try_end_1ce} :catchall_1cf3

    :try_start_1ce
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    .line 2061
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6
    :try_end_1d9
    .catchall {:try_start_1ce .. :try_end_1d9} :catchall_1e3

    :try_start_1d9
    const-string/jumbo v7, "persona"

    .line 2063
    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1df
    .catchall {:try_start_1d9 .. :try_end_1df} :catchall_1e0

    goto :goto_1ed

    :catchall_1e0
    move-exception v0

    move-object v7, v0

    goto :goto_1e6

    :catchall_1e3
    move-exception v0

    move-object v7, v0

    const/4 v6, 0x0

    :goto_1e6
    :try_start_1e6
    const-string v8, "SystemServer"

    const-string v9, "Failure starting Persona Manager Service"

    .line 2065
    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ed
    move-object/from16 v24, v6

    .line 2078
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2080
    invoke-virtual {v14, v12, v13, v11}, Lcom/android/server/SystemServer;->startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V

    .line 2083
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startDualAppManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2086
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, v14, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "StartAccountManagerService"

    .line 2089
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2090
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2091
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartContentService"

    .line 2093
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2094
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2095
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "InstallSystemProviders"

    .line 2097
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2098
    iget-object v6, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 2100
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 2101
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "UpdateWatchdogTimeout"

    .line 2103
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2104
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 2105
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartDropBoxManager"

    .line 2110
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2111
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2112
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartRoleManagerService"

    .line 2115
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2116
    const-class v6, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v7, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    iget-object v8, v14, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2118
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.role.RoleService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2123
    sget-boolean v6, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v6, :cond_27c

    const-string v6, "SemUnionMainService"

    .line 2124
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2125
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.sepunion.SemUnionMainService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2126
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_27c
    const-string v6, "StartVibratorManagerService"

    .line 2130
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2131
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2132
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartDynamicSystemService"

    .line 2134
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2135
    new-instance v6, Lcom/android/server/DynamicSystemService;

    invoke-direct {v6, v12}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V

    const-string v7, "dynamic_system"

    .line 2136
    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2137
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v18, :cond_2b1

    const-string v6, "StartConsumerIrService"

    .line 2140
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2141
    new-instance v6, Lcom/android/server/ConsumerIrService;

    invoke-direct {v6, v12}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    const-string v7, "consumer_ir"

    .line 2142
    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2143
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_2b1
    const-string v6, "StartResourceEconomy"

    .line 2147
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2148
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.tare.InternalResourceService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2149
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2c0
    .catchall {:try_start_1e6 .. :try_end_2c0} :catchall_1cf3

    :try_start_2c0
    const-string v6, "SSRM Service"

    .line 2153
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2154
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2cc} :catch_2d5
    .catchall {:try_start_2c0 .. :try_end_2cc} :catchall_2d0

    .line 2159
    :goto_2cc
    :try_start_2cc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_1cf3

    goto :goto_2e3

    :catchall_2d0
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    goto/16 :goto_1ce8

    :catch_2d5
    move-exception v0

    move-object v6, v0

    :try_start_2d7
    const-string v7, "SystemServer"

    const-string/jumbo v8, "ssrm.jar not found"

    .line 2156
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e2
    .catchall {:try_start_2d7 .. :try_end_2e2} :catchall_1ce5

    goto :goto_2cc

    :goto_2e3
    :try_start_2e3
    const-string v6, "StartAlarmManagerService"

    .line 2163
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2164
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.alarm.AlarmManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartInputManagerService"

    .line 2167
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2168
    new-instance v9, Lcom/android/server/input/InputManagerService;

    invoke-direct {v9, v12}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V

    .line 2169
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "DeviceStateManagerService"

    .line 2171
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2172
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2173
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "SatsService: Secure AT Service"

    .line 2176
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_313
    .catchall {:try_start_2e3 .. :try_end_313} :catchall_1cf3

    .line 2178
    :try_start_313
    const-class v6, Lcom/android/server/SatsService;

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v12}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_31d
    .catchall {:try_start_313 .. :try_end_31d} :catchall_31e

    goto :goto_325

    :catchall_31e
    :try_start_31e
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SatsService."

    .line 2180
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :goto_325
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v5, :cond_348

    const-string v5, "StartCameraServiceProxy"

    .line 2186
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2187
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2188
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartCameraServiceWorker"

    .line 2190
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2191
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2192
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_348
    .catchall {:try_start_31e .. :try_end_348} :catchall_1cf3

    :cond_348
    :try_start_348
    const-string v5, "StartSemContextService"

    .line 2199
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_365

    .line 2201
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.scontext_lite"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_397

    :cond_365
    const-string v5, "SystemServer"

    const-string v6, "SemContextService Service"

    .line 2202
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/semcontextservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v6, "com.samsung.android.hardware.context.SemContextService"

    .line 2204
    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    .line 2205
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "scontext"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v12, v7, v11

    .line 2206
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_397
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_397} :catch_3a0
    .catchall {:try_start_348 .. :try_end_397} :catchall_39b

    .line 2211
    :cond_397
    :goto_397
    :try_start_397
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_39a
    .catchall {:try_start_397 .. :try_end_39a} :catchall_1cf3

    goto :goto_3aa

    :catchall_39b
    move-exception v0

    move-object v1, v0

    move-object v2, v13

    goto/16 :goto_1ce1

    :catch_3a0
    move-exception v0

    move-object v5, v0

    :try_start_3a2
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SemContextService"

    .line 2209
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a9
    .catchall {:try_start_3a2 .. :try_end_3a9} :catchall_1cde

    goto :goto_397

    :goto_3aa
    :try_start_3aa
    const-string v5, "StartMotionRecognitionService"

    .line 2215
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_3af
    .catchall {:try_start_3aa .. :try_end_3af} :catchall_1cf3

    .line 2217
    :try_start_3af
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_3f9

    const-string v6, "com.sec.feature.motionrecognition_service"

    .line 2219
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f9

    .line 2220
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v6, "com.samsung.android.gesture.MotionRecognitionService"

    .line 2221
    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    .line 2222
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "motion_recognition"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v12, v7, v11

    .line 2223
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "MotionRecognitionService Service!"

    .line 2224
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ef
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3ef} :catch_3f0
    .catchall {:try_start_3af .. :try_end_3ef} :catchall_1cf3

    goto :goto_3f9

    :catch_3f0
    move-exception v0

    move-object v5, v0

    :try_start_3f2
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    .line 2228
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2230
    :cond_3f9
    :goto_3f9
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SemPrivilegeManagerService"

    .line 2235
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2236
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.privilege.SemPrivilegeManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2237
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v5, "sys.config.hardcoder.enable"

    .line 2242
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_416
    .catchall {:try_start_3f2 .. :try_end_416} :catchall_1cf3

    const/4 v8, 0x2

    if-eqz v5, :cond_478

    :try_start_419
    const-string v5, "HardcoderService"

    .line 2244
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2245
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/HardcoderService.jar"

    const-class v7, Lcom/android/server/SystemServer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v6, "com.samsung.android.hardcoder.HardcoderService"

    .line 2246
    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Class;

    .line 2247
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v11

    const-class v7, Landroid/app/IActivityManager;

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v12, v6, v11

    .line 2248
    iget-object v7, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v12, v7, v11

    .line 2249
    iget-object v8, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v8, v7, v10

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "HardcoderService"

    .line 2250
    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v6, "HardcoderService loaded"

    .line 2251
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_464
    .catchall {:try_start_419 .. :try_end_464} :catchall_468

    .line 2255
    :goto_464
    :try_start_464
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_467
    .catchall {:try_start_464 .. :try_end_467} :catchall_1cf3

    goto :goto_478

    :catchall_468
    move-exception v0

    move-object v5, v0

    :try_start_46a
    const-string v6, "SystemServer"

    const-string v7, "Failed to add HardcoderService."

    .line 2253
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_471
    .catchall {:try_start_46a .. :try_end_471} :catchall_472

    goto :goto_464

    :catchall_472
    move-exception v0

    move-object v1, v0

    .line 2255
    :try_start_474
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2256
    throw v1

    :cond_478
    :goto_478
    const-string v5, "StartWindowManagerService"

    .line 2260
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v5, "SystemServer"

    const-string v6, "!@Boot_EBS_F: Start WindowManagerService"

    .line 2261
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0xc8

    invoke-virtual {v5, v13, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2264
    iget-boolean v5, v14, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_491

    move v7, v10

    goto :goto_492

    :cond_491
    move v7, v11

    :goto_492
    iget-boolean v8, v14, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v26, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    iget-object v5, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v5, v12

    move-object/from16 v27, v6

    move-object v6, v9

    move-object/from16 v29, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v10

    const-string/jumbo v5, "window"

    const/16 v6, 0x11

    .line 2266
    invoke-static {v5, v10, v11, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v5, "input"

    move-object/from16 v9, v29

    const/4 v6, 0x1

    .line 2268
    invoke-static {v5, v9, v11, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2270
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SetWindowManagerService"

    .line 2272
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2273
    iget-object v5, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 2274
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "WindowManagerServiceOnInitReady"

    .line 2276
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 2278
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2283
    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>()V

    const-string v7, "StartHidlServices"

    invoke-static {v5, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v18, :cond_4f4

    if-eqz v20, :cond_4f4

    const-string v5, "StartVrManagerService"

    .line 2291
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2292
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2293
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_4f4
    const-string v5, "StartInputManager"

    .line 2390
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 2392
    invoke-virtual {v9}, Lcom/android/server/input/InputManagerService;->start()V

    .line 2393
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "DisplayManagerWindowManagerAndInputReady"

    .line 2396
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2397
    iget-object v5, v14, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 2398
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2400
    iget v5, v14, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v5, v6, :cond_51f

    const-string v5, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    .line 2401
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54e

    .line 2402
    :cond_51f
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "android.hardware.bluetooth"

    .line 2403
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_533

    const-string v5, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    .line 2404
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54e

    :cond_533
    if-eqz v21, :cond_53d

    const-string v5, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    .line 2406
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54e

    :cond_53d
    const-string v5, "StartBluetoothService"

    .line 2408
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2409
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.bluetooth.BluetoothService"

    const-string v8, "/apex/com.android.btservices/javalib/service-bluetooth.jar"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2411
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_54e
    const-string v5, "SystemServer"

    const-string v7, "Hqm Service"

    .line 2417
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_555
    .catchall {:try_start_474 .. :try_end_555} :catchall_1cf3

    .line 2419
    :try_start_555
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.samsung.android.hqm.HqmManagerService"

    .line 2420
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Class;

    .line 2421
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v11

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v12, v7, v11

    .line 2422
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string v7, "HqmManagerService"

    .line 2423
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57f
    .catch Ljava/lang/Exception; {:try_start_555 .. :try_end_57f} :catch_580
    .catchall {:try_start_555 .. :try_end_57f} :catchall_1cf3

    goto :goto_58d

    :catch_580
    move-exception v0

    move-object v5, v0

    :try_start_582
    const-string v7, "SystemServer"

    const-string/jumbo v8, "hqm.jar not found"

    .line 2425
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_58d
    const-string v5, "0"

    .line 2432
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_607

    const-string v5, "HcmManagerService"

    .line 2434
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_5a4
    .catchall {:try_start_582 .. :try_end_5a4} :catchall_1cf3

    .line 2436
    :try_start_5a4
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "adaptive_power_saving_setting"

    invoke-static {v5, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v7, "SystemServer"

    .line 2438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HcmManagerService ApmSwitch = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    new-instance v7, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/hcm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v8, "com.samsung.android.hcm.HcmManagerService"

    .line 2440
    invoke-virtual {v7, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-lez v5, :cond_5f2

    new-array v5, v6, [Ljava/lang/Class;

    .line 2443
    const-class v8, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v12, v7, v11

    .line 2444
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string v7, "HcmManagerService"

    .line 2445
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_604

    :cond_5f2
    const-string v5, "HcmManagerService"

    .line 2447
    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_5f7
    .catch Ljava/lang/Exception; {:try_start_5a4 .. :try_end_5f7} :catch_5f8
    .catchall {:try_start_5a4 .. :try_end_5f7} :catchall_1cf3

    goto :goto_604

    :catch_5f8
    move-exception v0

    move-object v5, v0

    :try_start_5fa
    const-string v7, "SystemServer"

    const-string v8, "Failed to add HcmManagerService."

    .line 2450
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2453
    :goto_604
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_607
    const-string v5, "IpConnectivityMetrics"

    .line 2457
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2458
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.connectivity.IpConnectivityMetrics"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2459
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "NetworkWatchlistService"

    .line 2461
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2462
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2463
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "PinnerService"

    .line 2465
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2466
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2467
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2469
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_64d

    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v5

    if-eqz v5, :cond_64d

    const-string v5, "ProfcollectForwardingService"

    .line 2470
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2471
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2472
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_64d
    const-string v5, "SignedConfigService"

    .line 2475
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2476
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 2477
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "AppIntegrityService"

    .line 2479
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2480
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2481
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartLogcatManager"

    .line 2483
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2484
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2485
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "Email Keystore Service"

    .line 2489
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_67d
    .catchall {:try_start_5fa .. :try_end_67d} :catchall_1cf3

    :try_start_67d
    const-string v5, "SystemServer"

    const-string v7, "Email Keystore Service"

    .line 2491
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "emailksproxy"

    .line 2492
    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v12}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68e
    .catchall {:try_start_67d .. :try_end_68e} :catchall_68f

    goto :goto_698

    :catchall_68f
    move-exception v0

    move-object v5, v0

    :try_start_691
    const-string v7, "SystemServer"

    const-string v8, "Failure starting Email Keystore Service"

    .line 2494
    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2496
    :goto_698
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SecIpmManagerService"

    .line 2500
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2501
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ipm.SecIpmManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2502
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SemInputDeviceManagerService"

    .line 2506
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_6af
    .catchall {:try_start_691 .. :try_end_6af} :catchall_1cf3

    :try_start_6af
    const-string v5, "SystemServer"

    const-string v7, "SemInputDeviceManagerService loader"

    .line 2508
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 2509
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v7, "getService"

    new-array v8, v6, [Ljava/lang/Class;

    .line 2510
    const-class v11, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v11, v8, v20

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v12, v8, v20

    .line 2511
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string v7, "SemInputDeviceManagerService"

    .line 2512
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6da
    .catchall {:try_start_6af .. :try_end_6da} :catchall_6db

    goto :goto_6e2

    :catchall_6db
    move-exception v0

    move-object v5, v0

    :try_start_6dd
    const-string v7, "Failed To Start SemInputDeviceManagerService loader"

    .line 2514
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2516
    :goto_6e2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_6e5
    .catchall {:try_start_6dd .. :try_end_6e5} :catchall_1cf3

    const-string v5, "detectSafeMode"

    .line 2526
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v5, "SystemServer"

    const-string v7, "!@Boot_EBS_D: detectSafeMode"

    .line 2527
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v8

    if-eqz v8, :cond_701

    .line 2534
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "airplane_mode_on"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_718

    .line 2536
    :cond_701
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1110034

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_718

    .line 2537
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v5, v7, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2540
    :cond_718
    :goto_718
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2556
    iget v5, v14, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v5, v6, :cond_746

    const-string v5, "StartInputMethodManagerLifecycle"

    .line 2557
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2558
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2559
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartAccessibilityManagerService"

    .line 2561
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2563
    :try_start_733
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_73a
    .catchall {:try_start_733 .. :try_end_73a} :catchall_73b

    goto :goto_743

    :catchall_73b
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting Accessibility Manager"

    .line 2565
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2567
    :goto_743
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_746
    const-string v5, "MakeDisplayReady"

    .line 2570
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2572
    :try_start_74b
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_74e
    .catchall {:try_start_74b .. :try_end_74e} :catchall_74f

    goto :goto_757

    :catchall_74f
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "making display ready"

    .line 2574
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2576
    :goto_757
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2579
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2580
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_78e

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_78e

    const-string v5, "Add SEM_FM_RADIO_SERVICE"

    .line 2581
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_775
    const-string v5, "FMPlayer"

    .line 2583
    const-class v7, Lcom/android/server/FMRadioService;

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "SystemServer"

    const-string v7, "FMRadio service added.."

    .line 2584
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_783
    .catchall {:try_start_775 .. :try_end_783} :catchall_784

    goto :goto_78b

    :catchall_784
    move-exception v0

    move-object v5, v0

    const-string v7, "Failure starting FM Radio Service"

    .line 2586
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2588
    :goto_78b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_78e
    const-string v5, "GameSDKService"

    .line 2592
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_793
    const-string v5, "SystemServer"

    const-string v7, "GameSDKService"

    .line 2595
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/gamesdk.jar"

    const-class v11, Lcom/android/server/SystemServer;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v5, v7, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.samsung.android.gamesdk.GameSDKService"

    .line 2597
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Class;

    .line 2598
    const-class v21, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v21, v11, v20

    const-class v21, Landroid/app/IActivityManager;

    aput-object v21, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v12, v11, v20

    .line 2599
    iget-object v7, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string v7, "gamesdk"

    .line 2600
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "GameSDKService loaded"

    .line 2601
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d8
    .catchall {:try_start_793 .. :try_end_7d8} :catchall_7d9

    goto :goto_7e2

    :catchall_7d9
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to add GameSDKService."

    .line 2603
    invoke-static {v7, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2606
    :goto_7e2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SamsungGameManager"

    .line 2610
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2612
    :try_start_7ea
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/gamemanager.jar"

    const-class v11, Lcom/android/server/SystemServer;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v5, v7, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.samsung.android.game.GameManagerService$Lifecycle"

    .line 2613
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2614
    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v5, "SystemServer"

    const-string v7, "SamsungGameManager Started"

    .line 2615
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_809
    .catchall {:try_start_7ea .. :try_end_809} :catchall_80a

    goto :goto_813

    :catchall_80a
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to start SamsungGameManager."

    .line 2617
    invoke-static {v7, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2619
    :goto_813
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SehCodecSolutionService"

    .line 2623
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2625
    :try_start_81b
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    const-class v11, Lcom/android/server/SystemServer;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v5, v7, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v7, "vendor.samsung.frameworks.codecsolution.SehCodecSolutionService"

    .line 2626
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_839

    const-string v5, "SystemServer"

    const-string v7, "Can\'t load SehCodecSolutionService class"

    .line 2628
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_878

    :cond_839
    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Class;

    .line 2630
    const-class v7, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v7, v11, v20

    const-class v7, Landroid/app/IActivityManager;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v12, v11, v20

    .line 2631
    iget-object v7, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string/jumbo v7, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    .line 2632
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "SehCodecSolutionService loaded"

    .line 2633
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "secmm.codecsolution.ready"

    const-string v7, "1"

    .line 2634
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86e
    .catchall {:try_start_81b .. :try_end_86e} :catchall_86f

    goto :goto_878

    :catchall_86f
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to start SehCodecSolutionService "

    .line 2637
    invoke-static {v7, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2639
    :goto_878
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "SehHdrSolutionService"

    .line 2643
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2645
    :try_start_880
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/vendor.samsung.frameworks.hdrsolution-service.jar"

    const-class v11, Lcom/android/server/SystemServer;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v5, v7, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v7, "vendor.samsung.frameworks.hdrsolution.SehHdrSolutionService"

    .line 2646
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_89e

    const-string v5, "SystemServer"

    const-string v7, "Can\'t load SehHdrSolutionService class"

    .line 2648
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8dd

    :cond_89e
    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Class;

    .line 2650
    const-class v7, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v7, v11, v20

    const-class v7, Landroid/app/IActivityManager;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v12, v11, v20

    .line 2651
    iget-object v7, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string/jumbo v7, "vendor.samsung.frameworks.hdrsolution.ISehHdrSolution/default"

    .line 2652
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "SehHdrSolutionService loaded"

    .line 2653
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "secmm.hdrsolution.ready"

    const-string v7, "1"

    .line 2654
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d3
    .catchall {:try_start_880 .. :try_end_8d3} :catchall_8d4

    goto :goto_8dd

    :catchall_8d4
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to start SehHdrSolutionService "

    .line 2657
    invoke-static {v7, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2659
    :goto_8dd
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2663
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSPERF_JDM_MODEL:Z

    if-nez v5, :cond_947

    const-string v5, "SystemServer"

    const-string v7, "PerfSDKService"

    .line 2664
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PerfSDKService"

    .line 2665
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2667
    :try_start_8f0
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/perfsdkservice.jar"

    const-class v11, Lcom/android/server/SystemServer;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v5, v7, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v7, "com.samsung.android.perfsdkservice.PerfSDKService"

    .line 2668
    invoke-virtual {v5, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_90d

    const-string v5, "SystemServer"

    const-string v7, "Can\'t load PerfSdkService class"

    .line 2670
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_944

    :cond_90d
    const/4 v7, 0x2

    new-array v11, v7, [Ljava/lang/Class;

    .line 2672
    const-class v7, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v7, v11, v20

    const-class v7, Landroid/app/IActivityManager;

    aput-object v7, v11, v6

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v20

    .line 2673
    iget-object v11, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v11, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    const-string/jumbo v7, "perfsdkservice"

    .line 2674
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    const-string v7, "PerfSDKService loaded"

    .line 2675
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93a
    .catchall {:try_start_8f0 .. :try_end_93a} :catchall_93b

    goto :goto_944

    :catchall_93b
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to add PerfSDKService."

    .line 2678
    invoke-static {v7, v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2680
    :goto_944
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2684
    :cond_947
    iget v5, v14, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v5, v6, :cond_9bf

    const-string v5, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    .line 2685
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9bf

    const-string v5, "StartStorageManagerService"

    .line 2686
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2692
    :try_start_95f
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v5, "mount"

    .line 2694
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2693
    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_970
    .catchall {:try_start_95f .. :try_end_970} :catchall_971

    goto :goto_979

    :catchall_971
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting StorageManagerService"

    .line 2696
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2698
    :goto_979
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartStorageStatsService"

    .line 2700
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2702
    :try_start_981
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_988
    .catchall {:try_start_981 .. :try_end_988} :catchall_989

    goto :goto_991

    :catchall_989
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting StorageStatsService"

    .line 2704
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2706
    :goto_991
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "DirEncryptSerrvice"

    .line 2709
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2711
    :try_start_999
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_9bc

    .line 2712
    new-instance v5, Lcom/android/server/DirEncryptService;

    invoke-direct {v5, v12}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    const-string v7, "SystemServer"

    const-string v11, "DirEncryptService.SystemReady"

    .line 2714
    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    invoke-virtual {v5}, Lcom/android/server/DirEncryptService;->systemReady()V

    const-string v7, "DirEncryptService"

    .line 2716
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9b3
    .catchall {:try_start_999 .. :try_end_9b3} :catchall_9b4

    goto :goto_9bc

    :catchall_9b4
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting DirEncryption service"

    .line 2722
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2724
    :cond_9bc
    :goto_9bc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_9bf
    const-string v5, "StartUiModeManager"

    .line 2731
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2732
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2733
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartLocaleManagerService"

    .line 2735
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2737
    :try_start_9d3
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_9da
    .catchall {:try_start_9d3 .. :try_end_9da} :catchall_9db

    goto :goto_9e3

    :catchall_9db
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting LocaleManagerService service"

    .line 2739
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2741
    :goto_9e3
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2744
    iget-boolean v5, v14, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_a26

    const-string v5, "UpdatePackagesIfNeeded"

    .line 2745
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v5, "SystemServer"

    const-string v7, "!@Boot_EBS_D: UpdatePackagesIfNeeded"

    .line 2746
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :try_start_9f6
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    const-string v7, "dexopt"

    invoke-virtual {v5, v7}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2749
    iget-object v5, v14, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_a04
    .catchall {:try_start_9f6 .. :try_end_a04} :catchall_a05

    goto :goto_a0d

    :catchall_a05
    move-exception v0

    move-object v5, v0

    :try_start_a07
    const-string/jumbo v7, "update packages"

    .line 2751
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0d
    .catchall {:try_start_a07 .. :try_end_a0d} :catchall_a1a

    .line 2753
    :goto_a0d
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    const-string v7, "dexopt"

    invoke-virtual {v5, v7}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2755
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_a26

    :catchall_a1a
    move-exception v0

    move-object v1, v0

    .line 2753
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const-string v3, "dexopt"

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2754
    throw v1

    :cond_a26
    :goto_a26
    const-string v5, "PerformFstrimIfNeeded"

    .line 2758
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2760
    :try_start_a2b
    iget-object v5, v14, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_a30
    .catchall {:try_start_a2b .. :try_end_a30} :catchall_a31

    goto :goto_a39

    :catchall_a31
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "performing fstrim"

    .line 2762
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2764
    :goto_a39
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2767
    iget v5, v14, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v5, v6, :cond_a59

    move-object/from16 v21, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    goto/16 :goto_177b

    :cond_a59
    const-string v5, "StartLockSettingsService"

    .line 2770
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2772
    :try_start_a5e
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v5, "lock_settings"

    .line 2774
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2773
    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v5
    :try_end_a70
    .catchall {:try_start_a5e .. :try_end_a70} :catchall_a71

    goto :goto_a7a

    :catchall_a71
    move-exception v0

    move-object v5, v0

    const-string/jumbo v7, "starting LockSettingsService service"

    .line 2776
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    .line 2778
    :goto_a7a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v7, "ro.frp.pst"

    .line 2780
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_a9c

    const-string v11, "StartPersistentDataBlock"

    .line 2782
    invoke-virtual {v13, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2783
    iget-object v11, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v11, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2784
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_a9c
    const-string v6, "StartTestHarnessMode"

    .line 2787
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2788
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v6, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2789
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v7, :cond_ab3

    .line 2791
    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v6

    if-eqz v6, :cond_ac2

    :cond_ab3
    const-string v6, "StartOemLockService"

    .line 2793
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2794
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2795
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_ac2
    const-string v6, "StartDeviceIdleController"

    .line 2798
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2799
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.DeviceIdleController"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2800
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v6, "StartDevicePolicyManager"

    .line 2804
    invoke-virtual {v13, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2805
    iget-object v6, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2806
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v18, :cond_b01

    const-string v7, "StartStatusBarManagerService"

    .line 2809
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2811
    :try_start_aea
    new-instance v7, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v7, v12}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v11, "statusbar"

    .line 2812
    invoke-static {v11, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_af5
    .catchall {:try_start_aea .. :try_end_af5} :catchall_af6

    goto :goto_afe

    :catchall_af6
    move-exception v0

    move-object v7, v0

    const-string/jumbo v11, "starting StatusBarManagerService"

    .line 2814
    invoke-virtual {v14, v11, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2816
    :goto_afe
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_b01
    const-string v7, "StartEnterpriseDeviceManagerService"

    .line 2821
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2823
    :try_start_b06
    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;

    invoke-virtual {v7, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2824
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    move-result-object v7

    iput-object v7, v14, Lcom/android/server/SystemServer;->enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    const-string v7, "SystemServer"

    const-string v11, "Enterprise Policy manager service created..."

    .line 2825
    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1a
    .catchall {:try_start_b06 .. :try_end_b1a} :catchall_b1b

    goto :goto_b23

    :catchall_b1b
    move-exception v0

    move-object v7, v0

    const-string/jumbo v11, "starting EnterpriseDeviceManagerService"

    .line 2827
    invoke-virtual {v14, v11, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2829
    :goto_b23
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2832
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result v7

    if-lez v7, :cond_b4a

    :try_start_b2c
    const-string v7, "[KnoxAnalytics] System Service"

    .line 2834
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2835
    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v7, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2836
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_b3b
    .catchall {:try_start_b2c .. :try_end_b3b} :catchall_b3e

    move-object/from16 v21, v3

    goto :goto_b53

    :catchall_b3e
    move-exception v0

    move-object v7, v0

    const-string v11, "SystemServer"

    move-object/from16 v21, v3

    const-string v3, "[KnoxAnalytics] Failure starting System Service"

    .line 2838
    invoke-static {v11, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b53

    :cond_b4a
    move-object/from16 v21, v3

    const-string v3, "SystemServer"

    const-string v7, "KnoxAnalyticsSystemService not defined by OEM"

    .line 2841
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b53
    const-string v3, "KnoxCustom Policy"

    .line 2848
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2850
    :try_start_b58
    new-instance v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {v3, v12}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V

    iput-object v3, v14, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const-string/jumbo v7, "knoxcustom"

    .line 2851
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v3, "knoxcustom"

    .line 2852
    iget-object v7, v14, Lcom/android/server/SystemServer;->knoxCustomPolicy:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v3, v7}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "SystemServer"

    const-string v7, "KnoxCustom Policy added."

    .line 2853
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b74
    .catchall {:try_start_b58 .. :try_end_b74} :catchall_b75

    goto :goto_b7e

    :catchall_b75
    move-exception v0

    move-object v3, v0

    const-string v7, "SystemServer"

    const-string v11, "Fail KnoxCustom Policy."

    .line 2855
    invoke-static {v7, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2857
    :goto_b7e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v3, 0x104031f

    .line 2876
    invoke-virtual {v14, v12, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_b9a

    const-string v3, "StartMusicRecognitionManagerService"

    .line 2878
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2879
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.musicrecognition.MusicRecognitionManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2880
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_ba1

    :cond_b9a
    const-string v3, "SystemServer"

    const-string v7, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    .line 2882
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :goto_ba1
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2887
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2888
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2889
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2890
    invoke-virtual {v14, v12, v13}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2891
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/SystemServer;->startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string v3, "StartSpeechRecognitionManagerService"

    .line 2894
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2895
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.speech.SpeechRecognitionManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2896
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const v3, 0x1040313

    .line 2899
    invoke-virtual {v14, v12, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_bdb

    const-string v3, "StartAppPredictionService"

    .line 2900
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2901
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2902
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_be2

    :cond_bdb
    const-string v3, "SystemServer"

    const-string v7, "AppPredictionService not defined by OEM"

    .line 2904
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be2
    const v3, 0x104031b

    .line 2908
    invoke-virtual {v14, v12, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_bfb

    const-string v3, "StartContentSuggestionsService"

    .line 2909
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2910
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2911
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_c02

    :cond_bfb
    const-string v3, "SystemServer"

    const-string v7, "ContentSuggestionsService not defined by OEM"

    .line 2913
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c02
    :try_start_c02
    const-string v3, "SemClipboardService"

    .line 2918
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v3, "SystemServer"

    const-string v7, "SemClipboardService"

    .line 2919
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "semclipboard"

    .line 2920
    new-instance v7, Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {v7, v12}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c19
    .catchall {:try_start_c02 .. :try_end_c19} :catchall_c1a

    goto :goto_c22

    :catchall_c1a
    move-exception v0

    move-object v3, v0

    :try_start_c1c
    const-string/jumbo v7, "starting SemClipboardService"

    .line 2922
    invoke-virtual {v14, v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c22
    .catchall {:try_start_c1c .. :try_end_c22} :catchall_1cd7

    .line 2924
    :goto_c22
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "StartSearchUiService"

    .line 2930
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2931
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.searchui.SearchUiManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2932
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "StartSmartspaceService"

    .line 2936
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2937
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.smartspace.SmartspaceManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2938
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "StartCloudSearchService"

    .line 2942
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2943
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.cloudsearch.CloudSearchManagerService"

    invoke-virtual {v3, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2944
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "InitConnectivityModuleConnector"

    .line 2946
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2948
    :try_start_c57
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_c5e
    .catchall {:try_start_c57 .. :try_end_c5e} :catchall_c5f

    goto :goto_c67

    :catchall_c5f
    move-exception v0

    move-object v3, v0

    const-string/jumbo v7, "initializing ConnectivityModuleConnector"

    .line 2950
    invoke-virtual {v14, v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2952
    :goto_c67
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "InitNetworkStackClient"

    .line 2954
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2956
    :try_start_c6f
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkStackClient;->init()V
    :try_end_c76
    .catchall {:try_start_c6f .. :try_end_c76} :catchall_c77

    goto :goto_c7f

    :catchall_c77
    move-exception v0

    move-object v3, v0

    const-string/jumbo v7, "initializing NetworkStackClient"

    .line 2958
    invoke-virtual {v14, v7, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2960
    :goto_c7f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "StartNetworkManagementService"

    .line 2962
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2964
    :try_start_c87
    invoke-static {v12}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v3
    :try_end_c8b
    .catchall {:try_start_c87 .. :try_end_c8b} :catchall_c95

    :try_start_c8b
    const-string/jumbo v7, "network_management"

    .line 2965
    invoke-static {v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c91
    .catchall {:try_start_c8b .. :try_end_c91} :catchall_c92

    goto :goto_c9e

    :catchall_c92
    move-exception v0

    move-object v7, v0

    goto :goto_c98

    :catchall_c95
    move-exception v0

    move-object v7, v0

    const/4 v3, 0x0

    :goto_c98
    const-string/jumbo v11, "starting NetworkManagement Service"

    .line 2967
    invoke-virtual {v14, v11, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2969
    :goto_c9e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2973
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v7, :cond_cf1

    const-string v7, "StartSpegService"

    .line 2975
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2979
    :try_start_caa
    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/SpegService;
    :try_end_cb2
    .catch Ljava/lang/RuntimeException; {:try_start_caa .. :try_end_cb2} :catch_cbb

    .line 2980
    :try_start_cb2
    invoke-static {v2, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_cb5
    .catch Ljava/lang/RuntimeException; {:try_start_cb2 .. :try_end_cb5} :catch_cb8

    move-object/from16 v22, v5

    goto :goto_cc7

    :catch_cb8
    move-exception v0

    move-object v2, v0

    goto :goto_cbe

    :catch_cbb
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    :goto_cbe
    const-string v11, "SystemServer"

    move-object/from16 v22, v5

    const-string v5, "Failure starting SpegService helper"

    .line 2983
    invoke-static {v11, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2985
    :goto_cc7
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2988
    sget-boolean v2, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez v2, :cond_cf3

    if-eqz v7, :cond_cf3

    const-string v2, "AppPrelaunchService"

    .line 2989
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2991
    :try_start_cd5
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 2992
    invoke-virtual {v2, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    .line 2993
    iget-object v5, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v7, v5}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->initPrelauncher(Lcom/android/server/SpegService;Lcom/android/server/am/ActivityManagerService;)V

    .line 2996
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_ce5
    .catch Ljava/lang/RuntimeException; {:try_start_cd5 .. :try_end_ce5} :catch_ce6

    goto :goto_ced

    :catch_ce6
    const-string v1, "SystemServer"

    const-string v2, "Failed to start prelaunch service"

    .line 2998
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :goto_ced
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_cf3

    :cond_cf1
    move-object/from16 v22, v5

    :cond_cf3
    :goto_cf3
    const-string v1, "StartFontManagerService"

    .line 3006
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3007
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v2, v12, v8}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 3008
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartTextServicesManager"

    .line 3010
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3011
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3012
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v4, :cond_d25

    const-string v1, "StartTextClassificationManagerService"

    .line 3015
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3016
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 3017
    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3018
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_d25
    const-string v1, "StartNetworkScoreService"

    .line 3021
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3022
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3023
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartNetworkStatsService"

    .line 3025
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3028
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.NetworkStatsServiceInitializer"

    const-string v4, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3030
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartNetworkPolicyManagerService"

    .line 3032
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3034
    :try_start_d4a
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v12, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_d51
    .catchall {:try_start_d4a .. :try_end_d51} :catchall_d5b

    :try_start_d51
    const-string/jumbo v2, "netpolicy"

    .line 3036
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d57
    .catchall {:try_start_d51 .. :try_end_d57} :catchall_d58

    goto :goto_d64

    :catchall_d58
    move-exception v0

    move-object v2, v0

    goto :goto_d5e

    :catchall_d5b
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_d5e
    const-string/jumbo v4, "starting NetworkPolicy Service"

    .line 3038
    invoke-virtual {v14, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3040
    :goto_d64
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartUrspService"

    .line 3043
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3045
    :try_start_d6c
    new-instance v2, Lcom/android/server/net/UrspService;

    invoke-direct {v2, v12}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;)V
    :try_end_d71
    .catchall {:try_start_d6c .. :try_end_d71} :catchall_d7b

    :try_start_d71
    const-string/jumbo v4, "urspservice"

    .line 3046
    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d77
    .catchall {:try_start_d71 .. :try_end_d77} :catchall_d78

    goto :goto_d84

    :catchall_d78
    move-exception v0

    move-object v4, v0

    goto :goto_d7e

    :catchall_d7b
    move-exception v0

    move-object v4, v0

    const/4 v2, 0x0

    :goto_d7e
    const-string/jumbo v5, "starting URSP Service"

    .line 3048
    invoke-virtual {v14, v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3050
    :goto_d84
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3053
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db5

    const-string v4, "StartWifi"

    .line 3056
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3057
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    const-string v7, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v4, v5, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3059
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v4, "StartWifiScanning"

    .line 3060
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3061
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v7, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v4, v5, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3063
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3066
    :cond_db5
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi.rtt"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_dd2

    const-string v4, "StartRttService"

    .line 3068
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3069
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.rtt.RttService"

    const-string v7, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v4, v5, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3071
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3074
    :cond_dd2
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi.aware"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_def

    const-string v4, "StartWifiAware"

    .line 3076
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3077
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.aware.WifiAwareService"

    const-string v7, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v4, v5, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3079
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3082
    :cond_def
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi.direct"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e0c

    const-string v4, "StartWifiP2P"

    .line 3084
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3085
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v7, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v4, v5, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3087
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3090
    :cond_e0c
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.lowpan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e27

    const-string v4, "StartLowpan"

    .line 3092
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3093
    iget-object v4, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3094
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_e27
    const-string v4, "StartPacProxyService"

    .line 3097
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3099
    :try_start_e2c
    new-instance v4, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v4, v12}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "pac_proxy"

    .line 3100
    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e37
    .catchall {:try_start_e2c .. :try_end_e37} :catchall_e38

    goto :goto_e40

    :catchall_e38
    move-exception v0

    move-object v4, v0

    const-string/jumbo v5, "starting PacProxyService"

    .line 3102
    invoke-virtual {v14, v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3104
    :goto_e40
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v4, "StartExtendedEthernetService"

    .line 3107
    invoke-virtual {v13, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3109
    :try_start_e48
    new-instance v4, Lcom/android/server/ExtendedEthernetService;

    invoke-direct {v4, v12}, Lcom/android/server/ExtendedEthernetService;-><init>(Landroid/content/Context;)V
    :try_end_e4d
    .catchall {:try_start_e48 .. :try_end_e4d} :catchall_e56

    :try_start_e4d
    const-string v5, "extendedethernetservice"

    .line 3110
    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e52
    .catchall {:try_start_e4d .. :try_end_e52} :catchall_e53

    goto :goto_e5f

    :catchall_e53
    move-exception v0

    move-object v5, v0

    goto :goto_e59

    :catchall_e56
    move-exception v0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_e59
    const-string/jumbo v7, "starting ExtendedEthernetService"

    .line 3112
    invoke-virtual {v14, v7, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3114
    :goto_e5f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartIntelligentBatterySaverService"

    .line 3118
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3119
    new-instance v5, Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {v5, v12}, Lcom/android/server/ibs/IntelligentBatterySaverService;-><init>(Landroid/content/Context;)V

    const-string v7, "IntelligentBatterySaverService"

    .line 3120
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3121
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3125
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-nez v5, :cond_eb2

    const-string v5, "StartKnoxGuard"

    .line 3126
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_e7f
    const-string/jumbo v5, "ro.product.first_api_level"

    const/4 v7, 0x0

    .line 3128
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_e97

    const-string/jumbo v5, "knoxguard_service"

    .line 3129
    new-instance v7, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;

    invoke-direct {v7, v12}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_eaf

    :cond_e97
    const-string/jumbo v5, "knoxguard_service"

    .line 3131
    new-instance v7, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {v7, v12}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ea2
    .catchall {:try_start_e7f .. :try_end_ea2} :catchall_ea3

    goto :goto_eaf

    :catchall_ea3
    move-exception v0

    move-object v5, v0

    const-string v7, "SystemServer"

    const-string v11, "Failed to add KnoxGuardService."

    .line 3134
    invoke-static {v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3137
    :goto_eaf
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_eb2
    const-string v5, "StartConnectivityService"

    .line 3141
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3145
    iget-object v5, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ConnectivityServiceInitializer"

    const-string v11, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v5, v7, v11}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3147
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 3148
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v5, "StartVpnManagerService"

    .line 3150
    invoke-virtual {v13, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3152
    :try_start_ecb
    invoke-static {v12}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v5
    :try_end_ecf
    .catchall {:try_start_ecb .. :try_end_ecf} :catchall_ed9

    :try_start_ecf
    const-string/jumbo v7, "vpn_management"

    .line 3153
    invoke-static {v7, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ed5
    .catchall {:try_start_ecf .. :try_end_ed5} :catchall_ed6

    goto :goto_ee2

    :catchall_ed6
    move-exception v0

    move-object v7, v0

    goto :goto_edc

    :catchall_ed9
    move-exception v0

    move-object v7, v0

    const/4 v5, 0x0

    :goto_edc
    const-string/jumbo v11, "starting VPN Manager Service"

    .line 3155
    invoke-virtual {v14, v11, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3157
    :goto_ee2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "KnoxVpnService"

    .line 3180
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3195
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v7, "StartVcnManagementService"

    .line 3198
    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3200
    :try_start_ef2
    invoke-static {v12}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    move-result-object v7
    :try_end_ef6
    .catchall {:try_start_ef2 .. :try_end_ef6} :catchall_f04

    :try_start_ef6
    const-string/jumbo v11, "vcn_management"

    .line 3201
    invoke-static {v11, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_efc
    .catchall {:try_start_ef6 .. :try_end_efc} :catchall_eff

    move-object/from16 v25, v1

    goto :goto_f0f

    :catchall_eff
    move-exception v0

    move-object v11, v0

    move-object/from16 v25, v1

    goto :goto_f09

    :catchall_f04
    move-exception v0

    move-object v11, v0

    move-object/from16 v25, v1

    const/4 v7, 0x0

    :goto_f09
    const-string/jumbo v1, "starting VCN Management Service"

    .line 3203
    invoke-virtual {v14, v1, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3205
    :goto_f0f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartSystemUpdateManagerService"

    .line 3223
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_f17
    const-string/jumbo v1, "system_update"

    .line 3225
    new-instance v11, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v11, v12}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f22
    .catchall {:try_start_f17 .. :try_end_f22} :catchall_f23

    goto :goto_f2b

    :catchall_f23
    move-exception v0

    move-object v1, v0

    const-string/jumbo v11, "starting SystemUpdateManagerService"

    .line 3228
    invoke-virtual {v14, v11, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3230
    :goto_f2b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartUpdateLockService"

    .line 3232
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_f33
    const-string/jumbo v1, "updatelock"

    .line 3234
    new-instance v11, Lcom/android/server/UpdateLockService;

    invoke-direct {v11, v12}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f3e
    .catchall {:try_start_f33 .. :try_end_f3e} :catchall_f3f

    goto :goto_f47

    :catchall_f3f
    move-exception v0

    move-object v1, v0

    const-string/jumbo v11, "starting UpdateLockService"

    .line 3237
    invoke-virtual {v14, v11, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3239
    :goto_f47
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartNotificationManager"

    .line 3241
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3242
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3243
    invoke-static {v12}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 3244
    invoke-static {v12}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v1, "notification"

    .line 3246
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3245
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 3247
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartDeviceMonitor"

    .line 3249
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3250
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v1, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3251
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartLocationManagerService"

    .line 3253
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3254
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v1, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3255
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartSLocationService"

    .line 3258
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_f8c
    const-string v1, "SystemServer"

    const-string v11, "SLocation Manager"

    .line 3260
    invoke-static {v1, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.location.SLocationLoader"

    .line 3261
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v11, "getSLocationService"
    :try_end_f9c
    .catchall {:try_start_f8c .. :try_end_f9c} :catchall_fc6

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    const/4 v2, 0x1

    :try_start_fa1
    new-array v3, v2, [Ljava/lang/Class;

    .line 3262
    const-class v28, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v28, v3, v20

    invoke-virtual {v1, v11, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v12, v3, v20
    :try_end_fb1
    .catchall {:try_start_fa1 .. :try_end_fb1} :catchall_fc4

    const/4 v2, 0x0

    .line 3263
    :try_start_fb2
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_fb8
    .catchall {:try_start_fb2 .. :try_end_fb8} :catchall_fc2

    :try_start_fb8
    const-string/jumbo v3, "sec_location"

    .line 3264
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fbe
    .catchall {:try_start_fb8 .. :try_end_fbe} :catchall_fbf

    goto :goto_fd3

    :catchall_fbf
    move-exception v0

    move-object v3, v0

    goto :goto_fce

    :catchall_fc2
    move-exception v0

    goto :goto_fcc

    :catchall_fc4
    move-exception v0

    goto :goto_fcb

    :catchall_fc6
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    :goto_fcb
    const/4 v2, 0x0

    :goto_fcc
    move-object v3, v0

    move-object v1, v2

    :goto_fce
    const-string v11, "Starting SLocationService"

    .line 3266
    invoke-virtual {v14, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3268
    :goto_fd3
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v3, "StartCountryDetectorService"

    .line 3271
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3273
    :try_start_fdb
    new-instance v3, Lcom/android/server/CountryDetectorService;

    invoke-direct {v3, v12}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_fe0
    .catchall {:try_start_fdb .. :try_end_fe0} :catchall_fe9

    :try_start_fe0
    const-string v11, "country_detector"

    .line 3274
    invoke-static {v11, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fe5
    .catchall {:try_start_fe0 .. :try_end_fe5} :catchall_fe6

    goto :goto_ff2

    :catchall_fe6
    move-exception v0

    move-object v11, v0

    goto :goto_fec

    :catchall_fe9
    move-exception v0

    move-object v11, v0

    move-object v3, v2

    :goto_fec
    const-string/jumbo v2, "starting Country Detector"

    .line 3276
    invoke-virtual {v14, v2, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3278
    :goto_ff2
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartTimeDetectorService"

    .line 3280
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3282
    :try_start_ffa
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1001
    .catchall {:try_start_ffa .. :try_end_1001} :catchall_1002

    goto :goto_100a

    :catchall_1002
    move-exception v0

    move-object v2, v0

    const-string/jumbo v11, "starting TimeDetectorService service"

    .line 3284
    invoke-virtual {v14, v11, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3286
    :goto_100a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartTimeZoneDetectorService"

    .line 3288
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3290
    :try_start_1012
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1019
    .catchall {:try_start_1012 .. :try_end_1019} :catchall_101a

    goto :goto_1022

    :catchall_101a
    move-exception v0

    move-object v2, v0

    const-string/jumbo v11, "starting TimeZoneDetectorService service"

    .line 3292
    invoke-virtual {v14, v11, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3294
    :goto_1022
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartLocationTimeZoneManagerService"

    .line 3296
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3298
    :try_start_102a
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1031
    .catchall {:try_start_102a .. :try_end_1031} :catchall_1032

    goto :goto_103a

    :catchall_1032
    move-exception v0

    move-object v2, v0

    const-string/jumbo v11, "starting LocationTimeZoneManagerService service"

    .line 3300
    invoke-virtual {v14, v11, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3302
    :goto_103a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3304
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1110139

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1062

    const-string v2, "StartGnssTimeUpdateService"

    .line 3305
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3307
    :try_start_104f
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1056
    .catchall {:try_start_104f .. :try_end_1056} :catchall_1057

    goto :goto_105f

    :catchall_1057
    move-exception v0

    move-object v2, v0

    const-string/jumbo v11, "starting GnssTimeUpdateService service"

    .line 3309
    invoke-virtual {v14, v11, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3311
    :goto_105f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1062
    if-nez v18, :cond_107c

    const-string v2, "StartSearchManagerService"

    .line 3315
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3317
    :try_start_1069
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1070
    .catchall {:try_start_1069 .. :try_end_1070} :catchall_1071

    goto :goto_1079

    :catchall_1071
    move-exception v0

    move-object v2, v0

    const-string/jumbo v11, "starting Search Service"

    .line 3319
    invoke-virtual {v14, v11, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3321
    :goto_1079
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3324
    :cond_107c
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x111014b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1099

    const-string v2, "StartWallpaperManagerService"

    .line 3325
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3326
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3327
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_10a0

    :cond_1099
    const-string v2, "SystemServer"

    const-string v11, "Wallpaper service disabled by config"

    .line 3329
    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10a0
    const-string v2, "StartWallpaperEffectsGenerationService"

    .line 3335
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3336
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3338
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartAudioService"

    .line 3340
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-nez v19, :cond_10c2

    .line 3342
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v2, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v19, v1

    move-object/from16 v28, v3

    goto :goto_1107

    .line 3344
    :cond_10c2
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040338

    .line 3345
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3347
    :try_start_10cd
    iget-object v11, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_10cf
    .catchall {:try_start_10cd .. :try_end_10cf} :catchall_10ec

    move-object/from16 v19, v1

    :try_start_10d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10d9
    .catchall {:try_start_10d1 .. :try_end_10d9} :catchall_10ea

    move-object/from16 v28, v3

    :try_start_10db
    const-string v3, "$Lifecycle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_10e7
    .catchall {:try_start_10db .. :try_end_10e7} :catchall_10e8

    goto :goto_1107

    :catchall_10e8
    move-exception v0

    goto :goto_10f1

    :catchall_10ea
    move-exception v0

    goto :goto_10ef

    :catchall_10ec
    move-exception v0

    move-object/from16 v19, v1

    :goto_10ef
    move-object/from16 v28, v3

    :goto_10f1
    move-object v1, v0

    .line 3349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "starting "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3352
    :goto_1107
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartSoundTriggerMiddlewareService"

    .line 3354
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3355
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3356
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "LedCoverAppService"

    .line 3359
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3360
    new-instance v1, Lcom/android/server/ledcoverapp/LedCoverAppService;

    invoke-direct {v1, v12}, Lcom/android/server/ledcoverapp/LedCoverAppService;-><init>(Landroid/content/Context;)V

    iput-object v1, v14, Lcom/android/server/SystemServer;->mLedCoverAppService:Lcom/android/server/ledcoverapp/LedCoverAppService;

    .line 3361
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartLedBackCoverService"

    .line 3365
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3366
    new-instance v1, Lcom/android/server/ledcover/LedBackCoverService;

    invoke-direct {v1, v12}, Lcom/android/server/ledcover/LedBackCoverService;-><init>(Landroid/content/Context;)V

    iput-object v1, v14, Lcom/android/server/SystemServer;->mLedBackCoverService:Lcom/android/server/ledcover/LedBackCoverService;

    .line 3367
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3370
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.broadcastradio"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1150

    const-string v1, "StartBroadcastRadioService"

    .line 3371
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3372
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1150
    const-string v1, "StartDockObserver"

    .line 3376
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3377
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/DockObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3378
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v18, :cond_1170

    const-string v1, "StartThermalObserver"

    .line 3381
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3382
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3383
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1170
    if-nez v18, :cond_118b

    const-string v1, "StartWiredAccessoryManager"

    .line 3387
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3390
    :try_start_1177
    new-instance v1, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v1, v12, v9}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v9, v1}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_117f
    .catchall {:try_start_1177 .. :try_end_117f} :catchall_1180

    goto :goto_1188

    :catchall_1180
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "starting WiredAccessoryManager"

    .line 3393
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3395
    :goto_1188
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3398
    :cond_118b
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.midi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a4

    const-string v1, "StartMidiManager"

    .line 3400
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3401
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3402
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_11a4
    const-string v1, "StartAdbService"

    .line 3406
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3408
    :try_start_11a9
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_11b0
    .catchall {:try_start_11a9 .. :try_end_11b0} :catchall_11b1

    goto :goto_11b8

    :catchall_11b1
    const-string v1, "SystemServer"

    const-string v2, "Failure starting AdbService"

    .line 3410
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :goto_11b8
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3414
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.usb.host"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11d1

    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.usb.accessory"

    .line 3415
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11d1

    if-eqz v17, :cond_11e0

    :cond_11d1
    const-string v1, "StartUsbService"

    .line 3419
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3420
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3421
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_11e0
    if-nez v18, :cond_11ff

    const-string v1, "StartSerialService"

    .line 3425
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3428
    :try_start_11e7
    new-instance v1, Lcom/android/server/SerialService;

    invoke-direct {v1, v12}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "serial"

    .line 3429
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11f2
    .catchall {:try_start_11e7 .. :try_end_11f2} :catchall_11f3

    goto :goto_11fc

    :catchall_11f3
    move-exception v0

    move-object v1, v0

    const-string v2, "SystemServer"

    const-string v3, "Failure starting SerialService"

    .line 3431
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3433
    :goto_11fc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_11ff
    const-string v1, "StartHardwarePropertiesManagerService"

    .line 3436
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3438
    :try_start_1204
    new-instance v1, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v1, v12}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "hardware_properties"

    .line 3439
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_120f
    .catchall {:try_start_1204 .. :try_end_120f} :catchall_1210

    goto :goto_1219

    :catchall_1210
    move-exception v0

    move-object v1, v0

    const-string v2, "SystemServer"

    const-string v3, "Failure starting HardwarePropertiesManagerService"

    .line 3442
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3444
    :goto_1219
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v18, :cond_122d

    const-string v1, "StartTwilightService"

    .line 3447
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3448
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3449
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_122d
    const-string v1, "StartColorDisplay"

    .line 3452
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3453
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3454
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartJobScheduler"

    .line 3457
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3458
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3459
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartSoundTrigger"

    .line 3461
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3462
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3463
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartTrustManager"

    .line 3465
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3466
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3467
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3469
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.backup"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1282

    const-string v1, "StartBackupManager"

    .line 3470
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3471
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3472
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3475
    :cond_1282
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1299

    .line 3476
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_12a8

    :cond_1299
    const-string v1, "StartAppWidgetService"

    .line 3477
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3478
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3479
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_12a8
    const-string v1, "StartVoiceRecognitionManager"

    .line 3486
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3487
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3488
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartAppHibernationService"

    .line 3490
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3491
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.apphibernation.AppHibernationService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3492
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3494
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_12df

    const-string v1, "StartGestureLauncher"

    .line 3495
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3496
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3497
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_12df
    const-string v1, "StartSensorNotification"

    .line 3499
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3500
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3501
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3503
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.context_hub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1307

    const-string v1, "StartContextHubSystemService"

    .line 3504
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3505
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3506
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1307
    const-string v1, "StartDiskStatsService"

    .line 3509
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_130c
    const-string v1, "diskstats"

    .line 3511
    new-instance v2, Lcom/android/server/DiskStatsService;

    invoke-direct {v2, v12}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1316
    .catchall {:try_start_130c .. :try_end_1316} :catchall_1317

    goto :goto_131f

    :catchall_1317
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "starting DiskStats Service"

    .line 3513
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3515
    :goto_131f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "RuntimeService"

    .line 3517
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1327
    const-string/jumbo v1, "runtime"

    .line 3519
    new-instance v2, Lcom/android/server/RuntimeService;

    invoke-direct {v2, v12}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1332
    .catchall {:try_start_1327 .. :try_end_1332} :catchall_1333

    goto :goto_133b

    :catchall_1333
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "starting RuntimeService"

    .line 3521
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3523
    :goto_133b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3529
    iget-boolean v1, v14, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v1, :cond_1351

    .line 3530
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1351

    const/4 v1, 0x1

    goto :goto_1352

    :cond_1351
    const/4 v1, 0x0

    :goto_1352
    if-eqz v1, :cond_1363

    const-string v1, "StartTimeZoneRulesManagerService"

    .line 3533
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3534
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3535
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1363
    if-nez v18, :cond_1388

    if-nez v15, :cond_1388

    const-string v1, "StartNetworkTimeUpdateService"

    .line 3539
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3541
    :try_start_136c
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v1, v12}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_1371
    .catchall {:try_start_136c .. :try_end_1371} :catchall_137b

    :try_start_1371
    const-string/jumbo v2, "network_time_update_service"

    .line 3542
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1377
    .catchall {:try_start_1371 .. :try_end_1377} :catchall_1378

    goto :goto_1384

    :catchall_1378
    move-exception v0

    move-object v2, v0

    goto :goto_137e

    :catchall_137b
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x0

    :goto_137e
    const-string/jumbo v3, "starting NetworkTimeUpdate service"

    .line 3544
    invoke-virtual {v14, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3546
    :goto_1384
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1389

    :cond_1388
    const/4 v1, 0x0

    :goto_1389
    const-string v2, "CertBlacklister"

    .line 3549
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3551
    :try_start_138e
    new-instance v2, Lcom/android/server/CertBlacklister;

    invoke-direct {v2, v12}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_1393
    .catchall {:try_start_138e .. :try_end_1393} :catchall_1394

    goto :goto_139c

    :catchall_1394
    move-exception v0

    move-object v2, v0

    const-string/jumbo v3, "starting CertBlacklister"

    .line 3553
    invoke-virtual {v14, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3555
    :goto_139c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartEmergencyAffordanceService"

    .line 3559
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3560
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3561
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v2, "startBlobStoreManagerService"

    .line 3564
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3565
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3566
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartDreamManager"

    .line 3569
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3570
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3571
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "AddGraphicsStatsService"

    .line 3573
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string/jumbo v2, "graphicsstats"

    .line 3574
    new-instance v3, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v3, v12}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3576
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3578
    sget-boolean v2, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v2, :cond_13f6

    const-string v2, "AddCoverageService"

    .line 3579
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v2, "coverage"

    .line 3580
    new-instance v3, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v3}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3581
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3584
    :cond_13f6
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.print"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140f

    const-string v2, "StartPrintManager"

    .line 3585
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3586
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.print.PrintManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3587
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_140f
    const-string v2, "StartAttestationVerificationService"

    .line 3590
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3591
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3592
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3594
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.companion_device_setup"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1446

    const-string v2, "StartCompanionDeviceManager"

    .line 3595
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3596
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3597
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartVirtualDeviceManager"

    .line 3600
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3601
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.companion.virtual.VirtualDeviceManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3602
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1446
    const-string v2, "StartRestrictionManager"

    .line 3605
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3606
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3607
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "CocktailBarService"

    .line 3611
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3612
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3613
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3618
    iget v2, v14, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_14a3

    const-string/jumbo v2, "vold.decrypt"

    .line 3619
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_restart_min_framework"

    .line 3620
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_149c

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1482

    goto :goto_149c

    .line 3623
    :cond_1482
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.sec.feature.cover"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14a3

    const-string v2, "StartCoverService"

    .line 3624
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3625
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3626
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_14a3

    :cond_149c
    :goto_149c
    const-string v2, "SystemServer"

    const-string v3, "Detected encryption in progress - unable CoverManagerService"

    .line 3621
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14a3
    :goto_14a3
    const-string v2, "SemInputDeviceManagerService SystemReady"

    .line 3634
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_14a8
    const-string v2, "SystemServer"

    const-string v3, "SemInputDeviceManagerService SystemReady loader"

    .line 3636
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.hardware.secinputdev.SemInputDeviceManagerLoader"

    .line 3637
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "systemReady"

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Class;

    .line 3638
    invoke-virtual {v2, v3, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v15, v11, [Ljava/lang/Object;

    .line 3639
    invoke-virtual {v3, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14c4
    .catchall {:try_start_14a8 .. :try_end_14c4} :catchall_14c5

    goto :goto_14cc

    :catchall_14c5
    move-exception v0

    move-object v2, v0

    const-string v3, "Failed To Call SemInputDeviceManagerService SystemReady loader "

    .line 3641
    invoke-virtual {v14, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3643
    :goto_14cc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "Samsung Accessory Manager"

    .line 3647
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3649
    :try_start_14d4
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_151b

    const-string v3, "com.sec.feature.nfc_authentication"

    .line 3651
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14fa

    const-string v3, "com.sec.feature.nfc_authentication_cover"

    .line 3652
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14fa

    const-string v3, "com.sec.feature.usb_authentication"

    .line 3653
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14fa

    const-string v3, "com.sec.feature.wirelesscharger_authentication"

    .line 3654
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_151b

    :cond_14fa
    const-string v2, "SystemServer"

    const-string v3, "Samsung Accessory Manager"

    .line 3655
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {v2, v12, v9}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v2, v14, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 3657
    const-class v3, Lcom/samsung/accessory/manager/SAccessoryManagerInternal;

    invoke-static {v3, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3658
    iget-object v2, v14, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v9, v2}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_1512
    .catchall {:try_start_14d4 .. :try_end_1512} :catchall_1513

    goto :goto_151b

    :catchall_1513
    move-exception v0

    move-object v2, v0

    const-string/jumbo v3, "starting SAccessoryManager"

    .line 3662
    invoke-virtual {v14, v3, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3664
    :cond_151b
    :goto_151b
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartAODManagerService"

    .line 3668
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3669
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.aod.AODManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3670
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v2, "StartMediaSessionService"

    .line 3673
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3674
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaSessionService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3675
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3677
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.hdmi.cec"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1555

    const-string v2, "StartHdmiControlService"

    .line 3678
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3679
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3680
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3683
    :cond_1555
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.live_tv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1569

    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.leanback"

    .line 3684
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1578

    :cond_1569
    const-string v2, "StartTvInteractiveAppManager"

    .line 3685
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3686
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3687
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3690
    :cond_1578
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.live_tv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_158c

    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.leanback"

    .line 3691
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159b

    :cond_158c
    const-string v2, "StartTvInputManager"

    .line 3692
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3693
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3694
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3697
    :cond_159b
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.tv.tuner"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15b4

    const-string v2, "StartTunerResourceManager"

    .line 3698
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3699
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3700
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3703
    :cond_15b4
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.picture_in_picture"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15cd

    const-string v2, "StartMediaResourceMonitor"

    .line 3704
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3705
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaResourceMonitorService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3706
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3709
    :cond_15cd
    iget-object v2, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15e6

    const-string v2, "StartTvRemoteService"

    .line 3710
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3711
    iget-object v2, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3712
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_15e6
    const-string v2, "StartMediaRouterService"

    .line 3715
    invoke-virtual {v13, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3717
    :try_start_15eb
    new-instance v2, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v2, v12}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_15f0
    .catchall {:try_start_15eb .. :try_end_15f0} :catchall_15fa

    :try_start_15f0
    const-string/jumbo v3, "media_router"

    .line 3718
    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15f6
    .catchall {:try_start_15f0 .. :try_end_15f6} :catchall_15f7

    goto :goto_1603

    :catchall_15f7
    move-exception v0

    move-object v3, v0

    goto :goto_15fd

    :catchall_15fa
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_15fd
    const-string/jumbo v11, "starting MediaRouterService"

    .line 3720
    invoke-virtual {v14, v11, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3722
    :goto_1603
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3724
    iget-object v3, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.biometrics.face"

    .line 3725
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 3726
    iget-object v11, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v15, "android.hardware.biometrics.iris"

    .line 3727
    invoke-virtual {v11, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 3728
    iget-object v15, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v1

    const-string v1, "android.hardware.fingerprint"

    .line 3729
    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v3, :cond_1634

    const-string v3, "StartFaceSensor"

    .line 3732
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3733
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3734
    invoke-virtual {v3, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3735
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1634
    if-eqz v11, :cond_1645

    const-string v3, "StartIrisSensor"

    .line 3739
    invoke-virtual {v13, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3740
    iget-object v3, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v3, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3741
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1645
    if-eqz v1, :cond_1659

    const-string v1, "StartFingerprintSensor"

    .line 3745
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3746
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3747
    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3748
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1659
    const-string v1, "StartBiometricService"

    .line 3752
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3753
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3754
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartAuthService"

    .line 3756
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3757
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3758
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v18, :cond_168d

    const-string v1, "StartDynamicCodeLoggingService"

    .line 3763
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3765
    :try_start_167e
    invoke-static {v12}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_1681
    .catchall {:try_start_167e .. :try_end_1681} :catchall_1682

    goto :goto_168a

    :catchall_1682
    move-exception v0

    move-object v1, v0

    const-string/jumbo v3, "starting DynamicCodeLoggingService"

    .line 3767
    invoke-virtual {v14, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3769
    :goto_168a
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_168d
    if-nez v18, :cond_16a2

    const-string v1, "StartPruneInstantAppsJobService"

    .line 3773
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3775
    :try_start_1694
    invoke-static {v12}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1697
    .catchall {:try_start_1694 .. :try_end_1697} :catchall_1698

    goto :goto_169f

    :catchall_1698
    move-exception v0

    move-object v1, v0

    const-string v3, "StartPruneInstantAppsJobService"

    .line 3777
    invoke-virtual {v14, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3779
    :goto_169f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_16a2
    const-string v1, "StartSmartThingsService"

    .line 3783
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3784
    new-instance v1, Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {v1, v12}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    iput-object v1, v14, Lcom/android/server/SystemServer;->mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

    .line 3785
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartShortcutServiceLifecycle"

    .line 3789
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3790
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3791
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartLauncherAppsService"

    .line 3793
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3794
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3795
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartCrossProfileAppsService"

    .line 3797
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3798
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3799
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartPeopleService"

    .line 3801
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3802
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/people/PeopleService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3803
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartMediaMetricsManager"

    .line 3805
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3806
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3807
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartChimeraService"

    .line 3810
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3813
    :try_start_1701
    new-instance v1, Lcom/android/server/chimera/ChimeraManagerService;

    iget-object v3, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v12, v3}, Lcom/android/server/chimera/ChimeraManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    const-string v3, "ChimeraManagerService"

    .line 3814
    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v1, "SystemServer"

    const-string v3, "ChimeraManagerService loaded"

    .line 3815
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1714
    .catch Ljava/lang/Exception; {:try_start_1701 .. :try_end_1714} :catch_1715

    goto :goto_171e

    :catch_1715
    move-exception v0

    move-object v1, v0

    const-string v3, "SystemServer"

    const-string v11, "Failure adding ChimeraManagerService"

    .line 3817
    invoke-static {v3, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3820
    :goto_171e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3824
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_173c

    const-string v1, "StartOemWifi"

    .line 3826
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3827
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.samsung.android.server.wifi.SemWifiService"

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3828
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3830
    :cond_173c
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1757

    const-string v1, "StartOemWifiP2p"

    .line 3832
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3833
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.samsung.android.server.wifi.p2p.SemWifiP2pService"

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3834
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3836
    :cond_1757
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1772

    const-string v1, "StartOemWifiAware"

    .line 3838
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3839
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.samsung.android.server.wifi.aware.SemWifiAwareService"

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3840
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1772
    move-object/from16 v30, v2

    move-object v11, v5

    move-object/from16 v29, v17

    move-object v5, v4

    move-object v4, v6

    move-object/from16 v17, v7

    :goto_177b
    const-string v1, "StartMediaProjectionManager"

    .line 3844
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3845
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3846
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3851
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "att.devicehealth.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17cc

    const-string v1, "SetupDeviceHealthSupport"

    .line 3852
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3854
    :try_start_1799
    const-class v1, Lcom/samsung/iqi/IQIServiceBrokerExt;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3855
    const-class v2, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string/jumbo v3, "startIqi"

    new-array v7, v6, [Ljava/lang/Class;

    .line 3856
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v12, v7, v6

    .line 3857
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17be
    .catch Ljava/lang/Exception; {:try_start_1799 .. :try_end_17be} :catch_17bf

    goto :goto_17c8

    :catch_17bf
    move-exception v0

    move-object v1, v0

    const-string v2, "SystemServer"

    const-string v3, "Unable to start com.samsung.iqi.IQIServiceBrokerExt"

    .line 3859
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3861
    :goto_17c8
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_17d3

    :cond_17cc
    const-string v1, "SystemServer"

    const-string v2, "System feature for device health not found"

    .line 3863
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17d3
    if-eqz v18, :cond_1840

    const-string v1, "StartWearPowerService"

    .line 3869
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3870
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3871
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartHealthService"

    .line 3873
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3874
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.google.android.clockwork.healthservices.HealthService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3875
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartWearConnectivityService"

    .line 3877
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3878
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3879
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartWearDisplayService"

    .line 3881
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3882
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3883
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartWearTimeService"

    .line 3885
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3886
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3887
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v16, :cond_1831

    const-string v1, "StartWearLeftyService"

    .line 3890
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3891
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3892
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1831
    const-string v1, "StartWearGlobalActionsService"

    .line 3895
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3896
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3897
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3900
    :cond_1840
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.slices_disabled"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1859

    const-string v1, "StartSliceManagerService"

    .line 3901
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3902
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3903
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3906
    :cond_1859
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.embedded"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1874

    const-string v1, "StartIoTSystemService"

    .line 3907
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3908
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.things.server.IoTSystemService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3909
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1874
    const-string v1, "StartSpenGestureManagerService"

    .line 3913
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1879
    const-string/jumbo v1, "spengestureservice"

    .line 3915
    new-instance v2, Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {v2, v12, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1884
    .catchall {:try_start_1879 .. :try_end_1884} :catchall_1885

    goto :goto_188d

    :catchall_1885
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "starting SpenGestureManagerService"

    .line 3917
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3919
    :goto_188d
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartSamsungNotesService"

    .line 3924
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3925
    new-instance v1, Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-direct {v1, v12}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    iput-object v1, v14, Lcom/android/server/SystemServer;->mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

    .line 3926
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartStatsCompanion"

    .line 3929
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3930
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v3, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3932
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartRebootReadinessManagerService"

    .line 3935
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3936
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v3, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3938
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartStatsPullAtomService"

    .line 3941
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3942
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3943
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StatsBootstrapAtomService"

    .line 3946
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3947
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3948
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartIncidentCompanionService"

    .line 3951
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3952
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3953
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StarSdkSandboxManagerService"

    .line 3956
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3957
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3958
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartAdServicesManagerService"

    .line 3961
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3962
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3963
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v8, :cond_1913

    .line 3966
    iget-object v1, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3969
    :cond_1913
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v31

    .line 3972
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_192e

    if-eqz v31, :cond_192b

    goto :goto_192e

    :cond_192b
    const/16 v32, 0x0

    goto :goto_1942

    :cond_192e
    :goto_192e
    const-string v1, "StartMmsService"

    .line 3974
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3975
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/MmsServiceBroker;

    .line 3976
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    move-object/from16 v32, v1

    .line 3979
    :goto_1942
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.autofill"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_195b

    const-string v1, "StartAutoFillService"

    .line 3980
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3981
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3982
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_195b
    const v1, 0x1040330

    .line 3986
    invoke-virtual {v14, v12, v1}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1974

    const-string v1, "StartTranslationManagerService"

    .line 3987
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3988
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.translation.TranslationManagerService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3989
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_197b

    :cond_1974
    const-string v1, "SystemServer"

    const-string v2, "TranslationService not defined by OEM"

    .line 3991
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_197b
    const-string v1, "StartClipboardService"

    .line 3995
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3996
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3997
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "AppServiceManager"

    .line 3999
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4000
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4001
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v1, "startTracingServiceProxy"

    .line 4004
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4005
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4006
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "MakeLockSettingsServiceReady"

    .line 4010
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v22, :cond_19bc

    .line 4013
    :try_start_19b0
    invoke-interface/range {v22 .. v22}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_19b3
    .catchall {:try_start_19b0 .. :try_end_19b3} :catchall_19b4

    goto :goto_19bc

    :catchall_19b4
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making Lock Settings Service ready"

    .line 4015
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4018
    :cond_19bc
    :goto_19bc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartPersonaSystemready"

    .line 4021
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4022
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    .line 4023
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19d8

    goto :goto_19ef

    .line 4025
    :cond_19d8
    :try_start_19d8
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_19db
    .catchall {:try_start_19d8 .. :try_end_19db} :catchall_19dd

    :goto_19db
    const/4 v1, 0x0

    goto :goto_19e6

    :catchall_19dd
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making Persona Manager Service ready"

    .line 4027
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19db

    .line 4031
    :goto_19e6
    :try_start_19e6
    throw v1
    :try_end_19e7
    .catchall {:try_start_19e6 .. :try_end_19e7} :catchall_19e7

    :catchall_19e7
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making KnoxMUMContainerPolicy Service ready"

    .line 4033
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4036
    :goto_19ef
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartBootPhaseLockSettingsReady"

    .line 4040
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "SystemServer"

    const-string v2, "!@Boot_EBS_D: PHASE_LOCK_SETTINGS_READY"

    .line 4041
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x1e0

    invoke-virtual {v1, v13, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4043
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartBootPhaseSystemServicesReady"

    .line 4045
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "SystemServer"

    const-string v2, "!@Boot_EBS_D: PHASE_SYSTEM_SERVICES_READY"

    .line 4046
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v13, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4048
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "MakeWindowManagerServiceReady"

    .line 4050
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4052
    :try_start_1a23
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_1a26
    .catchall {:try_start_1a23 .. :try_end_1a26} :catchall_1a27

    goto :goto_1a2f

    :catchall_1a27
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making Window Manager Service ready"

    .line 4054
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4056
    :goto_1a2f
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4059
    const-class v1, Lcom/android/server/SystemService;

    monitor-enter v1

    .line 4060
    :try_start_1a35
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-eqz v2, :cond_1a41

    .line 4061
    iget-object v3, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    const/4 v2, 0x0

    .line 4062
    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 4064
    :cond_1a41
    monitor-exit v1
    :try_end_1a42
    .catchall {:try_start_1a35 .. :try_end_1a42} :catchall_1cd3

    if-eqz v8, :cond_1a4e

    .line 4067
    iget-object v1, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 4070
    iget-object v1, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    :cond_1a4e
    const/4 v1, 0x0

    .line 4078
    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4079
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4080
    invoke-virtual {v12}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4081
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 4084
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4085
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v2

    if-eqz v2, :cond_1a73

    .line 4086
    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_1a73
    const-string v1, "DualAppManagerService"

    .line 4090
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4092
    :try_start_1a78
    iget-object v1, v14, Lcom/android/server/SystemServer;->mDualAppService:Lcom/android/server/DualAppManagerService;

    if-eqz v1, :cond_1a88

    .line 4093
    invoke-virtual {v1}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_1a7f
    .catchall {:try_start_1a78 .. :try_end_1a7f} :catchall_1a80

    goto :goto_1a88

    :catchall_1a80
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making DualAppManagerService ready"

    .line 4096
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4098
    :cond_1a88
    :goto_1a88
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartPermissionPolicyService"

    .line 4102
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4103
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4104
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "MakePackageManagerServiceReady"

    .line 4106
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4107
    iget-object v1, v14, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 4108
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "MakeASKSManagerServiceReady"

    .line 4110
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4111
    iget-object v1, v14, Lcom/android/server/SystemServer;->mASKSManagerService:Lcom/android/server/asks/ASKSManagerService;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService;->systemReady()V

    .line 4112
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "MakeDisplayManagerServiceReady"

    .line 4114
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4117
    :try_start_1ab9
    iget-object v1, v14, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v2, v14, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v1, v8, v2}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1ac0
    .catchall {:try_start_1ab9 .. :try_end_1ac0} :catchall_1ac1

    goto :goto_1ac9

    :catchall_1ac1
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "making Display Manager Service ready"

    .line 4119
    invoke-virtual {v14, v2, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4121
    :goto_1ac9
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4123
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v8}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    const-string v1, "StartDeviceSpecificServices"

    .line 4140
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4141
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4143
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1ae5
    if-ge v3, v2, :cond_1b26

    aget-object v6, v1, v3

    .line 4144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StartDeviceSpecificServices "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4146
    :try_start_1afd
    iget-object v7, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1b02
    .catchall {:try_start_1afd .. :try_end_1b02} :catchall_1b05

    move-object/from16 v16, v1

    goto :goto_1b1e

    :catchall_1b05
    move-exception v0

    move-object v7, v0

    .line 4148
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string/jumbo v1, "starting "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4150
    :goto_1b1e
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    goto :goto_1ae5

    .line 4152
    :cond_1b26
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "GameManagerService"

    .line 4154
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4155
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.app.GameManagerService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4156
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "ArtManagerLocal"

    .line 4158
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4159
    const-class v1, Lcom/android/server/art/ArtManagerLocal;

    new-instance v2, Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {v2}, Lcom/android/server/art/ArtManagerLocal;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4160
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4162
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.uwb"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b67

    const-string v1, "UwbService"

    .line 4163
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4164
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.uwb.UwbService"

    const-string v3, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4165
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1b67
    const-string v1, "StartBootPhaseDeviceSpecificServicesReady"

    .line 4168
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "SystemServer"

    const-string v2, "!@Boot_EBS_D: PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 4169
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v1, v13, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4171
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4174
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_1ba0

    const-string v1, "MdfService"

    .line 4175
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_1b88
    const-string v1, "MdfService"

    .line 4177
    new-instance v2, Lcom/android/server/MdfService;

    invoke-direct {v2, v12}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b92
    .catchall {:try_start_1b88 .. :try_end_1b92} :catchall_1b93

    goto :goto_1b9c

    :catchall_1b93
    move-exception v0

    move-object v1, v0

    const-string v2, "SystemServer"

    const-string v3, "Failed to add MdfService"

    .line 4179
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4181
    :goto_1b9c
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_1ba7

    :cond_1ba0
    const-string v1, "SystemServer"

    const-string v2, "MdfService is ready"

    .line 4183
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ba7
    const-string v1, "StartSafetyCenterService"

    .line 4186
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4187
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4188
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "AppSearchModule"

    .line 4190
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4191
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4192
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v1, "ro.config.isolated_compilation_enabled"

    const/4 v2, 0x0

    .line 4194
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1bde

    const-string v1, "IsolatedCompilationService"

    .line 4195
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4196
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4197
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1bde
    const-string v1, "StartMediaCommunicationService"

    .line 4200
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4201
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4202
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "AppCompatOverridesService"

    .line 4204
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4205
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4206
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "SemContinuityService"

    .line 4211
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4212
    iget-object v1, v14, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/samsung/android/server/continuity/SemContinuityService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4213
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "StartIfaaService"

    .line 4218
    invoke-virtual {v13, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "2"

    const-string/jumbo v2, "ro.config.ifaaversion"

    const-string v3, "0"

    .line 4219
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SystemServer"

    .line 4220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ro.config.ifaaversion] value is : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1c65

    :try_start_1c37
    const-string v1, "com.android.server.IfaaService"

    .line 4236
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 4237
    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string v3, "IfaaService"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v12, v2, v7

    .line 4238
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c58
    .catchall {:try_start_1c37 .. :try_end_1c58} :catchall_1c59

    goto :goto_1c65

    :catchall_1c59
    move-exception v0

    move-object v1, v0

    const-string v2, "SystemServer"

    const-string v3, "Failed to add IfaaService."

    .line 4240
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4244
    :cond_1c65
    :goto_1c65
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v1, "connectivity"

    .line 4263
    invoke-virtual {v12, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 4267
    iget-object v15, v14, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 4279
    iget-object v6, v14, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object/from16 v33, v3

    move-object/from16 v20, v21

    move-object/from16 v3, p1

    move-object/from16 v34, v6

    move v6, v8

    move-object/from16 v8, v27

    move-object/from16 v18, v9

    move-object/from16 v9, v25

    move-object/from16 v35, v10

    move-object v10, v11

    move-object/from16 v11, v17

    move-object/from16 v24, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v19

    move-object/from16 v14, v24

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    move-object/from16 v19, v20

    move-object/from16 v20, v30

    move/from16 v21, v31

    move-object/from16 v22, v32

    invoke-direct/range {v1 .. v23}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V

    move-object/from16 v2, p1

    move-object/from16 v3, v33

    move-object/from16 v1, v34

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    const-string v1, "StartSystemUI"

    .line 4832
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v1, "SystemServer"

    const-string v3, "!@Boot_EBS_F: StartSystemUI"

    .line 4833
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v24

    move-object/from16 v3, v35

    .line 4835
    :try_start_1cbe
    invoke-static {v1, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1cc1
    .catchall {:try_start_1cbe .. :try_end_1cc1} :catchall_1cc2

    goto :goto_1ccc

    :catchall_1cc2
    move-exception v0

    move-object v1, v0

    const-string/jumbo v3, "starting System UI"

    move-object/from16 v4, p0

    .line 4837
    invoke-virtual {v4, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4839
    :goto_1ccc
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4841
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1cd3
    move-exception v0

    move-object v2, v0

    .line 4064
    :try_start_1cd5
    monitor-exit v1
    :try_end_1cd6
    .catchall {:try_start_1cd5 .. :try_end_1cd6} :catchall_1cd3

    throw v2

    :catchall_1cd7
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    .line 2924
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2925
    throw v1

    :catchall_1cde
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    .line 2211
    :goto_1ce1
    :try_start_1ce1
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2212
    throw v1

    :catchall_1ce5
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    .line 2159
    :goto_1ce8
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2160
    throw v1

    :catchall_1cec
    move-exception v0

    move-object v2, v13

    move-object v1, v0

    .line 1974
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1975
    throw v1
    :try_end_1cf3
    .catchall {:try_start_1ce1 .. :try_end_1cf3} :catchall_1cf3

    :catchall_1cf3
    move-exception v0

    move-object v1, v0

    const-string v2, "System"

    const-string v3, "******************************************"

    .line 2519
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "System"

    const-string v3, "************ Failure starting core service"

    .line 2520
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    throw v1
.end method

.method public final startRCPService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;Z)V
    .registers 4

    const-string p0, "SystemServer"

    const-string/jumbo p1, "startRCPService | RCPManagerService , rcp is not supported"

    .line 5090
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "startRCPService | KnoxMUMRCPPolicyService , mumrcppolicy is not supported"

    .line 5091
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startResourceOverlayService(Z)V
    .registers 6

    .line 5110
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 5111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5112
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.localeoverlaymanager"

    const-string v3, "com.samsung.android.localeoverlaymanager.ResourceOverlayService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "isStartedBySystemServer"

    const/4 v2, 0x1

    .line 5114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "safeMode"

    .line 5115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5116
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    .line 4962
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p0, "SystemServer"

    const-string p1, "RotationResolverService is not configured on this device"

    .line 4963
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string p1, "StartRotationResolverService"

    .line 4967
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4968
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class p1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4969
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4

    const v0, 0x104032e

    .line 4896
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p0, "SystemServer"

    const-string p1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    .line 4897
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string p1, "StartSystemCaptionsManagerService"

    .line 4901
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4902
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string p1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4903
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 3

    const-string p1, "StartTextToSpeechManagerService"

    .line 4908
    invoke-virtual {p2, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4909
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string p1, "com.android.server.texttospeech.TextToSpeechManagerService"

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4910
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final startThemeService(Z)V
    .registers 6

    .line 5098
    iget-object p0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 5099
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5100
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "safeMode"

    .line 5102
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "isStartedBySystemServer"

    const/4 v1, 0x1

    .line 5103
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5104
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method
