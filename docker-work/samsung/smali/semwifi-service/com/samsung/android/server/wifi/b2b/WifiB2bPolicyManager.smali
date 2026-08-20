.class public Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;
.super Ljava/lang/Object;
.source "WifiB2bPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;
    }
.end annotation


# static fields
.field static final ACTION_KNOX_RESTRICTIONS_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NCHO_API_MAJOR_VERSION_TO_SUPPORT_ROAMBAND:I = 0x300
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NCHO_API_MINOR_VERSION_TO_SUPPORT_ROAMBAND:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final NOT_INITIALIZED:I = -0x1

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.SettingsReceiver"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiB2BPolicy"

.field private static final UNINITIALIZED:I = -0x1

.field private static isRoambandset:Z = false

.field static vendorReleaseVersion:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final ANDROID_VERSION_ROS:I

.field private final ANDROID_VERSION_SOS:I

.field private final bandMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private isChipsetNCHOEnabled:Z

.field private isConnectivityCheckDisabled:Z

.field private isNchoSupportedByDriver:Z

.field private isRoamBandSupportedByDriver:Z

.field private final listenerLock:Ljava/lang/Object;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiLooper:Landroid/os/Looper;

.field private nchoMajorVersion:I

.field private nchoMinorVersion:I

.field private final policyApplied:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final policyLock:Ljava/lang/Object;

.field private restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

.field private setbandDefaultValue:I

.field private final supportedBand:I

.field private verboseLoggingEnabled:Z

.field private final wifiB2bPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;


