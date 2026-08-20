.class public Lcom/android/internal/telephony/ims/ImsResolver;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;,
        Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;
    }
.end annotation


# static fields
.field public static final blacklist METADATA_EMERGENCY_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist METADATA_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.MMTEL_FEATURE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final blacklist METADATA_RCS_FEATURE:Ljava/lang/String; = "android.telephony.ims.RCS_FEATURE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/internal/telephony/ims/ImsResolver;


# instance fields
.field private final blacklist mActiveControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mBootCompleted:Landroid/content/BroadcastReceiver;

.field private blacklist mBootCompletedHandlerRan:Z

.field private final blacklist mBoundImsServicesByFeature:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mBoundServicesLock:Ljava/lang/Object;

.field private final blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mCarrierConfigReceived:Z

.field private final blacklist mCarrierServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private blacklist mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

.field private final blacklist mEventLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private final blacklist mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private final blacklist mInstalledServicesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsWiFiOnlyModel:Z

.field private blacklist mNumSlots:I

.field private final blacklist mOverrideServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mReceiverContext:Landroid/content/Context;

.field private final blacklist mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

.field private final blacklist mRunnableExecutor:Landroid/os/HandlerExecutor;

.field private blacklist mSamsungService:Ljava/lang/String;

.field private final blacklist mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

.field private final blacklist mStaticComponent:Landroid/content/ComponentName;

.field private blacklist mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

.field private blacklist mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;


