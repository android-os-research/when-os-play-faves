.class public Lcom/android/internal/telephony/data/AccessNetworksManager;
.super Landroid/os/Handler;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceCallback;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$ThrottleStatusChangedCallback;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;,
        Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;
    }
.end annotation


# static fields
.field public static final blacklist IWLAN_OPERATION_MODE_AP_ASSISTED:Ljava/lang/String; = "AP-assisted"

.field public static final blacklist IWLAN_OPERATION_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist IWLAN_OPERATION_MODE_LEGACY:Ljava/lang/String; = "legacy"

.field public static final blacklist SUPPORTED_APN_TYPES:[I

.field public static final blacklist SYSTEM_PROPERTIES_IWLAN_OPERATION_MODE:Ljava/lang/String; = "ro.telephony.iwlan_operation_mode"


# instance fields
.field private final blacklist mAccessNetworksManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAnomalyUUID:Ljava/util/UUID;

.field private final blacklist mAvailableNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final blacklist mAvailableTransports:[I

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final blacklist mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCurrentTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataThrottlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/dataconnection/DataThrottler;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathRecipient:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

.field private final blacklist mHandoverEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

.field private blacklist mIsHandoverEnabled:I

.field private blacklist mLastBoundPackageName:Ljava/lang/String;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPreferredTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

.field private blacklist mTargetBindingPackageName:Ljava/lang/String;

.field private blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;


# direct methods
.method public static synthetic blacklist $r8$lambda$JZTBiubag4NpScnvBor29iaaYUU(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$registerDataThrottler$0(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KmLqnfX0vxiGY8gFbWZg6FNz-Hw(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$setPreferredTransports$3(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nro4zkcZcqxu7Cuy27rFSs0-KPk(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$bindQualifiedNetworksService$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q8i6QBgDv2IkH1yo2lJ-hxcwsLg(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z7oDEz23l3J_ZEiQA8PurcLrADA(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->lambda$setPreferredTransports$4(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessNetworksManagerCallbacks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnomalyUUID(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAnomalyUUID:Ljava/util/UUID;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAvailableNetworks(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataThrottlers(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDataThrottlers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDeathRecipient:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandoverEnabledChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mHandoverEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIsHandoverEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLastBoundPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQualifiedNetworksChangedRegistrants(Lcom/android/internal/telephony/data/AccessNetworksManager;)Lcom/android/internal/telephony/RegistrantList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDeathRecipient:Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHandoverEnabled(Lcom/android/internal/telephony/data/AccessNetworksManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIsHandoverEnabled:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLastBoundPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindQualifiedNetworksService(Lcom/android/internal/telephony/data/AccessNetworksManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->bindQualifiedNetworksService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetQualifiedNetworksServicePackageName(Lcom/android/internal/telephony/data/AccessNetworksManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServicePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogl(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPreferredTransports(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->setPreferredTransports(Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 133
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    return-void

    :array_a
    .array-data 4
        0x11
        0x2
        0x20
        0x40
        0x80
        0x4
        0x200
        0x800
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .registers 8

    .line 453
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    new-instance p2, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x40

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string p2, "c2d1a639-00e2-4561-9619-6acf37d90590"

    .line 130
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAnomalyUUID:Ljava/util/UUID;

    .line 157
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 161
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 163
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDataThrottlers:Ljava/util/Set;

    .line 168
    new-instance p2, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p2}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mHandoverEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 173
    new-instance p2, Lcom/android/internal/telephony/data/AccessNetworksManager$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    iput-object p2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCurrentTransports:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    .line 208
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    .line 454
    iput-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIsHandoverEnabled:I

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getTelephonyFacade()Lcom/android/internal/telephony/TelephonyFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    .line 461
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v1

    if-eqz v1, :cond_93

    const-string p2, "operates in legacy mode."

    .line 466
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v1, p2, [I

    aput p2, v1, v0

    .line 469
    iput-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableTransports:[I

    goto :goto_ca

    :cond_93
    const-string v1, "operates in AP-assisted mode."

    .line 471
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 472
    fill-array-data v1, :array_da

    iput-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableTransports:[I

    .line 474
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    :try_start_aa
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 477
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_aa .. :try_end_c0} :catch_c1

    goto :goto_c7

    :catch_c1
    move-exception p2

    const-string v0, "Package name not found: "

    .line 482
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 484
    :goto_c7
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->bindQualifiedNetworksService()V

    .line 487
    :goto_ca
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 490
    new-instance p1, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d8
    return-void

    nop

    :array_da
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private blacklist bindQualifiedNetworksService()V
    .registers 2

    .line 513
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist getQualifiedNetworksList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 619
    :goto_6
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 620
    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 621
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    .line 620
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_27
    return-object v0
.end method

.method private blacklist getQualifiedNetworksServiceClassName()Ljava/lang/String;
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040383

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-string v1, "carrier_qualified_networks_service_class_override_string"

    .line 606
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    move-object v0, p0

    :cond_2c
    return-object v0
.end method

.method private blacklist getQualifiedNetworksServicePackageName()Ljava/lang/String;
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2c

    const-string v1, "carrier_qualified_networks_service_package_override_string"

    .line 581
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    move-object v0, p0

    :cond_2c
    return-object v0
.end method

.method private static blacklist getTransportFromAccessNetwork(I)I
    .registers 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    goto :goto_6

    :cond_5
    const/4 p0, 0x1

    :goto_6
    return p0
.end method

.method private synthetic blacklist lambda$bindQualifiedNetworksService$2()V
    .registers 6

    .line 515
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksServiceClassName()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "Can\'t find the binding package"

    .line 520
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 524
    :cond_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "android.telephony.data.QualifiedNetworksService"

    if-eqz v2, :cond_25

    .line 525
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 528
    :cond_25
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 533
    :goto_33
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    return-void

    .line 538
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    if-eqz v2, :cond_76

    .line 539
    invoke-interface {v2}, Landroid/telephony/data/IQualifiedNetworksService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 542
    :try_start_4a
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 543
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 542
    invoke-interface {v2, v3}, Landroid/telephony/data/IQualifiedNetworksService;->removeNetworkAvailabilityProvider(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_6b

    :catch_56
    move-exception v2

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove network availability updater. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    .line 548
    :goto_6b
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 552
    :cond_76
    :try_start_76
    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v0, "Cannot bind to the qualified networks service."

    .line 556
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 559
    :cond_a6
    iput-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a8} :catch_a9

    goto :goto_be

    :catch_a9
    move-exception v0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to the qualified networks service. Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->loge(Ljava/lang/String;)V

    :goto_be
    return-void
.end method

.method private synthetic blacklist lambda$new$1()V
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataRetryManager()Lcom/android/internal/telephony/data/DataRetryManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/AccessNetworksManager$2;

    new-instance v2, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager$2;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->registerCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerDataThrottler$0(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mDataThrottlers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_c

    .line 221
    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;->-$$Nest$mregisterDataThrottler(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworksServiceConnection;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    :cond_c
    return-void
.end method

.method private static synthetic blacklist lambda$setPreferredTransports$3(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V
    .registers 2

    .line 748
    iget p1, p1, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 749
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p1

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;->onPreferredTransportChanged(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$setPreferredTransports$4(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 3

    .line 747
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 857
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 861
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 865
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 869
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->log(Ljava/lang/String;)V

    .line 870
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setPreferredTransports(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 741
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;

    .line 742
    iget-object v1, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 743
    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getTransportFromAccessNetwork(I)I

    move-result v1

    .line 744
    iget v2, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 745
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    iget v3, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    new-instance v3, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredTransports: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/data/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 751
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transport="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    goto :goto_4

    :cond_64
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 880
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "current transports="

    .line 883
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 885
    sget-object p2, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    const-string v4, ": "

    if-ge v3, v1, :cond_69

    aget v5, p2, v3

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result v4

    .line 887
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 886
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 890
    :cond_69
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "preferred transports="

    .line 891
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 893
    sget-object p2, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, p2

    :goto_77
    if-ge v2, v1, :cond_9f

    aget v3, p2, v2

    .line 894
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v3

    .line 895
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 894
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 899
    :cond_9f
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 900
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInLegacy="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWLAN operation mode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ro.telephony.iwlan_operation_mode"

    .line 902
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 901
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs="

    .line 903
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 905
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 907
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 908
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public declared-synchronized blacklist getAvailableTransports()[I
    .registers 2

    monitor-enter p0

    .line 677
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableTransports:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getCurrentTransport(I)I
    .registers 5

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 704
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_25

    .line 705
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_25
    return v1
.end method

.method public blacklist getCurrentTransportByNetworkCapability(I)I
    .registers 2

    .line 687
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result p0

    return p0
.end method

.method public blacklist getPreferredTransport(I)I
    .registers 5

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 770
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_25

    .line 771
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPreferredTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_25
    return v1
.end method

.method public blacklist getPreferredTransportByNetworkCapability(I)I
    .registers 2

    .line 783
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 788
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result p0

    return p0
.end method

.method public blacklist isAnyApnOnIwlan()Z
    .registers 9

    .line 797
    sget-object v0, Lcom/android/internal/telephony/data/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_24

    aget v4, v0, v3

    .line 798
    iget-object v5, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_1a

    .line 799
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransport(I)I

    move-result v4

    if-ne v4, v6, :cond_21

    return v7

    .line 803
    :cond_1a
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getCurrentTransport(I)I

    move-result v4

    if-ne v4, v6, :cond_21

    return v7

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_24
    return v2
.end method

.method public blacklist isInLegacyMode()Z
    .registers 4

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    const-string v1, "ro.telephony.iwlan_operation_mode"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyFacade;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP-assisted"

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const-string v1, "legacy"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 667
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    return p0
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    .line 843
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist registerDataThrottler(Lcom/android/internal/telephony/dataconnection/DataThrottler;)V
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/DataThrottler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist registerForHandoverEnabledChanged(Landroid/os/Handler;I)V
    .registers 5

    if-eqz p1, :cond_d

    .line 825
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 826
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mHandoverEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    :cond_d
    return-void
.end method

.method public blacklist registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 635
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 636
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 640
    iget-object p1, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_1c

    .line 641
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getQualifiedNetworksList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public blacklist setCurrentTransport(II)V
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 728
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_3c

    .line 729
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentTransport: apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", transport="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->logl(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public blacklist setCurrentTransportByNetworkCapability(II)V
    .registers 3

    .line 716
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/AccessNetworksManager;->setCurrentTransport(II)V

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V
    .registers 2

    .line 853
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mAccessNetworksManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterForHandoverEnabledChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 832
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mHandoverEnabledChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method

.method public blacklist unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 818
    iget-object p0, p0, Lcom/android/internal/telephony/data/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_7
    return-void
.end method
