.class public Lcom/android/server/VcnManagementService;
.super Landroid/net/vcn/IVcnManagementService$Stub;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VcnManagementService$VcnCallbackImpl;,
        Lcom/android/server/VcnManagementService$TrackingNetworkCallback;,
        Lcom/android/server/VcnManagementService$VcnCallback;,
        Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;,
        Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;,
        Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;,
        Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;,
        Lcom/android/server/VcnManagementService$Dependencies;
    }
.end annotation


# static fields
.field public static final CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DUMP_TIMEOUT_MILLIS:J

.field public static final LOCAL_LOG:Landroid/util/LocalLog;

.field public static final LOCAL_LOG_LINE_COUNT:I = 0x200

.field public static final TAG:Ljava/lang/String;

.field public static final VCN_CONFIG_FILE:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final VDBG:Z = false


# instance fields
.field public final mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

.field public final mConfigs:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/VcnManagementService$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

.field public final mRegisteredPolicyListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;",
            ">;"
        }
    .end annotation
.end field

.field public final mRegisteredStatusCallbacks:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

.field public final mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

.field public final mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

.field public final mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mVcns:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-_Ha0KpSnEAhYcHpUpTCXtuPZ40(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$clearVcnConfig$5(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YxvZhzCeVThssiPjGG4HrCE8hw(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ACAk-gMgy6L5vLeexVmLwPeazn0(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$notifyAllPolicyListenersLocked$2(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ah98adKs9Sq_mx3WNEd26UUrGLs(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$getUnderlyingNetworkPolicy$8(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YG_7M3pmtjEJe39XJFuPDMVSt2I(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VcnManagementService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$d11cUI23owHRwmT6M6gkSMi-1UQ(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$removeVcnUnderlyingNetworkPolicyListener$7(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$irEXW9r1V218vQt0UORkxh7GBKE(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$notifyAllPermissionedStatusCallbacksLocked$3(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l8qud9zz9bLHJgVZe4M5G2Q8pBc(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/VcnManagementService;->lambda$setVcnConfig$4(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-0F_1FnqqvCLrQS5zXg8E6cEug(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$dump$9(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZCRzse9R637dprziFJ6hNyhJqs(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService;->lambda$addVcnUnderlyingNetworkPolicyListener$6(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/VcnManagementService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSnapshot(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredStatusCallbacks(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephonySubscriptionTracker(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVcns(Lcom/android/server/VcnManagementService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastSnapshot(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->garbageCollectAndWriteVcnConfigsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misActiveSubGroup(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCallbackPermissioned(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/VcnManagementService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllPermissionedStatusCallbacksLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAllPolicyListenersLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopAndClearVcnConfigInternalLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopVcnLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteConfigsToDiskLocked(Lcom/android/server/VcnManagementService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 158
    const-class v0, Lcom/android/server/VcnManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    .line 159
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    .line 163
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 168
    new-instance v1, Ljava/io/File;

    .line 169
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "vcn/configs.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    const-wide/16 v1, 0x1e

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 216
    invoke-direct {p0}, Landroid/net/vcn/IVcnManagementService$Stub;-><init>()V

    .line 186
    new-instance v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$TrackingNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 193
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 197
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 211
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    const-string v0, "Missing context"

    .line 217
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v0, "Missing dependencies"

    .line 218
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 220
    invoke-virtual {p2}, Lcom/android/server/VcnManagementService$Dependencies;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    .line 221
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v3, Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-direct {v3, p1, v0}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 223
    new-instance v3, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback-IA;)V

    iput-object v3, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 224
    invoke-virtual {p2, p1, v0, v3}, Lcom/android/server/VcnManagementService$Dependencies;->newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 227
    sget-object v0, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/VcnManagementService$Dependencies;->newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 229
    new-instance p2, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;

    invoke-direct {p2, p0, v1}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnBroadcastReceiver-IA;)V

    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mVcnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 232
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 233
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 234
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 236
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    .line 237
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    new-instance p1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/VcnManagementService;)V

    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;
    .registers 3

    .line 284
    new-instance v0, Lcom/android/server/VcnManagementService;

    new-instance v1, Lcom/android/server/VcnManagementService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V

    return-object v0
.end method

.method private synthetic lambda$addVcnUnderlyingNetworkPolicyListener$6(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 905
    new-instance v0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    .line 907
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    :try_start_8
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1f

    .line 911
    :try_start_11
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    goto :goto_1d

    .line 914
    :catch_1a
    :try_start_1a
    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->binderDied()V

    .line 916
    :goto_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private synthetic lambda$clearVcnConfig$5(Landroid/os/ParcelUuid;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 769
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method private synthetic lambda$dump$9(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 1226
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1229
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1230
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1232
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_13
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v1, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1234
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mConfigs:"

    .line 1236
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1238
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1239
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    .line 1242
    :cond_60
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1243
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mVcns:"

    .line 1245
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1247
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn;

    .line 1248
    invoke-virtual {v1, p1}, Lcom/android/server/vcn/Vcn;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_79

    .line 1250
    :cond_89
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1251
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1252
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_13 .. :try_end_90} :catchall_a4

    const-string p0, "Local log:"

    .line 1254
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1256
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1257
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1258
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_a4
    move-exception p0

    .line 1252
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public static synthetic lambda$enforceCallingUserAndCarrierPrivilege$1(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$getUnderlyingNetworkPolicy$8(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 999
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1004
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1005
    :try_start_c
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2c

    .line 1007
    invoke-virtual {v1}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_21

    move v1, v4

    goto :goto_22

    :cond_21
    move v1, v3

    .line 1011
    :goto_22
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_2a

    :cond_29
    move v4, v3

    :goto_2a
    move v3, v1

    goto :goto_2d

    :cond_2c
    move v4, v3

    .line 1016
    :goto_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_7a

    .line 1018
    new-instance v1, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v0, 0x1c

    if-eqz v3, :cond_3b

    .line 1021
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_3e

    .line 1024
    :cond_3b
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :goto_3e
    if-eqz v4, :cond_45

    const/16 v0, 0xd

    .line 1028
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 1032
    :cond_45
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1033
    new-instance v1, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 1034
    invoke-static {v2, v0}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;->-$$Nest$mrequiresRestartForCarrierWifi(Lcom/android/server/VcnManagementService$TrackingNetworkCallback;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    invoke-direct {v1, v2, v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUnderlyingNetworkPolicy() called for caps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; and lp: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logVdbg(Ljava/lang/String;)V

    return-object v1

    :catchall_7a
    move-exception p0

    .line 1016
    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 6

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    const-string v1, "Failed to read configs from disk; retrying"

    .line 247
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :try_start_d
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->readFromDisk()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_65

    :goto_13
    if-eqz v0, :cond_64

    .line 259
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;-><init>()V

    .line 260
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_26
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 269
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 270
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnConfig;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 276
    :cond_58
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-interface {v0, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;->onNewSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    .line 277
    monitor-exit v1

    goto :goto_64

    :catchall_61
    move-exception p0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_26 .. :try_end_63} :catchall_61

    throw p0

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v0

    const-string v1, "Failed to read configs from disk"

    .line 253
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$notifyAllPermissionedStatusCallbacksLocked$3(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 630
    :try_start_0
    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {p1, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p1

    const-string p2, "VcnStatusCallback threw on VCN status change"

    .line 632
    invoke-virtual {p0, p2, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method

.method private synthetic lambda$notifyAllPolicyListenersLocked$2(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->-$$Nest$fgetmListener(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->onPolicyChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception p1

    const-string v0, "VcnStatusCallback threw on VCN status change"

    .line 617
    invoke-virtual {p0, v0, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method

.method private synthetic lambda$removeVcnUnderlyingNetworkPolicyListener$7(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 935
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    if-eqz p0, :cond_19

    .line 938
    invoke-interface {p1}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 940
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private synthetic lambda$setVcnConfig$4(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 713
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method


# virtual methods
.method public addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "listener was null"

    .line 897
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 904
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "subscriptionGroup was null"

    .line 757
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    .line 758
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config cleared for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 765
    new-instance p2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1220
    iget-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p3, "| "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1225
    iget-object p2, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V

    sget-wide p0, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6

    .line 394
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 397
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 404
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 405
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 406
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 411
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    return-void

    .line 420
    :cond_4e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Carrier privilege required for subscription group to set VCN Config"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceCarrierPrivilegeOrProvisioningPackage(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 4

    .line 722
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 724
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 729
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V
    .registers 3

    .line 425
    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 426
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v0, "Test-mode require the MANAGE_TEST_NETWORKS permission"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final enforcePrimaryUser()V
    .registers 2

    .line 377
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1d

    .line 383
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    .line 384
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "VcnManagementService can only be used by callers running as the primary user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 379
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling identity was System Server. Was Binder calling identity cleared?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final garbageCollectAndWriteVcnConfigsLocked()V
    .registers 5

    .line 788
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 792
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 793
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 794
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 796
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 797
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 799
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x1

    goto :goto_15

    :cond_32
    if-eqz v2, :cond_37

    .line 805
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    :cond_37
    return-void
.end method

.method public getAllStatusCallbacks()Ljava/util/Map;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 874
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAllVcns()Ljava/util/Map;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/Vcn;",
            ">;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 866
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConfigs()Ljava/util/Map;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Landroid/net/vcn/VcnConfig;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 858
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "opPkgName was null"

    .line 819
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 822
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_24
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 828
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 829
    invoke-virtual {p0, v3, p1}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 830
    :cond_48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 833
    :cond_4c
    monitor-exit v1

    return-object v0

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_24 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final getSubGroupForNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/os/ParcelUuid;
    .registers 6

    .line 951
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 953
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_36

    .line 957
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v0, :cond_30

    .line 959
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "Got multiple subscription groups for a single network"

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V

    .line 963
    :cond_30
    invoke-virtual {v1, v2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getGroupForSubId(I)Landroid/os/ParcelUuid;

    move-result-object v0

    goto :goto_f

    :cond_35
    return-object v0

    :catchall_36
    move-exception p0

    .line 953
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final getSubGroupToSubIdMappings(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            ")",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 585
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 586
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 587
    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    return-object v0
.end method

.method public getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .registers 6

    const-string/jumbo v0, "networkCapabilities was null"

    .line 978
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "linkProperties was null"

    .line 979
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 981
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_36

    const/4 v0, 0x7

    .line 990
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_36

    .line 991
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NetworkCapabilities must be for Test Network if using permission MANAGE_TEST_NETWORKS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 996
    :cond_36
    :goto_36
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    return-object p0
.end method

.method public final isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .registers 3

    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    .line 438
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getActiveDataSubscriptionGroup()Landroid/os/ParcelUuid;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .registers 5

    .line 1070
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p2, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1074
    :cond_a
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public final isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .registers 6

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    :try_start_4
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 738
    :try_start_7
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vcn/VcnConfig;

    if-eqz p0, :cond_21

    .line 739
    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    .line 740
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_27

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 742
    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_27

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_27
    move-exception p0

    .line 742
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 744
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    throw p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .registers 2

    .line 1176
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1180
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final logErr(Ljava/lang/String;)V
    .registers 5

    .line 1194
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1199
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;)V
    .registers 5

    .line 1184
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1189
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logVdbg(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .registers 5

    .line 1204
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 1209
    sget-object p0, Lcom/android/server/VcnManagementService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1210
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WTF ] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 627
    invoke-virtual {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 628
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_a

    :cond_25
    return-void
.end method

.method public final notifyAllPolicyListenersLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 613
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_a

    :cond_1f
    return-void
.end method

.method public registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .registers 15

    .line 1087
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v6

    .line 1088
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_a
    const-string/jumbo v0, "subGroup must not be null"

    .line 1090
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    .line 1091
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName must not be null"

    .line 1092
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1094
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1096
    invoke-interface {p2}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1097
    new-instance v10, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;ILcom/android/server/VcnManagementService$VcnStatusCallbackInfo-IA;)V
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_ad

    const/4 p2, 0x0

    .line 1101
    :try_start_38
    invoke-interface {v0, v10, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_a9
    .catchall {:try_start_38 .. :try_end_3b} :catchall_ad

    .line 1107
    :try_start_3b
    iget-object p3, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_ad

    .line 1108
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 1113
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnConfig;

    .line 1117
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vcn/Vcn;

    if-nez v1, :cond_5f

    move v2, p2

    goto :goto_63

    .line 1119
    :cond_5f
    invoke-virtual {v1}, Lcom/android/server/vcn/Vcn;->getStatus()I

    move-result v2

    :goto_63
    if-eqz v0, :cond_8d

    .line 1121
    invoke-virtual {p0, v10, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_8d

    :cond_6c
    if-nez v1, :cond_70

    const/4 p2, 0x1

    goto :goto_8d

    :cond_70
    const/4 p1, 0x2

    if-eq v2, p1, :cond_8c

    const/4 p1, 0x3

    if-ne v2, p1, :cond_77

    goto :goto_8c

    .line 1129
    :cond_77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown VCN status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_3e .. :try_end_8b} :catchall_a6

    goto :goto_8d

    :cond_8c
    :goto_8c
    move p2, v2

    .line 1134
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object p1, v10, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    invoke-interface {p1, p2}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_92} :catch_93
    .catchall {:try_start_8d .. :try_end_92} :catchall_a6

    goto :goto_99

    :catch_93
    move-exception p1

    :try_start_94
    const-string p2, "VcnStatusCallback threw on VCN status change"

    .line 1136
    invoke-virtual {p0, p2, p1}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1138
    :goto_99
    monitor-exit p3
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_a6

    .line 1140
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1109
    :cond_9e
    :try_start_9e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to register a callback that is already in use"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a6
    move-exception p0

    .line 1138
    monitor-exit p3
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ad

    .line 1140
    :catch_a9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ad
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    throw p0
.end method

.method public removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string/jumbo v0, "listener was null"

    .line 925
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 927
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 932
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setLastSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1166
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    return-void
.end method

.method public setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "subscriptionGroup was null"

    .line 694
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config was null"

    .line 695
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "opPkgName was null"

    .line 696
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 697
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VCN config updated for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 703
    invoke-virtual {v1}, Lcom/android/server/VcnManagementService$Dependencies;->getBinderCallingUid()I

    move-result v1

    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 704
    invoke-virtual {p0, p2}, Lcom/android/server/VcnManagementService;->enforceManageTestNetworksForTestMode(Landroid/net/vcn/VcnConfig;)V

    .line 705
    invoke-virtual {p0, p1, p3}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 707
    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 698
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mismatched caller and VcnConfig creator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting or updating VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logDbg(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 674
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vcn/Vcn;

    .line 675
    invoke-virtual {p0, p2}, Lcom/android/server/vcn/Vcn;->updateConfig(Landroid/net/vcn/VcnConfig;)V

    goto :goto_33

    .line 678
    :cond_28
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 679
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 646
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 647
    invoke-virtual {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    goto :goto_26

    .line 651
    :cond_36
    new-instance v7, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Lcom/android/server/VcnManagementService$VcnCallbackImpl-IA;)V

    .line 653
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 655
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    move-result v4

    .line 654
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$Dependencies;->newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;

    move-result-object v3

    .line 656
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-object v4, p1

    move-object v5, p2

    .line 657
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/VcnManagementService$Dependencies;->newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;

    move-result-object p2

    .line 658
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    const/4 p2, 0x2

    .line 665
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method public final stopAndClearVcnConfigInternalLocked(Landroid/os/ParcelUuid;)V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    :cond_14
    return-void
.end method

.method public final stopVcnLocked(Landroid/os/ParcelUuid;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping VCN config for subGrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/Vcn;

    if-nez v0, :cond_1f

    return-void

    .line 602
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/vcn/Vcn;->teardownAsynchronously()V

    .line 603
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnNetworkProvider;->register()V

    .line 369
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 371
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 373
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->register()V

    return-void
.end method

.method public unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .registers 6

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "callback must not be null"

    .line 1149
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1151
    invoke-interface {p1}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1152
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_26

    .line 1153
    :try_start_10
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    .line 1156
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1158
    :cond_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 1160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    .line 1158
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 1160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1161
    throw p0
.end method

.method public final writeConfigsToDiskLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;-><init>()V

    .line 842
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->writeToDisk(Landroid/os/PersistableBundle;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    const-string v1, "Failed to save configs to disk"

    .line 848
    invoke-virtual {p0, v1, v0}, Lcom/android/server/VcnManagementService;->logErr(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 849
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 v0, 0x0

    const-string v1, "Failed to save configs"

    invoke-direct {p0, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