# direct methods
.method public static synthetic $r8$lambda$TBnla94T4bM8AKv0RSRr8q57OmQ(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JIYZajIjmBgBpl-cPwmapt0Sos(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->lambda$fetchWiFiPolicy$1(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistenerLock(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateWiFiB2BPolicy(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->updateWiFiB2BPolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 77
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    const/16 v1, 0xc

    .line 80
    iput v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->ANDROID_VERSION_SOS:I

    const/16 v1, 0xb

    .line 81
    iput v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->ANDROID_VERSION_ROS:I

    const/4 v1, 0x3

    .line 83
    iput v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    .line 91
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    .line 93
    iput-object p4, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->mWifiLooper:Landroid/os/Looper;

    .line 95
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDriverSupportedBands()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->supportedBand:I

    .line 96
    iget p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    if-gt p1, p2, :cond_56

    .line 97
    iput v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    .line 99
    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "value of 6ghz secproduct feature :false  setbandDefaultValue "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiB2BPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkAndGetRestrictionsManager()V
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    if-nez v0, :cond_c

    .line 429
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    :cond_c
    return-void
.end method

.method private createBandMapping()V
    .registers 5

    .line 505
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private fetchWiFiPolicy(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 435
    :cond_3
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 436
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parse(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object p1

    .line 437
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->getConnectivityCheckDisabledSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled:Z

    .line 439
    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 441
    new-instance v2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 445
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2d

    .line 446
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->getFeedback()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyResult(Landroid/os/Bundle;)V

    return-void

    :catchall_2d
    move-exception p0

    .line 445
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method private getPolicy()Landroid/os/Bundle;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->checkAndGetRestrictionsManager()V

    .line 420
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    const-string v0, "com.samsung.android.SettingsReceiver"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const-string p0, "SemWifiB2BPolicy"

    const-string v0, "ApplicationRestrictionsManager is null"

    .line 422
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getVendorVersion()I
    .registers 2

    .line 184
    sget p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    const-string p0, "ro.vendor.build.version.release"

    .line 185
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 188
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_17} :catch_17

    .line 192
    :catch_17
    :cond_17
    sget p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->vendorReleaseVersion:I

    return p0
.end method

.method private initDriverNchoCapability(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 6

    const-string v0, "SemWifiB2BPolicy"

    .line 472
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isNchoGetDriverCapaSupported()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    .line 473
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 474
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getNchoFeature()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    .line 475
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->getNchoFeature()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    .line 476
    iget v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    const/16 v3, 0x300

    if-lt v2, v3, :cond_2c

    const/4 v2, 0x2

    if-lt p1, v2, :cond_2c

    .line 478
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    goto :goto_2c

    :cond_29
    const/4 p1, 0x0

    .line 481
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    .line 485
    :cond_2c
    :goto_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncho driver version details nchoMajorVersion is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nchoMinorVersion  is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isNchoSupportedByDriver "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    const-string p0, "Exception if driver is not ready so ignore "

    .line 488
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method

.method public static isGrantedPackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1c

    const-string v0, "com.samsung.android."

    .line 399
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.sec.wetester"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.sec.android.app.wlantest"

    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .registers 3

    .line 393
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fetchWiFiPolicy$1(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .registers 3

    .line 442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiB2BPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPolicyResult(Landroid/os/Bundle;)V
    .registers 4

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->checkAndGetRestrictionsManager()V

    .line 452
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->restrictionsManager:Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    const-string v0, "com.samsung.android.SettingsReceiver.feedback"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method private setRoamDhcpEnabled(Z)V
    .registers 3

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRoamDhcpEnabled:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiB2BPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWiFiB2BPolicy()V
    .registers 4

    const-string v0, "updateB2BPolicy - End"

    const-string v1, "SemWifiB2BPolicy"

    :try_start_4
    const-string v2, "updateB2BPolicy - Start"

    .line 406
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getPolicy()Landroid/os/Bundle;

    move-result-object v2

    .line 408
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->fetchWiFiPolicy(Landroid/os/Bundle;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception p0

    goto :goto_1b

    :catch_13
    move-exception p0

    .line 410
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    .line 412
    :goto_17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1b
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    throw p0
.end method


# virtual methods
.method public applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 202
    :cond_8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getPolicy(Ljava/lang/String;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    move-result-object p2

    if-nez p2, :cond_12

    .line 204
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->clearWiFiB2BPolicy(Ljava/lang/String;)V

    return v1

    .line 207
    :cond_12
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    .line 208
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDHCPRenewalAfterRoam()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDhcpEnabled(Z)V

    .line 209
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamSettings()Z

    move-result v0

    if-nez v0, :cond_28

    .line 210
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    goto :goto_65

    .line 212
    :cond_28
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 213
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamTrigger()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 214
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamDelta()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDelta(Ljava/lang/String;I)Z

    .line 215
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamScanPeriod()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    if-eqz v0, :cond_65

    .line 217
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getRoamBand()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_5e

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 220
    sput-boolean v2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    .line 222
    :cond_5e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    .line 225
    :cond_65
    :goto_65
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    return v2
.end method

.method public clearWiFiB2BPolicy(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    const/4 v1, 0x1

    .line 231
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamDhcpEnabled(Z)V

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setPolicyApplied(Ljava/lang/String;Z)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1e

    sget-boolean v1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    if-eqz v1, :cond_1e

    .line 234
    iget v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setbandDefaultValue:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->setRoamBand(Ljava/lang/String;I)Z

    .line 235
    sput-boolean v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoambandset:Z

    :cond_1e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "Wi-Fi B2B Policy:"

    .line 386
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Chipset NCHO Mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Chipset NCHO Mode supported by Driver: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Chipset NCHO Major verion: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMajorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " - Chipset NCHO Minor verion: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->nchoMinorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    monitor-enter p1

    .line 393
    :try_start_78
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 394
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_87

    .line 395
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_87
    move-exception p0

    .line 394
    :try_start_88
    monitor-exit p1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 250
    :goto_5
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    return-void
.end method

.method public getCountryRev(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getCountryRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsNchoSupportedByDriver()Z
    .registers 1

    .line 463
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNchoSupportedByDriver:Z

    return p0
.end method

.method public getIsRoamBandSupportedByDriver()Z
    .registers 1

    .line 467
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isRoamBandSupportedByDriver:Z

    return p0
.end method

.method public getPolicy(Ljava/lang/String;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 140
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getRoamBand(Ljava/lang/String;)I
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamBand(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1b

    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->bandMapping:Ljava/util/Map;

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    .line 307
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRoamDelta(Ljava/lang/String;)I
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamDelta(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamScanPeriod(Ljava/lang/String;)I
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamScanPeriod(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRoamTrigger(Ljava/lang/String;)I
    .registers 3

    .line 265
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 268
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    if-eqz v0, :cond_13

    .line 269
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamTrigger(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 271
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->getRoamTriggerLegacy(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .registers 7

    const-string v0, "SemWifiB2BPolicy"

    const-string v1, "handle boot complete from wfiservice. "

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;-><init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->mWifiLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->initDriverNchoCapability(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->updateWiFiB2BPolicy()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->createBandMapping()V

    return-void
.end method

.method public isConnectivityCheckDisabled()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isConnectivityCheckDisabled:Z

    return p0
.end method

.method public isNCHOModeEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNetworkRequiresForceConnection(Ljava/lang/String;)Z
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiB2bPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    if-eqz p0, :cond_15

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noNetworkDisable()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method isPolicyApplied(Ljava/lang/String;)Z
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 177
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    if-eqz p0, :cond_30

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPolicyApplied("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiB2BPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v0
.end method

.method public isWesModeEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 355
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->isWesModeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public resetNCHOMode()V
    .registers 2

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    return-void
.end method

.method public sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 375
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    if-eqz v0, :cond_b

    .line 376
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 378
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendLegacyReassociationRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 12

    .line 367
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->sendVendorSpecificActionFrame(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 311
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 314
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setCountryRev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setNCHOModeEnabled(Ljava/lang/String;Z)Z
    .registers 4

    .line 326
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    if-eq v0, p2, :cond_15

    .line 330
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method setPolicyApplied(Ljava/lang/String;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->verboseLoggingEnabled:Z

    if-eqz v0, :cond_22

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPolicyApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiB2BPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->policyApplied:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRoamBand(Ljava/lang/String;I)Z
    .registers 4

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getVendorVersion()I

    .line 296
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 299
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamBand(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamDelta(Ljava/lang/String;I)Z
    .registers 4

    .line 276
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamDelta(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 351
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanChannels(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setRoamScanEnabled(Ljava/lang/String;Z)Z
    .registers 4

    .line 341
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 344
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setRoamScanPeriod(Ljava/lang/String;I)Z
    .registers 3

    .line 287
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamScanPeriod(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setRoamTrigger(Ljava/lang/String;I)Z
    .registers 4

    .line 254
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 257
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isChipsetNCHOEnabled:Z

    if-eqz v0, :cond_13

    .line 258
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamTrigger(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 260
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setWesModeEnabled(Ljava/lang/String;Z)Z
    .registers 4

    .line 359
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isPolicyApplied(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->wifiNative:Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/b2b/NativeB2bRoamCommand;->setWesModeEnabled(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$B2bPolicyListener;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