# direct methods
.method public static synthetic blacklist $r8$lambda$-bIdYEI6iD9A9jJ2sUHhfpqD6VQ(IILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$doesCachedImsServiceExist$2(IILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$1e3juk-SffAFyAwIKlOGye-9yhQ(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$9(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$91LWwhgjNyPzAHNy-Ga83Q5DmCQ(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getSlotsForActiveCarrierService$5(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$A9E7XdyOKBURei3Zt9AswpP_qOc(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$sanitizeFeatureConfig$13(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$AbGeNCA0-YXosd7CQtBluKCTXSg(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$10(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$FR-n5Vi3v6zmXPCRonjGVs8Tm-I(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$calculateFeaturesToCreate$8(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$H3PGtjKf2ohdXGJ69PzGUkNXKe4(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$disableIms$1(ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OYlxhTSV39054kcS8i5v7WwU1cs(Ljava/lang/Integer;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$handleMsimConfigChange$12(Ljava/lang/Integer;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$U-823hr5l8gj3_s-32-jIxF2HTE(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getControllerByServiceInfo$6(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YUaSCBwEWx3N5GJkdupwxvfzxcU(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/LinkedBlockingQueue;ZII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getImsServiceConfiguration$3(Ljava/util/concurrent/LinkedBlockingQueue;ZII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$do6SAZhPyGivY_8ylc-oLAm3Klc(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$sanitizeFeatureConfig$14(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$iQNXuJBMYknawWNUQ_gcDgLKyW0(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getInfoByPackageName$7(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$jCW5IFMZ6FpRlR-N7xZUzKzMY0M(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$enableIms$0(ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mBKmfYBNzaBNqwtmdtmrHlaApLs(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$shouldFeaturesCauseBind$11(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$xLd43Oh4UfXMY5LqEzxz20Rr348(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/CompletableFuture;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getConfiguredImsServicePackageName$4(Ljava/util/concurrent/CompletableFuture;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventLog(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsWiFiOnlyModel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumSlots(Lcom/android/internal/telephony/ims/ImsResolver;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStaticComponent(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver;)Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBootCompletedHandlerRan(Lcom/android/internal/telephony/ims/ImsResolver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierConfigReceived(Lcom/android/internal/telephony/ims/ImsResolver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsServiceForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->addImsServiceForWiFiOnlyModel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcarrierConfigChanged(Lcom/android/internal/telephony/ims/ImsResolver;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearCarrierServiceOverrides(Lcom/android/internal/telephony/ims/ImsResolver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->clearCarrierServiceOverrides(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdynamicQueryComplete(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleFeaturesChanged(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMsimConfigChange(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleMsimConfigChange(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeAddedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeRemovedImsService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$moverrideCarrierService(Lcom/android/internal/telephony/ims/ImsResolver;ILjava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->overrideCarrierService(ILjava/util/Map;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$moverrideDeviceService(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->overrideDeviceService(Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEventForWiFiOnlyModel(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->removeEventForWiFiOnlyModel()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateInstalledServicesCache(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateInstalledServicesCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smprintFeatures(Ljava/util/Set;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;Landroid/os/Looper;)V
    .registers 10

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompleted:Landroid/content/BroadcastReceiver;

    .line 363
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$4;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    .line 374
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$5;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    .line 408
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$6;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 433
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 448
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    .line 461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    .line 468
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    .line 470
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompletedHandlerRan:Z

    .line 473
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    .line 477
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsWiFiOnlyModel:Z

    .line 585
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsResolver$8;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 620
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    .line 623
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device MMTEL package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", device RCS package:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImsResolver"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 637
    iput p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 638
    iput-object p5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    .line 639
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    .line 641
    new-instance p2, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;

    invoke-direct {p2, p0, p6}, Lcom/android/internal/telephony/ims/ImsResolver$ResolverHandler;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    .line 642
    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRunnableExecutor:Landroid/os/HandlerExecutor;

    .line 644
    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p2, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    .line 645
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSamsungService:Ljava/lang/String;

    .line 647
    new-instance p2, Landroid/util/SparseArray;

    iget p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p2, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    .line 649
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSamsungService:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    .line 650
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSamsungService:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    .line 651
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSamsungService:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    const-string p2, "carrier_config"

    .line 653
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 655
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    .line 656
    new-instance p1, Landroid/util/SparseArray;

    iget p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    .line 657
    new-instance p1, Landroid/util/SparseIntArray;

    iget p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 658
    :goto_f4
    iget p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, p1, :cond_101

    .line 659
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    :cond_101
    return-void
.end method

.method private blacklist addImsServiceForWiFiOnlyModel()V
    .registers 3

    const-string v0, "ImsResolver"

    const-string v1, "addImsServiceForWiFiOnlyModel: "

    .line 1982
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1983
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 1985
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    .line 1986
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->sendEventForWiFiOnlyModel()V

    :cond_16
    return-void
.end method

.method private blacklist alwaysRequireMmtelFeatureForECall(II)Z
    .registers 5

    const-string p0, "gsm.sim.state"

    const-string v0, "ABSENT"

    .line 1334
    invoke-static {p1, p0, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LOADED"

    .line 1335
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1c

    const-string p1, "READY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    move p0, v1

    goto :goto_1d

    :cond_1c
    move p0, v0

    :goto_1d
    if-eqz p0, :cond_24

    if-eq p2, v1, :cond_23

    if-nez p2, :cond_24

    :cond_23
    return v1

    :cond_24
    return v0
.end method

.method private blacklist bindCarrierServicesIfAvailable()V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 760
    :goto_3
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v3, :cond_63

    .line 761
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSubId(I)I

    move-result v3

    .line 762
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object v4

    move v5, v0

    :goto_12
    const/4 v6, 0x3

    if-ge v5, v6, :cond_60

    .line 764
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 765
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5d

    .line 766
    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindCarrierServicesIfAvailable - carrier package found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " on slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 769
    iput-boolean v8, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigReceived:Z

    .line 770
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->setSubId(II)V

    .line 771
    invoke-direct {p0, v6, v1, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    .line 772
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 775
    iget-boolean v7, v6, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v7, :cond_5a

    move v2, v8

    goto :goto_5d

    .line 779
    :cond_5a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_63
    if-eqz v2, :cond_68

    .line 784
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_68
    return-void
.end method

.method private blacklist bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1286
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    const-string v2, "ImsResolver"

    if-eqz v0, :cond_52

    .line 1291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService connection exists for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", updating features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :try_start_34
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_97

    :catch_38
    move-exception p2

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindImsService: error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 1301
    :cond_52
    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-interface {v0, v3, v4, p0, v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding ImsService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with features: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/Set;Landroid/util/SparseIntArray;)Z

    .line 1305
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindImsServiceWithFeatures - create new controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1308
    :goto_97
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9e
    return-void
.end method

.method private blacklist calculateFeatureConfigurationChange()V
    .registers 5

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1758
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v2

    .line 1759
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1760
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/Set;)V

    goto :goto_a

    .line 1762
    :cond_24
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_a

    :cond_28
    return-void
.end method

.method private blacklist calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;

    move-result-object v1

    .line 1351
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1355
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1358
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1354
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 1361
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1362
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1365
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    .line 1369
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1371
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1362
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_5b
    return-object v0
.end method

.method private blacklist carrierConfigChanged(II)V
    .registers 5

    .line 1487
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->setSubId(II)V

    .line 1488
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundDeviceServices()V

    const/4 v0, -0x1

    if-gt p1, v0, :cond_1c

    const/4 v0, 0x0

    .line 1491
    :goto_a
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1c

    .line 1492
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1495
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsPackageOverrideConfig(I)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    return-void
.end method

.method private blacklist clearCarrierServiceOverrides(I)V
    .registers 4

    const-string v0, "ImsResolver"

    const-string v1, "clearing carrier ImsService overrides"

    .line 1452
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->removeOverridePackageName(I)V

    .line 1455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(II)V

    return-void
.end method

.method private blacklist doesCachedImsServiceExist(Ljava/lang/String;II)Z
    .registers 4

    .line 994
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda10;-><init>(II)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method private blacklist doesCarrierConfigurationExist(II)Z
    .registers 5

    .line 978
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 983
    :cond_c
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private blacklist dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1710
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1712
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dynamicQueryComplete: Couldn\'t find cached info for name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1716
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicQueryComplete: for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", features: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1717
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 1722
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->isQueryInProgress()Z

    move-result p1

    if-nez p1, :cond_74

    .line 1723
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1724
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string p2, "[warning] dynamicQueryComplete - HANDLER_DYNAMIC_FEATURE_CHANGE pending with calculateFeatureConfigurationChange()"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1727
    :cond_71
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_74
    return-void
.end method

.method private blacklist getCarrierConfiguredPackageName(II)Ljava/lang/String;
    .registers 3

    .line 928
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getCarrierConfiguredPackageNames(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    .line 935
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 936
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private blacklist getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;
    .registers 5

    .line 1116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1118
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 1124
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v0

    .line 1125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1126
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCachedImsServiceExist(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_22

    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsServiceController;"
        }
    .end annotation

    .line 1266
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1267
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1268
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsServiceController;

    return-object p0
.end method

.method private blacklist getDeviceConfiguration(I)Ljava/lang/String;
    .registers 4

    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 909
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 910
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private blacklist getImsPackageOverrideConfig(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1562
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_d

    .line 1563
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p1, 0x0

    const-string v0, "config_ims_package_override_string"

    .line 1564
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "config_ims_mmtel_package_override_string"

    .line 1568
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config_ims_rcs_package_override_string"

    .line 1571
    invoke-virtual {p0, v1, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1573
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 1574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    .line 1575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 1576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    :cond_3b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x2

    .line 1579
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    return-object p1
.end method

.method private blacklist getImsServiceControllers(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_44

    .line 841
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_7

    goto :goto_44

    .line 845
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_a
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 847
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_41

    if-nez p0, :cond_21

    const-string p0, "ImsResolver"

    const-string p1, "getImsServiceControllers: couldn\'t find any active ImsServiceControllers"

    .line 849
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 855
    :cond_21
    new-instance p1, Landroid/util/ArraySet;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v0, 0x0

    .line 856
    :goto_28
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 857
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 858
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v1, :cond_3d

    .line 859
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-object p1

    :catchall_41
    move-exception p0

    .line 847
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    .line 842
    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1821
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getStaticImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    .line 1824
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1826
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_27
    return-object v0
.end method

.method private blacklist getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 1280
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p0
.end method

.method private blacklist getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 1273
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 1274
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1275
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/ims/ImsResolver;
    .registers 1

    .line 161
    sget-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    return-object v0
.end method

.method private blacklist getOverridePackageName(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    .line 964
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 965
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mOverrideServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private blacklist getOverridePackageName(II)Ljava/lang/String;
    .registers 3

    .line 957
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private blacklist getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1254
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1255
    :goto_f
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v2, :cond_44

    .line 1256
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1257
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_44
    return-object v0
.end method

.method private blacklist getStaticImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>()V

    .line 1805
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    iput-object v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1806
    iput-object p1, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1807
    iget p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1808
    iget p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1809
    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 p1, 0x2

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1810
    iput-boolean v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 1811
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private blacklist getSubId(I)I
    .registers 4

    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 1908
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1909
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private blacklist handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1620
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1621
    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1622
    iput-object p2, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1623
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist handleMsimConfigChange(Ljava/lang/Integer;)V
    .registers 10

    .line 1627
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 1628
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_9

    return-void

    .line 1631
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 1632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMsimConfigChange: oldLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsResolver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSIM config change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_95

    .line 1638
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_56
    if-ge v1, v0, :cond_95

    .line 1640
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object v4

    .line 1641
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1642
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v6, v1, v5}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    goto :goto_64

    .line 1645
    :cond_7a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v3

    .line 1646
    :goto_7f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_8f

    .line 1647
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1648
    invoke-direct {p0, v6, v1, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->setOverridePackageName(Ljava/lang/String;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 1651
    :cond_8f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->removeSlotId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_95
    const/4 v1, 0x0

    .line 1657
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1658
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1659
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    if-eqz v5, :cond_cf

    .line 1661
    iget-boolean v6, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v6, :cond_c2

    .line 1662
    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    goto :goto_9e

    .line 1665
    :cond_c2
    invoke-virtual {v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda5;

    invoke-direct {v5, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Integer;)V

    .line 1666
    invoke-interface {v4, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_9e

    .line 1670
    :cond_cf
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMsimConfigChange: detected untracked service - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMsimConfigChange: detected untracked package, queueing to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1674
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1673
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1674
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9e

    .line 1678
    :cond_109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v0, :cond_112

    .line 1681
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_112
    return-void
.end method

.method private blacklist isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1247
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 1248
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 1249
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private blacklist isWifiOnlyModel()Z
    .registers 2

    const-string p0, "ro.carrier"

    const-string v0, "Unknown"

    .line 1977
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "wifi-only"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "ro.radio.noril"

    const-string v0, "no"

    .line 1978
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$10(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 4

    .line 1369
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->doesCarrierConfigurationExist(II)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1370
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->alwaysRequireMmtelFeatureForECall(II)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$8(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 5

    .line 1355
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v1, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1356
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    iget p1, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1357
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->alwaysRequireMmtelFeatureForECall(II)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method private synthetic blacklist lambda$calculateFeaturesToCreate$9(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 3

    .line 1365
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 1366
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object p0

    .line 1365
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$disableIms$1(ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 818
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->disableIms(II)V

    return-void
.end method

.method private static synthetic blacklist lambda$doesCachedImsServiceExist$2(IILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 4

    .line 996
    iget v0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne v0, p0, :cond_a

    iget p0, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic blacklist lambda$enableIms$0(ILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 3

    .line 793
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSubId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->enableIms(II)V

    return-void
.end method

.method private synthetic blacklist lambda$getConfiguredImsServicePackageName$4(Ljava/util/concurrent/CompletableFuture;II)V
    .registers 4

    .line 1073
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 1078
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_c
    return-void
.end method

.method private static synthetic blacklist lambda$getControllerByServiceInfo$6(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .registers 2

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getImsServiceConfiguration$3(Ljava/util/concurrent/LinkedBlockingQueue;ZII)V
    .registers 5

    if-eqz p2, :cond_7

    .line 1013
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 1014
    :cond_7
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object p0

    .line 1012
    :goto_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic blacklist lambda$getInfoByPackageName$7(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .registers 2

    .line 1274
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$getSlotsForActiveCarrierService$5(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/lang/String;)Z
    .registers 2

    .line 1257
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$handleMsimConfigChange$12(Ljava/lang/Integer;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 1666
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic blacklist lambda$sanitizeFeatureConfig$13(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 1741
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic blacklist lambda$sanitizeFeatureConfig$14(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 1744
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic blacklist lambda$shouldFeaturesCauseBind$11(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 1432
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static blacklist make(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;)V
    .registers 13

    .line 149
    sget-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    if-nez v0, :cond_15

    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 151
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/ims/ImsResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/ims/ImsFeatureBinderRepository;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/telephony/ims/ImsResolver;->sInstance:Lcom/android/internal/telephony/ims/ImsResolver;

    :cond_15
    return-void
.end method

.method private blacklist maybeAddedImsService(Ljava/lang/String;)V
    .registers 9

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeAddedImsService, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1193
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c7

    .line 1198
    iget-boolean v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v5, :cond_ac

    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeAddedImsService - updating features for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1199
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating features in cached ImsService: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating features - Old features: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " new features: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    goto :goto_fe

    .line 1209
    :cond_ac
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maybeAddedImsService - scheduling query for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_1f

    .line 1214
    :cond_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding newly added ImsService to cache: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maybeAddedImsService - adding new ImsService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-boolean v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v3, :cond_101

    :goto_fe
    move v0, v4

    goto/16 :goto_1f

    .line 1222
    :cond_101
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_1f

    :cond_106
    if-eqz v0, :cond_10b

    .line 1226
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_10b
    return-void
.end method

.method private blacklist maybeRemovedImsService(Ljava/lang/String;)Z
    .registers 5

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeRemovedImsService - removing ImsService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing ImsService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1239
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    const/4 p0, 0x1

    return p0

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist overrideCarrierService(ILjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1439
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1440
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1441
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overriding carrier ImsService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    const-string v6, "invalid"

    .line 1443
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1441
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->setOverridePackageName(Ljava/lang/String;II)V

    goto :goto_8

    .line 1446
    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundServices(ILjava/util/Map;)V

    return-void
.end method

.method private blacklist overrideDeviceService(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1462
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1463
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1464
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overriding device ImsService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for feature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    const-string v7, "invalid"

    .line 1465
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1464
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v4

    .line 1467
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overrideDeviceService - device package changed (override): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ImsResolver"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->setDeviceConfiguration(Ljava/lang/String;I)V

    .line 1473
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_a0

    .line 1474
    iget-boolean v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v3, :cond_9b

    goto :goto_a0

    .line 1478
    :cond_9b
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto/16 :goto_9

    :cond_a0
    :goto_a0
    const/4 v1, 0x1

    goto/16 :goto_9

    :cond_a3
    if-eqz v1, :cond_a8

    .line 1482
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_a8
    return-void
.end method

.method private static blacklist printFeatures(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " features: ["

    .line 1769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_47

    .line 1771
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const-string v2, "{"

    .line 1772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    iget v2, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 1774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget v1, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_42
    const-string p0, "]"

    .line 1778
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 9

    if-ltz p1, :cond_95

    .line 1135
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_95

    const/4 v0, -0x1

    if-le p2, v0, :cond_95

    const/4 v0, 0x3

    if-lt p2, v0, :cond_e

    goto/16 :goto_95

    .line 1141
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_25

    .line 1144
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1145
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1147
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putImsController - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "ImsResolver"

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsServiceController added on slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1149
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1153
    monitor-exit v0

    return-void

    :catchall_92
    move-exception p0

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_11 .. :try_end_94} :catchall_92

    throw p0

    :cond_95
    :goto_95
    const-string p0, "ImsResolver"

    .line 1137
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putImsController received invalid parameters - slot: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist removeEventForWiFiOnlyModel()V
    .registers 3

    .line 1996
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 9

    const/4 v0, 0x0

    if-ltz p1, :cond_92

    const/4 v1, -0x1

    if-le p2, v1, :cond_92

    const/4 v1, 0x3

    if-lt p2, v1, :cond_b

    goto/16 :goto_92

    .line 1163
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1164
    :try_start_e
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_1a

    .line 1166
    monitor-exit v1

    return-object v0

    .line 1168
    :cond_1a
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v0, :cond_8d

    .line 1170
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImsController - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1170
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p0, "ImsResolver"

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsServiceController removed on slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1173
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1172
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1177
    :cond_8d
    monitor-exit v1

    return-object v0

    :catchall_8f
    move-exception p0

    .line 1178
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_e .. :try_end_91} :catchall_8f

    throw p0

    :cond_92
    :goto_92
    const-string p0, "ImsResolver"

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeImsController received invalid parameters - slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blacklist removeOverridePackageName(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 944
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private blacklist removeSlotId(I)V
    .registers 3

    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 1913
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1914
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private blacklist sanitizeFeatureConfig(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1741
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1743
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda9;-><init>()V

    .line 1744
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1745
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 1746
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 1747
    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    iget v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1749
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_41
    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1603
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_21

    .line 1605
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scheduleQueryForFeatures: Couldn\'t find cached info for name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsResolver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1608
    :cond_21
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 1612
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private blacklist scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1591
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1592
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    const-string v2, "ImsResolver"

    if-eqz v1, :cond_30

    .line 1593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scheduleQueryForFeatures: dynamic query for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already scheduled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1597
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleQueryForFeatures: starting dynamic query for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1838
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1842
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/16 v3, 0x80

    .line 1839
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1843
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_29

    .line 1846
    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>()V

    .line 1847
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1848
    iput-object p2, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1855
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5a

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-ne v3, p2, :cond_57

    goto :goto_5a

    .line 1880
    :cond_57
    iput-boolean v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    goto :goto_9b

    .line 1857
    :cond_5a
    :goto_5a
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_8b

    const-string v5, "android.telephony.ims.MMTEL_FEATURE"

    .line 1858
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1859
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1861
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1863
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1867
    :cond_7b
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.RCS_FEATURE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1868
    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(II)V

    .line 1873
    :cond_8b
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eq v3, p2, :cond_9b

    .line 1874
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1876
    iput-boolean v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 1882
    :cond_9b
    :goto_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", manifest query: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ImsResolver"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_IMS_SERVICE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ea

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "override_bind_check"

    .line 1889
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d2

    goto :goto_ea

    .line 1892
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not protected with BIND_IMS_SERVICE permission: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 1890
    :cond_ea
    :goto_ea
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    :cond_ef
    return-object v0
.end method

.method private blacklist sendEventForWiFiOnlyModel()V
    .registers 4

    .line 1991
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1992
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist setCarrierConfiguredPackageName(Ljava/lang/String;II)V
    .registers 4

    .line 922
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageNames(I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist setDeviceConfiguration(Ljava/lang/String;I)V
    .registers 4

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter v0

    .line 915
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private blacklist setOverridePackageName(Ljava/lang/String;II)V
    .registers 4

    .line 951
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setSubId(II)V
    .registers 4

    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 1902
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private blacklist shouldFeaturesCauseBind(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 1430
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda15;-><init>()V

    .line 1432
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method private blacklist startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 6

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v0

    const-string v1, "ImsResolver"

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotsForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "scheduleQueryForFeatures: skipping query for ImsService that is not set as carrier/device ImsService."

    .line 1690
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDynamicQuery - starting query for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1696
    invoke-interface {v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v3

    .line 1695
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->startQuery(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string v0, "startDynamicQuery: service could not connect. Retrying after delay."

    .line 1698
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "startDynamicQuery - query failed. Retrying in 5000 mS"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/16 v0, 0x1388

    .line 1701
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    goto :goto_55

    :cond_50
    const-string p0, "startDynamicQuery: Service queried, waiting for response."

    .line 1703
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method private blacklist unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .registers 7

    const-string v0, "ImsResolver"

    if-nez p1, :cond_5

    return-void

    .line 1317
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 1321
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindImsService - unbinding and removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_3e} :catch_3f

    goto :goto_58

    :catch_3f
    move-exception v1

    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindImsService: Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :goto_58
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    return-void
.end method

.method private blacklist updateBoundDeviceServices()V
    .registers 7

    const-string v0, "ImsResolver"

    const-string v1, "updateBoundDeviceServices: called"

    .line 1499
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_47

    .line 1502
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v3

    .line 1503
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1504
    iget-boolean v5, v4, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-nez v5, :cond_44

    .line 1505
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1506
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBoundDeviceServices: Schedule query for package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_47
    return-void
.end method

.method private blacklist updateBoundServices(ILjava/util/Map;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    if-le v1, v2, :cond_ec

    .line 1515
    iget v2, v0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt v1, v2, :cond_d

    goto/16 :goto_ec

    :cond_d
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_11
    const/4 v6, 0x3

    if-ge v3, v6, :cond_cd

    .line 1521
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getOverridePackageName(II)Ljava/lang/String;

    move-result-object v7

    .line 1522
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v8

    .line 1523
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    move-object/from16 v11, p2

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1524
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v12, "ImsResolver"

    const/4 v13, 0x1

    if-nez v10, :cond_61

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 1529
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3e

    const-string v9, "(none)"

    :cond_3e
    aput-object v9, v10, v2

    aput-object v7, v10, v13

    const/4 v9, 0x2

    sget-object v14, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v2, "invalid"

    invoke-interface {v14, v15, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v10, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    const-string v2, "updateBoundServices: overriding %s with %s for feature %s on slot %d"

    .line 1527
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_61
    move-object v7, v9

    .line 1535
    :goto_62
    invoke-direct {v0, v7, v1, v3}, Lcom/android/internal/telephony/ims/ImsResolver;->setCarrierConfiguredPackageName(Ljava/lang/String;II)V

    .line 1538
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    .line 1539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateBoundServices - carrier package changed: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " on slot "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", hasConfigChanged="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v6, v0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_c7

    .line 1545
    iget-boolean v6, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v6, :cond_c2

    goto :goto_c7

    .line 1549
    :cond_c2
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    move v5, v13

    goto :goto_c8

    :cond_c7
    :goto_c7
    move v4, v13

    :goto_c8
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_cd
    if-eqz v4, :cond_d2

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeatureConfigurationChange()V

    :cond_d2
    if-eqz v4, :cond_ec

    if-eqz v5, :cond_ec

    .line 1556
    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[warning] updateBoundServices - both hasConfigChange and query scheduled on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_ec
    :goto_ec
    return-void
.end method

.method private blacklist updateInstalledServicesCache()V
    .registers 5

    const/4 v0, 0x0

    .line 740
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist clearCarrierImsServiceConfiguration(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_15

    .line 883
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_8

    goto :goto_15

    .line 888
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 889
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const-string p0, "ImsResolver"

    const-string p1, "clearCarrierImsServiceConfiguration: invalid slotId!"

    .line 884
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist destroy()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->unregisterForMultiSimConfigChange(Landroid/os/Handler;)V

    .line 753
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist disableIms(I)V
    .registers 4

    .line 817
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 1920
    new-instance p1, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "ImsResolver:"

    .line 1921
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Configurations:"

    .line 1923
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Device:"

    .line 1925
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1927
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    monitor-enter p2

    .line 1928
    :try_start_22
    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceServices:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 1931
    :cond_60
    monitor-exit p2
    :try_end_61
    .catchall {:try_start_22 .. :try_end_61} :catchall_12e

    .line 1932
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Carrier: "

    .line 1933
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const/4 p2, 0x0

    move p3, p2

    .line 1935
    :goto_6e
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p3, v0, :cond_b4

    move v0, p2

    :goto_73
    const/4 v1, 0x3

    if-ge v0, v1, :cond_b1

    const-string v1, "slot="

    .line 1937
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", feature="

    .line 1939
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1940
    sget-object v1, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "?"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ": "

    .line 1941
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1943
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getCarrierConfiguredPackageName(II)Ljava/lang/String;

    move-result-object v1

    .line 1944
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const-string v1, "none"

    :cond_a8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_b1
    add-int/lit8 p3, p3, 0x1

    goto :goto_6e

    .line 1948
    :cond_b4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1949
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Cached ImsServices:"

    .line 1950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1952
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_cc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_dc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 1953
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_cc

    .line 1955
    :cond_dc
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Active controllers:"

    .line 1956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1958
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 1959
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1960
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1961
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->dump(Ljava/io/PrintWriter;)V

    .line 1962
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_f1

    .line 1964
    :cond_10a
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Connection Repository Log:"

    .line 1965
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1967
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p2, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->dump(Ljava/io/PrintWriter;)V

    .line 1968
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string p2, "Event Log:"

    .line 1969
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1971
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1972
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void

    :catchall_12e
    move-exception p0

    .line 1931
    :try_start_12f
    monitor-exit p2
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw p0
.end method

.method public blacklist enableIms(I)V
    .registers 4

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist getConfiguredImsServicePackageName(II)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string v0, " ms with package name: "

    const-string v4, "], async query complete, took "

    const-string v5, "getResolvedImsServicePackageName: ["

    const-string v6, "getResolvedImsServicePackageName - ["

    const-string v7, ", "

    const-string v9, "ImsResolver"

    if-ltz v2, :cond_118

    .line 1057
    iget v10, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v2, v10, :cond_118

    const/4 v10, -0x1

    if-le v3, v10, :cond_118

    const/4 v10, 0x3

    if-lt v3, v10, :cond_20

    goto/16 :goto_118

    .line 1063
    :cond_20
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v10}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1065
    iget-object v13, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 1068
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageNameInternal(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1071
    :cond_3d
    iget-object v13, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1, v10, v2, v3}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/CompletableFuture;II)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1083
    :goto_47
    :try_start_47
    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x32

    cmp-long v11, v13, v11

    if-lez v11, :cond_ba

    .line 1087
    iget-object v11, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1088
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1087
    invoke-virtual {v11, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1091
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1092
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_ba} :catch_bb

    :cond_ba
    return-object v10

    :catch_bb
    move-exception v0

    .line 1098
    iget-object v1, v1, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1099
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] -> Exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1098
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 1101
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] returned Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_116
    const/4 v1, 0x0

    return-object v1

    .line 1059
    :cond_118
    :goto_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResolvedImsServicePackageName received invalid parameters - slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 680
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public blacklist getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 3

    .line 833
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getIfExists(II)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/ImsFeatureContainer;

    if-eqz p0, :cond_11

    .line 834
    iget-object p1, p0, Lcom/android/ims/ImsFeatureContainer;->imsConfig:Landroid/telephony/ims/aidl/IImsConfig;

    :cond_11
    return-object p1
.end method

.method public blacklist getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 3

    .line 825
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->getIfExists(II)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/ims/ImsFeatureContainer;

    if-eqz p0, :cond_11

    .line 826
    iget-object p1, p0, Lcom/android/ims/ImsFeatureContainer;->imsRegistration:Landroid/telephony/ims/aidl/IImsRegistration;

    :cond_11
    return-object p1
.end method

.method public blacklist getImsServiceConfiguration(IZI)Ljava/lang/String;
    .registers 14

    const-string v0, "ImsResolver"

    if-ltz p1, :cond_45

    .line 1005
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_9

    goto :goto_45

    .line 1010
    :cond_9
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 1012
    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move v6, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/concurrent/LinkedBlockingQueue;ZII)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p0, 0x1388

    .line 1016
    :try_start_21
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImsServiceConfiguration: exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_45
    :goto_45
    const-string p0, "getImsServiceConfiguration: invalid slotId!"

    .line 1006
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_22

    .line 798
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_8

    goto :goto_22

    .line 802
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_b
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_17

    .line 805
    monitor-exit v1

    return-object v0

    .line 807
    :cond_17
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 808
    monitor-exit v1

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    :goto_22
    return-object v0
.end method

.method public blacklist getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1792
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    return-object v1
.end method

.method public blacklist imsServiceBindPermanentError(Landroid/content/ComponentName;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1418
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsServiceBindPermanentError: component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsServiceBindPermanentError - for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1420
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 4

    .line 1383
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public blacklist imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 4

    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    return-void
.end method

.method public blacklist imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 6

    if-eqz p2, :cond_58

    if-nez p1, :cond_5

    goto :goto_58

    .line 1406
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsServiceFeaturesChanged: config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    .line 1406
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsServiceFeaturesChanged - for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1408
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public blacklist initialize()V
    .registers 9

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string v1, "Initializing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string v0, "ImsResolver"

    const-string v1, "Initializing cache."

    .line 693
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 698
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateInstalledServicesCache()V

    .line 700
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 701
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 702
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 703
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 704
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 710
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    const/4 v4, 0x6

    if-eqz v2, :cond_6d

    .line 711
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8a

    .line 713
    :cond_6d
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mReceiverContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBootCompleted:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 715
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 716
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 723
    :cond_8a
    :goto_8a
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindCarrierServicesIfAvailable()V

    .line 725
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->isWifiOnlyModel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsWiFiOnlyModel:Z

    if-eqz v1, :cond_a4

    .line 727
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    const-string v2, "Initializing WiFi only"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string v1, "Initializing handling for WiFi only model"

    .line 728
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->sendEventForWiFiOnlyModel()V

    :cond_a4
    return-void
.end method

.method public blacklist isImsServiceConfiguredForFeature(II)Z
    .registers 5

    .line 1032
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getDeviceConfiguration(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1039
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getConfiguredImsServicePackageName(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public blacklist listenForFeature(IILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 5

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRunnableExecutor:Landroid/os/HandlerExecutor;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/ims/ImsFeatureBinderRepository;->registerForConnectionUpdates(IILcom/android/ims/internal/IImsServiceFeatureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public blacklist overrideImsServiceConfiguration(IZLjava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-ltz p1, :cond_18

    .line 896
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_7

    goto :goto_18

    .line 901
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver$OverrideConfig;-><init>(IZLjava/util/Map;)V

    .line 902
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const-string p0, "ImsResolver"

    const-string p1, "overrideImsServiceConfiguration: invalid slotId!"

    .line 897
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setImsDynamicQueryManagerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 685
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    return-void
.end method

.method public blacklist setImsServiceControllerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    return-void
.end method

.method public blacklist setSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 670
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    return-void
.end method

.method public blacklist setTelephonyManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mTelephonyManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$TelephonyManagerProxy;

    return-void
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsFeatureBinderRepository;->unregisterForConnectionUpdates(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    return-void
.end method
