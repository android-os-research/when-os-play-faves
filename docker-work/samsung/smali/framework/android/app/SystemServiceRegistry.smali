.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;
    }
.end annotation


# static fields
.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static blacklist sEnableServiceNotFoundWtf:Z

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .registers 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .registers 1

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 418
    const-string v0, "SystemServiceRegistry"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 422
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 424
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 426
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 437
    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v5, "accessibility"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 444
    const-class v3, Landroid/view/accessibility/CaptioningManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v5, "captioning"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 451
    const-class v3, Landroid/accounts/AccountManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v5, "account"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 460
    const-class v3, Landroid/app/ActivityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v5, "activity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 467
    const-class v3, Landroid/app/ActivityTaskManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v5, "activity_task"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 474
    const-class v3, Landroid/app/UriGrantsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v5, "uri_grants"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 482
    const-class v3, Landroid/app/AlarmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v5, "alarm"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 491
    const-class v3, Landroid/media/AudioManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v5, "audio"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 498
    const-class v3, Landroid/media/MediaRouter;

    new-instance v4, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string/jumbo v5, "media_router"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 505
    const-class v3, Landroid/os/CustomFrequencyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 517
    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v5, "hdmi_control"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 525
    const-class v3, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string/jumbo v5, "textclassification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 532
    const-class v3, Landroid/graphics/fonts/FontManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string v5, "font"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 540
    const-class v3, Landroid/content/ClipboardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v5, "clipboard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 551
    const-class v3, Landroid/text/ClipboardManager;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-class v2, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string/jumbo v4, "semclipboard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 562
    const-class v2, Landroid/net/PacProxyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v4, "pac_proxy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 571
    const-class v2, Landroid/os/IBinder;

    new-instance v3, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v4, "netd"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 578
    const-class v2, Landroid/net/TetheringManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string/jumbo v4, "tethering"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 586
    const-class v2, Landroid/net/VpnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v4, "vpn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 595
    const-class v2, Landroid/net/vcn/VcnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string/jumbo v4, "vcn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 604
    const-class v2, Landroid/location/CountryDetector;

    new-instance v3, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v4, "country_detector"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 612
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v4, "device_policy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 620
    const-class v2, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string v4, "download"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 630
    const-class v2, Landroid/os/SemHqmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v4, "HqmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 644
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_166

    .line 646
    const-class v2, Landroid/os/SemHcmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v4, "HcmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 660
    :cond_166
    const-class v2, Landroid/os/BatteryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v4, "batterymanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 671
    const-class v2, Landroid/nfc/NfcManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string/jumbo v4, "nfc"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 678
    const-class v2, Landroid/os/DropBoxManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v4, "dropbox"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 687
    const-class v2, Landroid/transparency/BinaryTransparencyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string/jumbo v4, "transparency"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 698
    const-class v2, Landroid/hardware/input/InputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v4, "input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 705
    const-class v2, Landroid/hardware/display/DisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v4, "display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 712
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string v4, "color_display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 724
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v4, "input_method"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 731
    const-class v2, Landroid/view/textservice/TextServicesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v4, "textservices"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 739
    const-class v2, Landroid/app/KeyguardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string v4, "keyguard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 746
    const-class v2, Landroid/view/LayoutInflater;

    new-instance v3, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string v4, "layout_inflater"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 753
    const-class v2, Landroid/location/LocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string v4, "location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 761
    const-class v2, Lcom/samsung/android/location/SemLocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v4, "sec_location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 770
    const-class v2, Landroid/net/NetworkPolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 778
    const-class v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v4, "notification"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 794
    const-class v2, Landroid/app/people/PeopleManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v4, "people"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 801
    const-class v2, Landroid/os/PowerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v4, "power"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 826
    const-class v2, Landroid/os/PerformanceHintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v4, "performance_hint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 834
    const-class v2, Landroid/os/RecoverySystem;

    new-instance v3, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v4, "recovery"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 843
    const-class v2, Landroid/app/SearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 851
    const-class v2, Landroid/hardware/SensorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v4, "sensor"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 859
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v4, "sensor_privacy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 866
    const-class v2, Landroid/app/StatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v4, "statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 873
    const-class v2, Landroid/app/SemStatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v4, "sem_statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 882
    const-class v2, Lcom/samsung/android/edge/SemEdgeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string v4, "edge"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 893
    const-class v2, Landroid/os/storage/StorageManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v4, "storage"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 900
    const-class v2, Landroid/app/usage/StorageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v4, "storagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 909
    const-class v2, Landroid/os/SystemUpdateManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string/jumbo v4, "system_update"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 920
    const-class v2, Landroid/os/SystemConfigManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v4, "system_config"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 927
    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v4, "telephony_registry"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 934
    const-class v2, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v4, "telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 941
    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result v2

    if-eqz v2, :cond_302

    .line 942
    const-class v2, Lcom/samsung/android/telecom/SemTelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v4, "samsung_telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 950
    :cond_302
    const-class v2, Landroid/telephony/MmsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v4, "mms"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 957
    const-class v2, Landroid/app/UiModeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v4, "uimode"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 964
    const-class v2, Landroid/hardware/usb/UsbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v4, "usb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 972
    const-class v2, Landroid/debug/AdbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string v4, "adb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 981
    const-class v2, Landroid/hardware/SerialManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v4, "serial"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 989
    const-class v2, Landroid/os/VibratorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v4, "vibrator_manager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 996
    const-class v2, Landroid/os/Vibrator;

    new-instance v3, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string/jumbo v4, "vibrator"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1003
    const-class v2, Landroid/app/WallpaperManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v4, "wallpaper"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1030
    const-class v2, Landroid/net/lowpan/LowpanManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string v4, "lowpan"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1039
    const-class v2, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v3, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v4, "wifinl80211"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1047
    const-class v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string/jumbo v4, "window"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1054
    const-class v2, Landroid/os/UserManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v4, "user"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1063
    const-class v2, Landroid/app/AppOpsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v4, "appops"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1072
    const-class v2, Landroid/hardware/camera2/CameraManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v4, "camera"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1079
    const-class v2, Landroid/content/pm/LauncherApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string v4, "launcherapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1086
    const-class v2, Landroid/content/RestrictionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v4, "restrictions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1095
    const-class v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string/jumbo v4, "print"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1110
    const-class v2, Landroid/companion/CompanionDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v4, "companiondevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1125
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v4, "virtualdevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1135
    const-class v2, Landroid/hardware/ConsumerIrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string v4, "consumer_ir"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1142
    const-class v2, Landroid/app/trust/TrustManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v4, "trust"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1150
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v4, "fingerprint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1164
    const-class v2, Landroid/hardware/face/FaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string v4, "face"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1180
    const-class v2, Landroid/hardware/iris/IrisManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string v4, "iris"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1192
    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v4, "biometric"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1205
    const-class v2, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v4, "tv_interactive_app"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1217
    const-class v2, Landroid/media/tv/TvInputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string/jumbo v4, "tv_input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1226
    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string/jumbo v4, "tv_tuner_resource_mgr"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1237
    const-class v2, Landroid/net/NetworkScoreManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string/jumbo v4, "network_score"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1244
    const-class v2, Landroid/app/usage/UsageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v4, "usagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1253
    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v4, "persistent_data_block"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1269
    const-class v2, Landroid/service/oemlock/OemLockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v4, "oem_lock"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1283
    const-class v2, Landroid/media/projection/MediaProjectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v4, "media_projection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1290
    const-class v2, Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string v4, "appwidget"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1298
    const-class v2, Landroid/media/midi/MidiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v4, "midi"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1306
    const-class v2, Landroid/hardware/radio/RadioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string v4, "broadcastradio"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1313
    const-class v2, Landroid/os/HardwarePropertiesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string v4, "hardware_properties"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1323
    const-class v2, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v4, "soundtrigger"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1331
    const-class v2, Landroid/content/pm/ShortcutManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v4, "shortcut"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1339
    const-class v2, Landroid/content/om/OverlayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string/jumbo v4, "overlay"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1347
    const-class v2, Landroid/net/NetworkWatchlistManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string/jumbo v4, "network_watchlist"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1358
    const-class v2, Landroid/os/health/SystemHealthManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string/jumbo v4, "systemhealth"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1366
    const-class v2, Landroid/hardware/location/ContextHubManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v4, "contexthub"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1374
    const-class v2, Landroid/os/IncidentManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v4, "incident"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1381
    const-class v2, Landroid/os/BugreportManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string v4, "bugreport"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1391
    const-class v2, Landroid/view/autofill/AutofillManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string v4, "autofill"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1401
    const-class v2, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v4, "music_recognition"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1412
    const-class v2, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string v4, "content_capture"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1435
    const-class v2, Landroid/view/translation/TranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v4, "translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1449
    const-class v2, Landroid/view/translation/UiTranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string/jumbo v4, "ui_translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1462
    const-class v2, Landroid/app/search/SearchUiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string/jumbo v4, "search_ui"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1472
    const-class v2, Landroid/app/smartspace/SmartspaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string/jumbo v4, "smartspace"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1482
    const-class v2, Landroid/app/cloudsearch/CloudSearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v4, "cloudsearch"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1493
    const-class v2, Landroid/app/prediction/AppPredictionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string v4, "app_prediction"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1503
    const-class v2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string v4, "content_suggestions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1517
    const-class v2, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v4, "wallpaper_effects_generation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1531
    const-class v2, Landroid/app/VrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v4, "vrmanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1551
    const-class v2, Landroid/app/timezone/RulesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v4, "timezone"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1558
    const-class v2, Landroid/content/pm/CrossProfileApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string v4, "crossprofileapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1570
    const-class v2, Landroid/app/slice/SliceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string/jumbo v4, "slice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1581
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1582
    .local v2, "fmradioChipVendor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_619

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_619

    .line 1583
    const-class v3, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v4, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v5, "FMPlayer"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1593
    :cond_619
    const-class v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string/jumbo v5, "motion_recognition"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1600
    const-class v3, Landroid/hardware/scontext/SContextManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v5, "scontext"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1610
    const-class v3, Landroid/ktuca/KtUcaManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string v5, "ktuca"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1620
    const-class v3, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v5, "sem_wifi"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1631
    const-class v3, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string/jumbo v5, "sem_wifi_p2p"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1641
    const-class v3, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string/jumbo v5, "sem_wifi_aware"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1652
    const-class v3, Landroid/app/timedetector/TimeDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string/jumbo v5, "time_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1660
    const-class v3, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string/jumbo v5, "time_zone_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1668
    const-class v3, Landroid/app/time/TimeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v5, "time_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1676
    const-class v3, Landroid/permission/PermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string/jumbo v5, "permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1684
    const-class v3, Landroid/permission/LegacyPermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string v5, "legacy_permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1692
    const-class v3, Landroid/permission/PermissionControllerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string/jumbo v5, "permission_controller"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1700
    const-class v3, Landroid/permission/PermissionCheckerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string/jumbo v5, "permission_checker"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1708
    const-class v3, Landroid/os/image/DynamicSystemManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string v5, "dynamic_system"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1719
    const-class v3, Landroid/os/BatteryStatsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string v5, "batterystats"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1729
    const-class v3, Landroid/content/pm/DataLoaderManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string v5, "dataloader_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1738
    const-class v3, Landroid/hardware/lights/LightsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string v5, "lights"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1745
    const-class v3, Landroid/app/LocaleManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string v5, "locale"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1753
    const-class v3, Landroid/os/incremental/IncrementalManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string v5, "incremental"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1765
    const-class v3, Landroid/security/FileIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string v5, "file_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1776
    const-class v3, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string v5, "attestation_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1789
    const-class v3, Landroid/content/integrity/AppIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string v5, "app_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1797
    const-class v3, Landroid/apphibernation/AppHibernationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v5, "app_hibernation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1804
    const-class v3, Landroid/app/DreamManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string v5, "dream"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1811
    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string v5, "device_state"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1844
    const-class v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v5, "CocktailBarService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1854
    const-class v3, Landroid/media/metrics/MediaMetricsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string/jumbo v5, "media_metrics"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1866
    const-class v3, Landroid/app/GameManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string v5, "game"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1876
    const-class v3, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v5, "domain_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1889
    const-class v3, Landroid/view/displayhash/DisplayHashManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v5, "display_hash"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1898
    const/4 v3, 0x0

    .line 1900
    .local v3, "isExynosDisplaySolutionService":Z
    :try_start_78e
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110134

    .line 1901
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_799
    .catch Ljava/lang/Exception; {:try_start_78e .. :try_end_799} :catch_79b

    move v3, v4

    .line 1904
    goto :goto_7a1

    .line 1902
    :catch_79b
    move-exception v4

    .line 1903
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Not starting ExynosDisplaySolutionService"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7a1
    if-eqz v3, :cond_7af

    .line 1907
    const-class v4, Landroid/hardware/display/ExynosDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$153;-><init>()V

    const-string v6, "exynos_display"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1923
    :cond_7af
    const-class v4, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$154;-><init>()V

    const-string v6, "ambient_context"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1936
    const-class v4, Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$155;-><init>()V

    const-string/jumbo v6, "persona"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1945
    const-class v4, Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$156;-><init>()V

    const-string/jumbo v6, "rcp"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1956
    const-class v4, Lcom/samsung/android/isrb/IsrbManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$157;-><init>()V

    const-string v6, "isrb"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2019
    sget-boolean v4, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v4, :cond_7f2

    .line 2020
    const-class v4, Lcom/samsung/android/sepunion/SemUnionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$161;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$161;-><init>()V

    const-string/jumbo v6, "sepunion"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2032
    :cond_7f2
    const-class v4, Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$162;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$162;-><init>()V

    const-string/jumbo v6, "mDNIe"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2043
    const-class v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$163;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$163;-><init>()V

    const-string v6, "DisplaySolution"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2054
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemDisplayQualityFeature.ENABLED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",PLATFORM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    sget-boolean v4, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v4, :cond_83f

    .line 2056
    const-class v4, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$164;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$164;-><init>()V

    const-string v6, "DisplayQuality"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2068
    :cond_83f
    const-string/jumbo v4, "systemservice inputdev:true"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$165;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$165;-><init>()V

    const-string v5, "SemInputDeviceManagerService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2082
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_869

    .line 2083
    const-class v0, Lcom/samsung/android/continuity/SemContinuityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$166;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$166;-><init>()V

    const-string v5, "SemContinuityService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2096
    :cond_869
    const-class v0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    new-instance v4, Landroid/app/SystemServiceRegistry$167;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$167;-><init>()V

    const-string v5, "CodecSolution"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2106
    const-class v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    new-instance v4, Landroid/app/SystemServiceRegistry$168;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$168;-><init>()V

    const-string v5, "SemVideoTranscodingService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2117
    const-class v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$169;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$169;-><init>()V

    const-string/jumbo v5, "spengestureservice"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2127
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2131
    :try_start_891
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 2132
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 2133
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 2134
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 2135
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 2136
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 2137
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 2138
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 2139
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 2140
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 2141
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 2142
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 2143
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 2144
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 2145
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 2146
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 2147
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 2148
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 2149
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 2150
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    .line 2152
    invoke-static {}, Lcom/samsung/android/privilege/SemPrivilegeManagerFrameworkInitializer;->initialize()V

    .line 2155
    invoke-static {}, Lcom/samsung/android/ipm/SecIpmManagerFrameworkInitializer;->initialize()V
    :try_end_8d3
    .catchall {:try_start_891 .. :try_end_8d3} :catchall_8d7

    .line 2160
    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2161
    nop

    .line 2162
    .end local v2    # "fmradioChipVendor":Ljava/lang/String;
    .end local v3    # "isExynosDisplaySolutionService":Z
    return-void

    .line 2160
    .restart local v2    # "fmradioChipVendor":Ljava/lang/String;
    .restart local v3    # "isExynosDisplaySolutionService":Z
    :catchall_8d7
    move-exception v0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2161
    throw v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .registers 1

    .line 2174
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 2166
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Internal error: %s can only be called during class initialization."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2168
    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 2182
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2183
    return-object v0

    .line 2185
    :cond_4
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 2186
    .local v1, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const-string v2, "SystemServiceRegistry"

    if-nez v1, :cond_2b

    .line 2187
    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_2a

    .line 2188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown manager requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_2a
    return-object v0

    .line 2193
    :cond_2b
    invoke-interface {v1, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v3

    .line 2194
    .local v3, "ret":Ljava/lang/Object;
    sget-boolean v4, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v4, :cond_80

    if-nez v3, :cond_80

    .line 2196
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_82

    :cond_3d
    goto :goto_65

    :sswitch_3e
    const-string v5, "incremental"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x2

    goto :goto_65

    :sswitch_48
    const-string v5, "content_capture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x0

    goto :goto_65

    :sswitch_52
    const-string v5, "app_prediction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x1

    goto :goto_65

    :sswitch_5c
    const-string v5, "ethernet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v4, 0x3

    :goto_65
    packed-switch v4, :pswitch_data_94

    .line 2203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Manager wrapper not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-object v0

    .line 2201
    :pswitch_7f
    return-object v0

    .line 2206
    :cond_80
    return-object v3

    nop

    :sswitch_data_82
    .sparse-switch
        -0x5499b029 -> :sswitch_5c
        -0x2dd60a93 -> :sswitch_52
        0x3a1b1980 -> :sswitch_48
        0x40b177da -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2245
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2214
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 2215
    const/4 v0, 0x0

    return-object v0

    .line 2217
    :cond_4
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2218
    .local v0, "serviceName":Ljava/lang/String;
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2e

    .line 2220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceRegistry"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_2e
    return-object v0
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .registers 4
    .param p0, "e"    # Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 2590
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "SystemServiceRegistry"

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_12

    .line 2591
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2593
    :cond_12
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :goto_19
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2405
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2406
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    new-instance v0, Landroid/app/SystemServiceRegistry$172;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$172;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2419
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2433
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2434
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2435
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    new-instance v0, Landroid/app/SystemServiceRegistry$173;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$173;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2444
    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 5
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 2231
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2348
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2349
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2353
    new-instance v0, Landroid/app/SystemServiceRegistry$170;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$170;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2360
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2372
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2373
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    new-instance v0, Landroid/app/SystemServiceRegistry$171;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$171;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2383
    return-void
.end method
