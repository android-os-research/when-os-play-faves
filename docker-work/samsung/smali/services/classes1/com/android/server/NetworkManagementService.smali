.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$NetdTetherEventListener;,
        Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;,
        Lcom/android/server/NetworkManagementService$Dependencies;
    }
.end annotation


# static fields
.field public static final ACTION_VPN_INTERFACE_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

.field public static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field public static final DBG:Z

.field public static final EXTRA_ACTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

.field public static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field public static final MODIFY_OPERATION_ADD:Z = true

.field public static final MODIFY_OPERATION_REMOVE:Z = false

.field public static final TAG:Ljava/lang/String; = "NetworkManagement"

.field public static final UID_VIDEOCALL:I = -0x64


# instance fields
.field public mActiveAlerts:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mActiveQuotas:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public final mDaemonHandler:Landroid/os/Handler;

.field public volatile mDataSaverMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation
.end field

.field public final mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public volatile mFirewallEnabled:Z

.field public mNetdService:Landroid/net/INetd;

.field public mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

.field public final mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mOemNetd:Lcom/android/internal/net/IOemNetd;

.field public final mQuotaLock:Ljava/lang/Object;

.field public final mRulesLock:Ljava/lang/Object;

.field public volatile mStrictEnabled:Z

.field public final mTetheringStatsProviders:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTetheringStatsProviders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ITetheringStatsProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUidAllowOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidCleartextPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mQuotaLock"
        }
    .end annotation
.end field

.field public mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field

.field public mUidRejectOnMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CF2XPDnS2IaiP8WZN-NVUuSn_yo(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I0TNuYzaHUMOWC7XeDAN0XElEDY(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->lambda$tetherLimitReached$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Od9TMyfHGsPQlxA82WtM_GHfarA(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PcxlmmPDEkj0RkB0C7MabgkYsBg(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyRouteChange$11(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XQgIPF8hPEGUkcKfZrCGrGOQPek(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wcx4HPfYdamokjlTi02u8Zx-5o(IZJILandroid/net/INetworkManagementEventObserver;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceClassActivity$5(IZJILandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXld2ArZjQy3fuf_MW9Li_nCSc4(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fW3JOy97hT9FtV2CHcNvjyITxU0(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fWzMof1f9eCtQInfWJBmWXQGVxw(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kz9_XRHPSKOfsbS8rZens8hIjGw(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->lambda$notifyAddressRemoved$8(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2ffkpaUhs_11Up10ahKRvrd_Zs(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qp-xxSOE9mTTirqA2nddlL_2VO8(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonHandler(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misNetworkRestrictedInternal(Lcom/android/server/NetworkManagementService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyAddressRemoved(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAddressUpdated(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceAdded(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceClassActivity(Lcom/android/server/NetworkManagementService;IZJI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceDnsServerInfo(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceLinkStateChanged(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceRemoved(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyInterfaceStatusChanged(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyLimitReached(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRouteChange(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendusbTetheringUpdate(Lcom/android/server/NetworkManagementService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->sendusbTetheringUpdate()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 317
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 201
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 206
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 220
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 222
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 225
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 228
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 231
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 237
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 243
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 249
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 255
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 260
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 265
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 268
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    .line 318
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 319
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 320
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    .line 321
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$Dependencies;)V
    .registers 6

    .line 302
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 201
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 206
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 212
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 220
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 222
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 225
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 228
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 231
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 237
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 243
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 249
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 255
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 260
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 265
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 268
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    .line 277
    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    .line 303
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    .line 306
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 308
    new-instance p1, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-direct {p1, p0, v1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener-IA;)V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 310
    new-instance p1, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {p1, p0, v1}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$LocalService-IA;)V

    invoke-virtual {p2, p1}, Lcom/android/server/NetworkManagementService$Dependencies;->registerLocalService(Lcom/android/server/NetworkManagementInternal;)V

    .line 312
    monitor-enter v0

    .line 313
    :try_start_9d
    new-instance p1, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    invoke-direct {p1, p0, v1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider-IA;)V

    const-string/jumbo p0, "netd"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v0

    return-void

    :catchall_aa
    move-exception p0

    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_9d .. :try_end_ac} :catchall_aa

    throw p0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/android/server/NetworkManagementService$Dependencies;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementService$Dependencies;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$Dependencies;)Lcom/android/server/NetworkManagementService;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$Dependencies;)Lcom/android/server/NetworkManagementService;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$Dependencies;)V

    .line 328
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    const-string p1, "NetworkManagement"

    if-eqz p0, :cond_10

    const-string v1, "Creating NetworkManagementService"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz p0, :cond_17

    const-string v1, "Connecting native netd service"

    .line 329
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    if-eqz p0, :cond_21

    const-string p0, "Connected"

    .line 331
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v0
.end method

.method public static fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;
    .registers 5

    .line 996
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 997
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1000
    new-instance v2, Landroid/net/LinkAddress;

    iget v3, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1001
    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    .line 1002
    invoke-virtual {v0, v3}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return-object v0
.end method

.method public static synthetic lambda$notifyAddressRemoved$8(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceClassActivity$5(IZJILandroid/net/INetworkManagementEventObserver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p5

    move v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 452
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(IZJI)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method public static synthetic lambda$notifyRouteChange$11(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private synthetic lambda$tetherLimitReached$6()V
    .registers 3

    const-string/jumbo v0, "globalAlert"

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 4

    .line 973
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 974
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 975
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object p1

    .line 976
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 977
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_18

    :cond_14
    const-string p1, ""

    .line 979
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 981
    :goto_18
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 982
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 983
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 985
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_4d
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 987
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addApeRule(ZLjava/lang/String;I)I
    .registers 6

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRule is called  add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_12

    const-string v1, " true"

    goto :goto_14

    :cond_12
    const-string v1, "false"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interface name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bandwidthMbps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :try_start_30
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    move-result p0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_36} :catch_37
    .catch Landroid/os/ServiceSpecificException; {:try_start_30 .. :try_end_36} :catch_37

    return p0

    :catch_37
    move-exception p0

    .line 2631
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addchain chain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iptype : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2345
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_34
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p0

    .line 2347
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x63

    .line 2059
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2061
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p0, p1, p2}, Lcom/android/net/module/util/NetdUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "addIpAcceptRule"

    .line 2469
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2472
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2474
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 2969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLegacyRoute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2972
    :try_start_19
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_19 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p0

    .line 2974
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addMptcpLink(Ljava/lang/String;)V
    .registers 4

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addmptcplink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2324
    :try_start_19
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_19 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 2326
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    .registers 6

    .line 829
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    .line 832
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    goto :goto_1c

    .line 834
    :cond_11
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_1c

    :catch_17
    const-string p0, "addOrRemoveSystemAppFromDataSaverWhitelist Error"

    .line 837
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    return-void
.end method

.method public addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 2148
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    :try_start_9
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 2152
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .registers 4

    .line 1117
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1118
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    sget-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v0, p1, p2}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method public addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string v1, "addSocksRule"

    .line 2363
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2366
    :try_start_a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 2368
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "addSocksSkipRule"

    .line 2406
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2409
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2411
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string v1, "addSocksSkipRuleProto"

    .line 2427
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " iptype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2431
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29
    .catch Landroid/os/ServiceSpecificException; {:try_start_1e .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 2433
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "addSourcePortAcceptRule"

    .line 2549
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2552
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2554
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "addSourceRoute"

    .line 2529
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2532
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2534
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 16

    const-string v0, "NetworkManagement"

    const-string v1, "addSocksRule"

    .line 2385
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2388
    :try_start_a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 2390
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "addUidToChain"

    .line 2449
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2452
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2454
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public allowProtect(I)V
    .registers 3

    .line 2037
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2040
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 2042
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final applyUidCleartextNetworkPolicy(II)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_21

    if-eq p2, v1, :cond_22

    if-ne p2, v0, :cond_a

    const/4 v0, 0x3

    goto :goto_22

    .line 1537
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown policy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    move v0, v1

    .line 1541
    :cond_22
    :goto_22
    :try_start_22
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1542
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_2d
    .catch Landroid/os/ServiceSpecificException; {:try_start_22 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p0

    .line 1544
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public buildFirewall()V
    .registers 2

    .line 2904
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2906
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 2908
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public cleanAllBlock()V
    .registers 3

    .line 2792
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string v1, "cleanAllBlock"

    .line 2793
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2797
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public cleanBlockPorts()V
    .registers 3

    .line 2825
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string v1, "cleanBlockPorts"

    .line 2826
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2830
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public clearEbpfMap(I)V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    const-string p0, "clearEbpfMap failed"

    .line 876
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1079
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1081
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .registers 11

    .line 1678
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing sockets after enabling chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/net/UidRangeParcel;

    .line 1681
    new-instance v3, Landroid/net/UidRangeParcel;

    const/16 v4, 0x2710

    const v5, 0x7fffffff

    invoke-direct {v3, v4, v5}, Landroid/net/UidRangeParcel;-><init>(II)V

    aput-object v3, v2, v1

    .line 1687
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1688
    :try_start_33
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 1689
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    new-array v5, v4, [I

    move v6, v1

    :goto_3e
    if-ge v1, v4, :cond_51

    .line 1691
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v0, :cond_4e

    .line 1692
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1696
    :cond_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_59

    if-eq v6, v4, :cond_92

    .line 1705
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    goto :goto_92

    :catchall_59
    move-exception p0

    .line 1696
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0

    .line 1709
    :cond_5c
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_5f
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object p1

    .line 1711
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    new-array v3, v2, [Landroid/net/UidRangeParcel;

    move v4, v1

    move v5, v4

    :goto_6b
    if-ge v4, v2, :cond_84

    .line 1713
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_81

    .line 1714
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1715
    new-instance v7, Landroid/net/UidRangeParcel;

    invoke-direct {v7, v6, v6}, Landroid/net/UidRangeParcel;-><init>(II)V

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1719
    :cond_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_5f .. :try_end_85} :catchall_b8

    if-eq v5, v2, :cond_8f

    .line 1722
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/UidRangeParcel;

    move-object v2, p1

    goto :goto_90

    :cond_8f
    move-object v2, v3

    :goto_90
    new-array v5, v1, [I

    .line 1729
    :cond_92
    :goto_92
    :try_start_92
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, v2, v5}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_97} :catch_98
    .catch Landroid/os/ServiceSpecificException; {:try_start_92 .. :try_end_97} :catch_98

    goto :goto_b7

    :catch_98
    move-exception p0

    const-string p1, "NetworkManagement"

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing sockets after enabling chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    return-void

    :catchall_b8
    move-exception p0

    .line 1719
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public closeSocketsForFreecess(ILjava/lang/String;)V
    .registers 3

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1645
    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    return-void
.end method

.method public closeSocketsForUid(I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 1662
    new-instance v1, Landroid/net/UidRangeParcel;

    invoke-direct {v1, p1, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v2, [I

    .line 1665
    :try_start_d
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, v0, v1}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_32

    :catch_13
    move-exception p0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing sockets for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkManagement"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public closeSocketsForUids([I)V
    .registers 5

    .line 1654
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    .line 1655
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->closeSocketsForUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public final connectNativeNetdService()V
    .registers 5

    const-string v0, "NetworkManagement"

    .line 511
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 513
    :try_start_a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v1, v2}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 514
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_2e

    const-string v1, "Register unsolicited event listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_2e

    :catch_19
    move-exception v1

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set Netd unsolicited event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 521
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_59

    const-string p0, "Get OemNet listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_43} :catch_44
    .catch Landroid/os/ServiceSpecificException; {:try_start_2e .. :try_end_43} :catch_44

    goto :goto_59

    :catch_44
    move-exception p0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_59
    return-void
.end method

.method public final convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .registers 4

    .line 2696
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, ""

    if-eq p0, v0, :cond_19

    const/4 v0, 0x7

    if-eq p0, v0, :cond_15

    const/16 v0, 0x9

    if-eq p0, v0, :cond_11

    goto :goto_27

    :cond_11
    const-string/jumbo v1, "throw"

    goto :goto_27

    :cond_15
    const-string/jumbo v1, "unreachable"

    goto :goto_27

    .line 2698
    :cond_19
    invoke-virtual {p1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 2699
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 2715
    :cond_27
    :goto_27
    new-instance p0, Landroid/net/RouteInfoParcel;

    invoke-direct {p0}, Landroid/net/RouteInfoParcel;-><init>()V

    .line 2716
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    .line 2717
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    .line 2718
    iput-object v1, p0, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    .line 2719
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getMtu()I

    move-result p1

    iput p1, p0, Landroid/net/RouteInfoParcel;->mtu:I

    return-object p0
.end method

.method public createNetworkGuardChain()V
    .registers 3

    .line 2220
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2223
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardCreateChain()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "delIpAcceptRule"

    .line 2479
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2482
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2484
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "delSourcePortAcceptRule"

    .line 2559
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2562
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2564
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "delSourceRoute"

    .line 2539
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2542
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2544
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public deleteNetworkGuardChain()V
    .registers 3

    .line 2231
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2234
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteChain()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2236
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteNetworkGuardWhiteListRule()V
    .registers 3

    .line 2264
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2267
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteWhiteListRule()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2269
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public denyProtect(I)V
    .registers 3

    .line 2048
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2051
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 2053
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string v1, "disableEpdg"

    .line 2672
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2675
    :try_start_f
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2677
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .registers 3

    .line 1107
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1109
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 1111
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableMptcp()V
    .registers 3

    const-string v0, "NetworkManagement"

    const-string v1, "disableMptcp"

    .line 2519
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2522
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2524
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1313
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1315
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1317
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableNetworkGuard()V
    .registers 3

    .line 2253
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2256
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->networkGuardDisable()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2258
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1941
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string p3, "NetworkManagement"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1943
    :cond_b
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_e
    const-string p3, "Active quota ifaces: "

    .line 1944
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Active alert ifaces: "

    .line 1945
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Data saver mode: "

    .line 1946
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1947
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_103

    :try_start_37
    const-string v0, "denied UIDs"

    .line 1948
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    const-string v0, "allowed UIDs"

    .line 1949
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 1950
    monitor-exit p3
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_100

    .line 1951
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_103

    .line 1953
    iget-object p3, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_4a
    const-string p1, ""

    .line 1954
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall standby chain enabled: "

    .line 1956
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "standby"

    .line 1958
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall dozable chain enabled: "

    .line 1960
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1961
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "dozable"

    .line 1962
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall powersave chain enabled: "

    .line 1964
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1965
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "powersave"

    .line 1966
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall restricted mode chain enabled: "

    .line 1968
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1969
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "restricted"

    .line 1970
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall low power standby chain enabled: "

    .line 1973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 1974
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "low_power_standby"

    .line 1975
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    const-string p1, "UID firewall oem deny chain enabled: "

    .line 1977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "fw_oem_deny_1"

    .line 1979
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1980
    monitor-exit p3
    :try_end_ce
    .catchall {:try_start_4a .. :try_end_ce} :catchall_fd

    const-string p1, "Firewall enabled: "

    .line 1982
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "Netd service status: "

    .line 1983
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1984
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez p0, :cond_e7

    const-string p0, "disconnected"

    .line 1985
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fc

    .line 1988
    :cond_e7
    :try_start_e7
    invoke-interface {p0}, Landroid/net/INetd;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_f0

    const-string p0, "alive"

    goto :goto_f2

    :cond_f0
    const-string p0, "dead"

    .line 1989
    :goto_f2
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f5} :catch_f6

    goto :goto_fc

    :catch_f6
    const-string/jumbo p0, "unreachable"

    .line 1991
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_fc
    return-void

    :catchall_fd
    move-exception p0

    .line 1980
    :try_start_fe
    monitor-exit p3
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw p0

    :catchall_100
    move-exception p0

    .line 1950
    :try_start_101
    monitor-exit p3
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    :try_start_102
    throw p0

    :catchall_103
    move-exception p0

    .line 1951
    monitor-exit p1
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_103

    throw p0
.end method

.method public final dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .registers 5

    const-string p0, "UID firewall "

    .line 2009
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " rule: ["

    .line 2011
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p0, :cond_33

    .line 2014
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    .line 2015
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, p0, -0x1

    if-ge p2, v0, :cond_30

    const-string v0, ","

    .line 2017
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_33
    const-string p0, "]"

    .line 2019
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .registers 5

    const-string p0, "UID bandwith control "

    .line 1997
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": ["

    .line 1999
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_12
    if-ge p2, p0, :cond_27

    .line 2002
    invoke-virtual {p3, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, p0, -0x1

    if-ge p2, v0, :cond_24

    const-string v0, ","

    .line 2003
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_27
    const-string p0, "]"

    .line 2005
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "NetworkManagement"

    const-string v1, "enableEpdg"

    .line 2661
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2664
    :try_start_f
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2666
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .registers 3

    .line 1087
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1089
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 1091
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public enableKnoxVpnFlagForTether(Z)V
    .registers 5

    .line 904
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    const-string p0, "enableKnoxVpnFlagForTether failed for chained vpn profile"

    .line 908
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

.method public enableMptcp(Ljava/lang/String;)V
    .registers 4

    const-string v0, "NetworkManagement"

    const-string v1, "enableMptcp"

    .line 2509
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2512
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 2514
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1303
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1305
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1307
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public enableNetworkGuard(Z)V
    .registers 4

    .line 2242
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2245
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->networkGuardEnable(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2247
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final enforceSystemUid()V
    .registers 2

    .line 1933
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService$Dependencies;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_b

    return-void

    .line 1935
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only available to AID_SYSTEM"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemUidexceptUserId()V
    .registers 2

    .line 2839
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService$Dependencies;->getCallingUid()I

    move-result p0

    .line 2840
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_f

    return-void

    .line 2841
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only available to AID_SYSTEM"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 1269
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 1271
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1272
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object p0
.end method

.method public final getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .registers 3

    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_7

    .line 354
    monitor-exit p0

    return-object v0

    .line 356
    :cond_7
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    const-string v1, "batterystats"

    .line 357
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$Dependencies;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 358
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 359
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .registers 2

    .line 1260
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1262
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1264
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getFirewallChainName(I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_38

    const/4 p0, 0x3

    if-eq p1, p0, :cond_34

    const/4 p0, 0x4

    if-eq p1, p0, :cond_30

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2c

    const/4 p0, 0x7

    if-ne p1, p0, :cond_15

    const-string p0, "fw_oem_deny_1"

    return-object p0

    .line 1785
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad child chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    const-string/jumbo p0, "low_power_standby"

    return-object p0

    :cond_30
    const-string/jumbo p0, "restricted"

    return-object p0

    :cond_34
    const-string/jumbo p0, "powersave"

    return-object p0

    :cond_38
    const-string/jumbo p0, "standby"

    return-object p0

    :cond_3c
    const-string p0, "dozable"

    return-object p0
.end method

.method public final getFirewallChainState(I)Z
    .registers 3

    .line 2133
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2134
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2135
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getFirewallRuleName(II)Ljava/lang/String;
    .registers 4

    .line 1894
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result p0

    const-string p1, "deny"

    const-string v0, "allow"

    if-nez p0, :cond_e

    const/4 p0, 0x1

    if-ne p2, p0, :cond_13

    goto :goto_12

    :cond_e
    const/4 p0, 0x2

    if-ne p2, p0, :cond_12

    goto :goto_13

    :cond_12
    :goto_12
    move-object p1, v0

    :cond_13
    :goto_13
    return-object p1
.end method

.method public final getFirewallType(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_19

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_19
    return v1

    :cond_1a
    return v0

    :cond_1b
    return v1

    :cond_1c
    return v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .registers 4

    .line 1012
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1015
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_1f
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_11} :catch_1f

    .line 1021
    :try_start_11
    invoke-static {p0}, Lcom/android/server/NetworkManagementService;->fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 1024
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid InterfaceConfigurationParcel"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 1017
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getIpForwardingEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1168
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 1171
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 2

    .line 1606
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getNetworkStatsVideoCall(Ljava/lang/String;II)J
    .registers 11

    .line 2160
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2165
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_48
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_11} :catch_48

    .line 2175
    array-length p2, p0

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_16
    if-ge p3, p2, :cond_46

    aget-object v4, p0, p3

    .line 2177
    :try_start_1a
    iget-object v5, v4, Landroid/net/TetherStatsParcel;->iface:Ljava/lang/String;

    .line 2178
    iget-wide v5, v4, Landroid/net/TetherStatsParcel;->rxBytes:J

    add-long/2addr v0, v5

    .line 2180
    iget-wide v4, v4, Landroid/net/TetherStatsParcel;->txBytes:J
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_25

    add-long/2addr v2, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :catch_25
    move-exception p0

    .line 2184
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "problem parsing video call stats for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_46
    add-long/2addr v0, v2

    return-wide v0

    :catch_48
    move-exception p0

    .line 2167
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "problem parsing videocall stats: "

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getPackageNames(I)[Ljava/lang/String;
    .registers 4

    .line 2869
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 2870
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2871
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_c

    .line 2872
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    .line 2876
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRulesLock"
        }
    .end annotation

    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_37

    const/4 v0, 0x3

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x7

    if-ne p1, v0, :cond_17

    .line 1924
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1928
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown chain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1922
    :cond_2e
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1920
    :cond_31
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1918
    :cond_34
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1914
    :cond_37
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1916
    :cond_3a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object p0

    .line 1926
    :cond_3d
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public final invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 384
    :try_start_9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_14} :catch_1c
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_1c

    :catchall_15
    move-exception p1

    .line 389
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    throw p1

    :catch_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 389
    :cond_1f
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final isAllowBuildFirewall(I)Z
    .registers 10

    .line 2884
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportGmsAlarmManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2887
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowBuildFirewall pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkManagement"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getPackageNames(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4e

    .line 2892
    array-length v2, p0

    move v4, p1

    :goto_33
    if-ge v4, v2, :cond_4e

    aget-object v5, p0, v4

    .line 2893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowBuildFirewall pkgname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_4e
    if-eqz v1, :cond_59

    const-string/jumbo p0, "trafficmanager"

    .line 2896
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5b

    :cond_59
    if-eqz v0, :cond_5d

    :cond_5b
    const/4 p0, 0x1

    return p0

    :cond_5d
    return p1
.end method

.method public isBandwidthControlEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isFirewallEnabled()Z
    .registers 1

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1624
    iget-boolean p0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return p0
.end method

.method public isNetworkRestricted(I)Z
    .registers 5

    .line 2077
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result p0

    return p0
.end method

.method public final isNetworkRestrictedInternal(I)Z
    .registers 6

    .line 2082
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 2083
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2084
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 2085
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_32

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of app standby mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_32
    monitor-exit v0

    return v3

    .line 2088
    :cond_34
    invoke-virtual {p0, v3}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2089
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_63

    .line 2090
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_61

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of device idle mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_61
    monitor-exit v0

    return v3

    :cond_63
    const/4 v2, 0x3

    .line 2093
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2094
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_93

    .line 2095
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_91

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of power saver mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_91
    monitor-exit v0

    return v3

    :cond_93
    const/4 v2, 0x4

    .line 2098
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 2099
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_c3

    .line 2100
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_c1

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of restricted mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_c1
    monitor-exit v0

    return v3

    :cond_c3
    const/4 v2, 0x5

    .line 2103
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 2104
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v3, :cond_f3

    .line 2105
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_f1

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of low power standby"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_f1
    monitor-exit v0

    return v3

    :cond_f3
    const/4 v2, 0x7

    .line 2108
    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-eqz v2, :cond_123

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 2109
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_123

    .line 2110
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_121

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of freecess"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    :cond_121
    monitor-exit v0

    return v3

    .line 2113
    :cond_123
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 2114
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_14a

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of no metered data in the background"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_14a
    monitor-exit v0

    return v3

    .line 2118
    :cond_14c
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_179

    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_179

    .line 2119
    sget-boolean p0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz p0, :cond_177

    const-string p0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " restricted because of data saver mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_177
    monitor-exit v0

    return v3

    :cond_179
    const/4 p0, 0x0

    .line 2122
    monitor-exit v0

    return p0

    :catchall_17c
    move-exception p0

    .line 2123
    monitor-exit v0
    :try_end_17e
    .catchall {:try_start_4 .. :try_end_17e} :catchall_17c

    throw p0
.end method

.method public isTetheringStarted()Z
    .registers 2

    .line 1216
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1219
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 1222
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public listInterfaces()[Ljava/lang/String;
    .registers 8

    .line 782
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 784
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 789
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v4, Lcom/android/server/NetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error listing Interfaces"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 788
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .registers 2

    .line 1250
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1252
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1254
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "modifyEpdg epdg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :try_start_25
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    .line 2655
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_8

    .line 1280
    :try_start_2
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2, p3}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1282
    :cond_8
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2, p3}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception p0

    .line 1285
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final modifyInterfaceInNetwork(ZILjava/lang/String;)V
    .registers 5

    .line 2023
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    if-eqz p1, :cond_d

    .line 2026
    :try_start_7
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2, p3}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    goto :goto_12

    .line 2028
    :cond_d
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p2, p3}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception p0

    .line 2031
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 664
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 657
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceAdded(Ljava/lang/String;)V
    .registers 8

    .line 415
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v0, Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is tethered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 414
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceClassActivity(IZJI)V
    .registers 13

    .line 452
    new-instance v6, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda7;-><init>(IZJI)V

    invoke-virtual {p0, v6}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 6

    .line 671
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 405
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceRemoved(Ljava/lang/String;)V
    .registers 9

    .line 428
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-class v0, Lcom/android/server/NetworkManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is untethered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 432
    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 397
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 444
    new-instance v0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    return-void
.end method

.method public final notifyRouteChange(ZLandroid/net/RouteInfo;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 679
    new-instance p1, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda8;-><init>(Landroid/net/RouteInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_13

    .line 681
    :cond_b
    new-instance p1, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda9;-><init>(Landroid/net/RouteInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    :goto_13
    return-void
.end method

.method public final prepareNativeDaemon()V
    .registers 11

    .line 535
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 537
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    .line 539
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 541
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_62

    .line 543
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_32

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active quota rules"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_32
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 545
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 546
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 547
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_42

    .line 551
    :cond_62
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_b9

    .line 553
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_89

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active alert rules"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_89
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 555
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 556
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 557
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_99

    .line 563
    :cond_b9
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_bc
    .catchall {:try_start_4 .. :try_end_bc} :catchall_216

    .line 564
    :try_start_bc
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_ee

    .line 566
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_e4

    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " UIDs to metered denylist rules"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_e4
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 568
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_ef

    :cond_ee
    move-object v3, v4

    .line 571
    :goto_ef
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-lez v5, :cond_11f

    .line 573
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_116

    const-string v4, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " UIDs to metered allowlist rules"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_116
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 575
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 577
    :cond_11f
    monitor-exit v2
    :try_end_120
    .catchall {:try_start_bc .. :try_end_120} :catchall_213

    const/4 v2, 0x0

    if-eqz v3, :cond_138

    move v5, v2

    .line 579
    :goto_124
    :try_start_124
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_138

    .line 580
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 581
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    .line 580
    invoke-virtual {p0, v6, v7}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkDenylist(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_124

    :cond_138
    if-eqz v4, :cond_14f

    move v3, v2

    .line 585
    :goto_13b
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_14f

    .line 586
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 587
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 586
    invoke-virtual {p0, v5, v6}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkAllowlist(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13b

    .line 591
    :cond_14f
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_194

    .line 593
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_176

    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pushing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active UID cleartext policies"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_176
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 595
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    move v4, v2

    .line 596
    :goto_180
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_194

    .line 597
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_180

    .line 601
    :cond_194
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v3}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    const-string v3, ""

    .line 603
    invoke-virtual {p0, v2, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v3, "standby "

    const/4 v4, 0x2

    .line 604
    invoke-virtual {p0, v4, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string v3, "dozable "

    .line 605
    invoke-virtual {p0, v1, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v3, "powersave "

    const/4 v5, 0x3

    .line 606
    invoke-virtual {p0, v5, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v3, "restricted "

    const/4 v6, 0x4

    .line 607
    invoke-virtual {p0, v6, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string/jumbo v3, "low power standby "

    const/4 v7, 0x5

    .line 608
    invoke-virtual {p0, v7, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const-string v3, "fw_oem deny_1 "

    const/4 v8, 0x7

    .line 609
    invoke-virtual {p0, v8, v3}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    const/4 v3, 0x6

    new-array v9, v3, [I

    aput v4, v9, v2

    aput v1, v9, v1

    aput v5, v9, v4

    aput v6, v9, v5

    aput v7, v9, v6

    aput v8, v9, v7

    :goto_1d4
    if-ge v2, v3, :cond_1e4

    .line 620
    aget v4, v9, v2

    .line 621
    invoke-virtual {p0, v4}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v5

    if-eqz v5, :cond_1e1

    .line 622
    invoke-virtual {p0, v4, v1}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_1e1
    .catchall {:try_start_124 .. :try_end_1e1} :catchall_216

    :cond_1e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d4

    :cond_1e4
    :try_start_1e4
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "makeBlockChildChain"

    .line 628
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v1}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V
    :try_end_1f1
    .catch Landroid/os/RemoteException; {:try_start_1e4 .. :try_end_1f1} :catch_20d
    .catchall {:try_start_1e4 .. :try_end_1f1} :catchall_216

    :try_start_1f1
    const-string v1, "NetworkManagement"

    const-string/jumbo v2, "makeVideoCallChain"

    .line 637
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v1}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V
    :try_end_1fe
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_1fe} :catch_207
    .catchall {:try_start_1f1 .. :try_end_1fe} :catchall_216

    .line 643
    :try_start_1fe
    monitor-exit v0
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_216

    .line 647
    :try_start_1ff
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_206
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_206} :catch_206

    :catch_206
    return-void

    :catch_207
    move-exception p0

    .line 640
    :try_start_208
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_20d
    move-exception p0

    .line 631
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_213
    .catchall {:try_start_208 .. :try_end_213} :catchall_216

    :catchall_213
    move-exception p0

    .line 577
    :try_start_214
    monitor-exit v2
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_213

    :try_start_215
    throw p0

    :catchall_216
    move-exception p0

    .line 643
    monitor-exit v0
    :try_end_218
    .catchall {:try_start_215 .. :try_end_218} :catchall_216

    throw p0
.end method

.method public prioritizeApp(ZI)I
    .registers 5

    .line 2613
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prioritizeApp is called for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    const-string v1, " true"

    goto :goto_1d

    :cond_1b
    const-string v1, "false"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :try_start_29
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    move-result p0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_29 .. :try_end_2f} :catch_30

    return p0

    :catch_30
    move-exception p0

    .line 2618
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1129
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1132
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_3a
    .catchall {:try_start_6 .. :try_end_b} :catchall_33

    .line 1133
    :try_start_b
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1134
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1139
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 1140
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_29} :catch_31
    .catchall {:try_start_b .. :try_end_29} :catchall_2e

    goto :goto_1a

    .line 1147
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3f

    goto :goto_3f

    :catchall_2e
    move-exception p0

    move-object v0, v1

    goto :goto_34

    :catch_31
    move-object v0, v1

    goto :goto_3a

    :catchall_33
    move-exception p0

    :goto_34
    if-eqz v0, :cond_39

    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_39

    .line 1150
    :catch_39
    :cond_39
    throw p0

    :catch_3a
    :goto_3a
    if-eqz v0, :cond_3f

    .line 1147
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public registerNetdTetherEventListener()V
    .registers 4

    .line 914
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    if-nez v0, :cond_1a

    const-string v0, "Initializing NetdTetherEventListener"

    .line 916
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v0, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetherEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    .line 920
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/NetworkManagementService$NetdTetherEventListener;

    invoke-interface {v0, p0}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    const-string/jumbo p0, "registerNetdTetherEventListener failed "

    .line 922
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 365
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .registers 4

    .line 458
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 459
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 461
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0
.end method

.method public removeChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removechain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iptype : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2356
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35
    .catch Landroid/os/ServiceSpecificException; {:try_start_2f .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 2358
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .registers 4

    .line 1411
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1413
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_8
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1416
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_25

    return-void

    .line 1421
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1422
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_12 .. :try_end_1c} :catch_1e
    .catchall {:try_start_12 .. :try_end_1c} :catchall_25

    .line 1426
    :try_start_1c
    monitor-exit v0

    return-void

    :catch_1e
    move-exception p0

    .line 1424
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_25
    move-exception p0

    .line 1426
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_25

    throw p0
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x63

    .line 2066
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .registers 10

    .line 1354
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1357
    :try_start_8
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1359
    monitor-exit v0

    return-void

    .line 1362
    :cond_12
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_75

    .line 1367
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_6e
    .catch Landroid/os/ServiceSpecificException; {:try_start_1c .. :try_end_21} :catch_6e
    .catchall {:try_start_1c .. :try_end_21} :catchall_75

    .line 1372
    :try_start_21
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_75

    .line 1373
    :try_start_24
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_6b

    const-wide/16 v4, -0x1

    .line 1375
    :try_start_3c
    invoke-interface {v3, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_6b

    goto :goto_2e

    :catch_40
    move-exception v4

    :try_start_41
    const-string v5, "NetworkManagement"

    .line 1377
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1378
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1377
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1381
    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_41 .. :try_end_69} :catchall_6b

    .line 1382
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_75

    return-void

    :catchall_6b
    move-exception p0

    .line 1381
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0

    :catch_6e
    move-exception p0

    .line 1369
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_75
    move-exception p0

    .line 1382
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_75

    throw p0
.end method

.method public removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLegacyRoute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2982
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_1a .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 2984
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeMptcpLink(Ljava/lang/String;)V
    .registers 4

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removemptcplink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2334
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_1a .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 2336
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .registers 4

    .line 1123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1124
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    sget-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v0, p1, p2}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 2071
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2072
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksRule"

    .line 2374
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2377
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 2379
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksSkipRule"

    .line 2416
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2419
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2421
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksSkipRule"

    .line 2439
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2442
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 2444
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "removeUidFromChain"

    .line 2459
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2462
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2464
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 16

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "removeSocksRule"

    .line 2396
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2399
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 2401
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public replaceApeRule(Ljava/lang/String;II)I
    .registers 6

    .line 2639
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replaceApeRule is called, interface name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from old bandwidthMbps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to new bandwidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    move-result p0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_30} :catch_31
    .catch Landroid/os/ServiceSpecificException; {:try_start_2a .. :try_end_30} :catch_31

    return p0

    :catch_31
    move-exception p0

    .line 2644
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 882
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_17

    :catch_10
    const-string/jumbo p0, "runKnoxFirewallRulesCommand failed for vpn profile"

    .line 887
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_17
    return-object p0
.end method

.method public runKnoxRulesCommand(I[Ljava/lang/String;)V
    .registers 6

    .line 894
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "runKnoxRulesCommand failed for vpn profile"

    .line 898
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public final sendusbTetheringUpdate()V
    .registers 6

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 810
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 811
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

    const-string/jumbo v4, "tethering_info"

    .line 812
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_INTERNAL"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    throw p0
.end method

.method public setAllowListIPs(Ljava/lang/String;)V
    .registers 4

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setAllowListIPs"

    .line 2783
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2787
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBlockAllDNSPackets(Z)V
    .registers 4

    .line 2760
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockAllDNSPackets"

    .line 2761
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2765
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBlockAllPackets()V
    .registers 3

    .line 2802
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockAllPackets"

    .line 2803
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2807
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBlockListIPs(Ljava/lang/String;)V
    .registers 4

    .line 2771
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setBlockListIPs"

    .line 2772
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2776
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 2813
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBlockPorts, protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " directionBitMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    .line 2814
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :try_start_42
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48
    .catch Landroid/os/ServiceSpecificException; {:try_start_42 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 2819
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setDataSaverModeEnabled(Z)Z
    .registers 8

    .line 1498
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_24
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1502
    :try_start_27
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v1, p1, :cond_47

    const-string p1, "NetworkManagement"

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSaverMode(): already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1504
    monitor-exit v0

    return p0

    :cond_47
    const-string v1, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    .line 1506
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_a4

    .line 1508
    :try_start_4f
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1510
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    goto :goto_76

    :cond_5a
    const-string p0, "NetworkManagement"

    .line 1512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "): netd command silently failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_76} :catch_7d
    .catchall {:try_start_4f .. :try_end_76} :catchall_7b

    .line 1519
    :goto_76
    :try_start_76
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_a4

    return v1

    :catchall_7b
    move-exception p0

    goto :goto_a0

    :catch_7d
    move-exception p0

    :try_start_7e
    const-string v1, "NetworkManagement"

    .line 1516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSaverMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): netd command failed"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_7e .. :try_end_9a} :catchall_7b

    const/4 p0, 0x0

    .line 1519
    :try_start_9b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    return p0

    :goto_a0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1520
    throw p0

    :catchall_a4
    move-exception p0

    .line 1521
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setDestinationBasedMarkRule"

    .line 2590
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2593
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 2595
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    .registers 6

    .line 799
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 803
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setEpdgInterfaceDropRule"

    .line 2683
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    :try_start_f
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 2689
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallChainEnabled(IZ)V
    .registers 7

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1738
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1739
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_51

    .line 1740
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_12

    .line 1743
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_4e

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_51

    return-void

    .line 1745
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 1746
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_4e

    .line 1748
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_37

    .line 1753
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_51

    .line 1755
    :try_start_26
    invoke-virtual {v2, p1, p2}, Landroid/net/ConnectivityManager;->setFirewallChainEnabled(IZ)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_29} :catch_30
    .catchall {:try_start_26 .. :try_end_29} :catchall_51

    if-eqz p2, :cond_2e

    .line 1765
    :try_start_2b
    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    .line 1767
    :cond_2e
    monitor-exit v0

    return-void

    :catch_30
    move-exception p0

    .line 1757
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1750
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad child chain: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_51

    :catchall_4e
    move-exception p0

    .line 1746
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p0

    :catchall_51
    move-exception p0

    .line 1767
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final setFirewallChainState(IZ)V
    .registers 4

    .line 2127
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2128
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2129
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setFirewallEnabled(Z)V
    .registers 4

    .line 1611
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1613
    :try_start_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1615
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 1617
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 4

    .line 1629
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1630
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1632
    :try_start_8
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-eqz p2, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x2

    :goto_f
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 1635
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallRuleMobileData(IZ)V
    .registers 3

    .line 2924
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2927
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 2929
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallRuleWifi(IZ)V
    .registers 3

    .line 2914
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2916
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 2918
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setFirewallUidRule(III)V
    .registers 5

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1848
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1849
    :try_start_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 1850
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setFirewallUidRuleLocked(III)V
    .registers 5

    .line 1854
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1855
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1857
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    move-exception p0

    .line 1859
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setFirewallUidRules(I[I[I)V
    .registers 12

    .line 1810
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1811
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_7f

    .line 1813
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1814
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1816
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    :goto_15
    if-ltz v4, :cond_24

    .line 1817
    aget v5, p2, v4

    .line 1818
    aget v6, p3, v4

    .line 1819
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1820
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 1823
    :cond_24
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1824
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2f
    const/4 v5, 0x0

    if-ltz v4, :cond_42

    .line 1825
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1826
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3f

    .line 1827
    invoke-virtual {p3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3f
    add-int/lit8 v4, v4, -0x1

    goto :goto_2f

    .line 1831
    :cond_42
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_48
    if-ltz v2, :cond_54

    .line 1832
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 1833
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 1835
    :cond_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_7c

    .line 1836
    :try_start_55
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_7f

    .line 1838
    :try_start_5f
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->replaceFirewallChain(I[I)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_7f

    goto :goto_7a

    :catch_63
    move-exception p0

    :try_start_64
    const-string p2, "NetworkManagement"

    .line 1840
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error flushing firewall chain "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_64 .. :try_end_7b} :catchall_7f

    return-void

    :catchall_7c
    move-exception p0

    .line 1835
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw p0

    :catchall_7f
    move-exception p0

    .line 1842
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public setGlobalAlert(J)V
    .registers 4

    .line 1431
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1434
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1436
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1099
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1101
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .registers 6

    .line 1387
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1390
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1394
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_4c

    if-nez v1, :cond_2f

    .line 1401
    :try_start_18
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1402
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_18 .. :try_end_26} :catch_28
    .catchall {:try_start_18 .. :try_end_26} :catchall_4c

    .line 1406
    :try_start_26
    monitor-exit v0

    return-void

    :catch_28
    move-exception p0

    .line 1404
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1396
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "iface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has alert"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4c
    move-exception p0

    .line 1406
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_4c

    throw p0

    .line 1391
    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setting alert requires existing quota on iface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .registers 5

    .line 1032
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1034
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1038
    invoke-static {p2, p1}, Lcom/android/server/NetworkManagementService;->toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    .line 1041
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 1043
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1035
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Null LinkAddress given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 1052
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 4

    .line 1065
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1067
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1069
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 12

    .line 1323
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1325
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_8
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_8d

    if-nez v1, :cond_70

    .line 1332
    :try_start_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1334
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_69
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_1e} :catch_69
    .catchall {:try_start_10 .. :try_end_1e} :catchall_8d

    .line 1339
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_8d

    .line 1340
    :try_start_21
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_66

    .line 1342
    :try_start_37
    invoke-interface {v3, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_66

    goto :goto_2b

    :catch_3b
    move-exception v4

    :try_start_3c
    const-string v5, "NetworkManagement"

    .line 1344
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1345
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1344
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1348
    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3c .. :try_end_64} :catchall_66

    .line 1349
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_8d

    return-void

    :catchall_66
    move-exception p0

    .line 1348
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw p0

    :catch_69
    move-exception p0

    .line 1336
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1327
    :cond_70
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "iface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has quota"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_8d
    move-exception p0

    .line 1349
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_68 .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .registers 3

    .line 1057
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1058
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1060
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .registers 3

    .line 1177
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    const-string/jumbo v0, "tethering"

    if-eqz p1, :cond_10

    .line 1180
    :try_start_a
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, v0}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    goto :goto_15

    .line 1182
    :cond_10
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0, v0}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception p0

    .line 1185
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setKnoxGuardExemptRule(ZLjava/lang/String;I)V
    .registers 7

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setKnoxGuardExemptRule"

    .line 2309
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    :try_start_f
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 2314
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setKnoxVpn(IZ)V
    .registers 6

    .line 938
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "setKnoxVpn failed for vpn profile"

    .line 942
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public setMptcpMtuValue(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setMptcpMtuValues"

    .line 2499
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2502
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2504
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setNetworkGuardProtocolAcceptRule(I)V
    .registers 4

    .line 2297
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2300
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->networkGuardSetProtocolAcceptRule(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2302
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setNetworkGuardUidRangeAcceptRule(II)V
    .registers 5

    .line 2275
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2278
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRangeAcceptRule(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2280
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setNetworkGuardUidRule(IZZ)V
    .registers 6

    .line 2286
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2289
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRule(IZZ)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2291
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setNetworkInfo(IZI)V
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "setNetworkInfo failed for chained vpn profile"

    .line 824
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public setPrivateIpRoute(ZLjava/lang/String;I)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setPrivateIpRoute"

    .line 2579
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2582
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2584
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setQboxUid(IZ)V
    .registers 6

    .line 2958
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception p0

    .line 2962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error setQboxUid > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setTcpBufferSize"

    .line 2489
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2492
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2494
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "setUIDRoute"

    .line 2600
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2603
    :try_start_b
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 2605
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .registers 7

    .line 1550
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mDeps:Lcom/android/server/NetworkManagementService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService$Dependencies;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_d

    .line 1551
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1554
    :cond_d
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_10
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, p2, :cond_1b

    .line 1559
    monitor-exit v0

    return-void

    .line 1563
    :cond_1b
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_26

    .line 1566
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1567
    monitor-exit v0

    return-void

    :cond_26
    if-eqz v1, :cond_2d

    if-eqz p2, :cond_2d

    .line 1576
    invoke-virtual {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1579
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1580
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setUidOnMeteredNetworkAllowlist(IZ)V
    .registers 4

    const/4 v0, 0x1

    .line 1493
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public setUidOnMeteredNetworkDenylist(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 1488
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    return-void
.end method

.method public final setUidOnMeteredNetworkList(IZZ)V
    .registers 10

    .line 1441
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1443
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_8
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_6a

    if-eqz p2, :cond_10

    .line 1447
    :try_start_d
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_12

    :cond_10
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    :goto_12
    const/4 v3, 0x0

    .line 1448
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 1449
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_67

    if-ne v3, p3, :cond_1c

    .line 1452
    :try_start_1a
    monitor-exit v0

    return-void

    :cond_1c
    const-string/jumbo v1, "inetd bandwidth"

    const-wide/32 v3, 0x200000

    .line 1455
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1456
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_6a

    if-eqz p2, :cond_3b

    if-eqz p3, :cond_37

    .line 1460
    :try_start_33
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkAllowList(I)V

    goto :goto_44

    .line 1462
    :cond_37
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkAllowList(I)V

    goto :goto_44

    :cond_3b
    if-eqz p3, :cond_41

    .line 1466
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkDenyList(I)V

    goto :goto_44

    .line 1468
    :cond_41
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkDenyList(I)V

    .line 1471
    :goto_44
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_47} :catch_5c
    .catchall {:try_start_33 .. :try_end_47} :catchall_5a

    if-eqz p3, :cond_4e

    const/4 p2, 0x1

    .line 1473
    :try_start_4a
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_51

    .line 1475
    :cond_4e
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1477
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_57

    .line 1481
    :try_start_52
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1483
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_6a

    return-void

    :catchall_57
    move-exception p1

    .line 1477
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p1
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5a} :catch_5c
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    goto :goto_63

    :catch_5c
    move-exception p0

    .line 1479
    :try_start_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_5a

    .line 1481
    :goto_63
    :try_start_63
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1482
    throw p0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_6a

    :catchall_67
    move-exception p0

    .line 1449
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p0

    :catchall_6a
    move-exception p0

    .line 1483
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V
    .registers 5

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2848
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2850
    :try_start_8
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz p3, :cond_e

    const/4 p3, 0x1

    goto :goto_f

    :cond_e
    const/4 p3, 0x2

    :goto_f
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2852
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    .registers 5

    .line 2858
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2859
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2861
    :try_start_8
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-eqz p3, :cond_e

    const/4 p3, 0x1

    goto :goto_f

    :cond_e
    const/4 p3, 0x2

    :goto_f
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 2863
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public shutdown()V
    .registers 3

    .line 1158
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.SHUTDOWN"

    const-string v1, "NetworkManagement"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Shutting down"

    .line 1160
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public spegRestrictNetworkConnection(IZ)V
    .registers 3

    .line 960
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 962
    :try_start_3
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p0

    const-string p1, "SPEG"

    const-string/jumbo p2, "spegRestrictNetworkConnection Error"

    .line 964
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1291
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1292
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 6

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNetworkStatsOnPorts iface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2198
    :try_start_32
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Landroid/os/ServiceSpecificException; {:try_start_32 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 2200
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startQbox(Ljava/lang/String;)V
    .registers 5

    .line 2937
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception p0

    .line 2942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error startQbox > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 1191
    invoke-virtual {p0, v0, p1}, Lcom/android/server/NetworkManagementService;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    return-void
.end method

.method public startTetheringWithConfiguration(Z[Ljava/lang/String;)V
    .registers 4

    .line 1196
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1198
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p0, p1, p2}, Lcom/android/net/module/util/NetdUtils;->tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1200
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1297
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1298
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .registers 6

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopNetworkStatsOnPorts iface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 2210
    :try_start_32
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Landroid/os/ServiceSpecificException; {:try_start_32 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 2212
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public stopQbox()V
    .registers 4

    .line 2948
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception p0

    .line 2952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error stopQbox > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public stopTethering()V
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1208
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {p0}, Landroid/net/INetd;->tetherStop()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1210
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final syncFirewallChainLocked(ILjava/lang/String;)V
    .registers 7

    .line 488
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 496
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 497
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_56

    .line 498
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_55

    .line 502
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_40

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active firewall "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "UID rules"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 p2, 0x0

    .line 504
    :goto_41
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_55

    .line 505
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_55
    return-void

    :catchall_56
    move-exception p0

    .line 497
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public systemReady()V
    .registers 5

    .line 340
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_2d

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 342
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Prepared in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkManagement"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .registers 5

    .line 1228
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1230
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1231
    new-instance v1, Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 1232
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p0, p1, v1}, Lcom/android/net/module/util/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_20
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 1234
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 476
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 477
    :try_start_8
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 478
    monitor-exit v0

    return-void

    .line 481
    :cond_12
    iget-object p1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public unregisterNetdTetherEventListener()V
    .registers 4

    .line 928
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "unregisterNetdTetherEventListener failed "

    .line 932
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 469
    :try_start_8
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .registers 3

    .line 1240
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1242
    :try_start_5
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 1244
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public updateDefaultGatewayForEpdg(Landroid/net/Network;)V
    .registers 7

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "updateDefaultGatewayForEpdg"

    .line 2726
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    .line 2730
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 2733
    :try_start_1d
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_38

    :catch_22
    move-exception p1

    .line 2735
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getLinkProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_38
    if-nez p1, :cond_41

    const-string/jumbo p0, "linkProperties is empty"

    .line 2738
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2742
    :cond_41
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    .line 2743
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 2744
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 2745
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fe80"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Route ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :try_start_8e
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_97} :catch_98

    goto :goto_49

    :catch_98
    move-exception v2

    .line 2750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in networkUpdateRouteParcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_ae
    return-void
.end method

.method public final updateFirewallUidRuleLocked(III)Z
    .registers 12

    .line 1866
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1869
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1870
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_3f

    const-string v5, "NetworkManagement"

    .line 1871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldRule = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", newRule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " on chain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    if-ne v3, p3, :cond_4c

    if-eqz v4, :cond_4a

    const-string p0, "NetworkManagement"

    const-string p1, "!!!!! Skipping change"

    .line 1875
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_4a
    monitor-exit v0

    return v2

    .line 1880
    :cond_4c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    .line 1881
    invoke-virtual {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_5a

    .line 1884
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5d

    .line 1886
    :cond_5a
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    :goto_5d
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    const/4 v2, 0x1

    :cond_64
    monitor-exit v0

    return v2

    :catchall_66
    move-exception p0

    .line 1889
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p0
.end method

.method public updateInputFilterAppWideRules([III)V
    .registers 7

    .line 862
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "updateInputFilterAppWideRules failed for vpn profile"

    .line 866
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public updateInputFilterExemptRules(II)V
    .registers 6

    .line 842
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "updateInputFilterExemptRules failed for vpn profile"

    .line 846
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public updateInputFilterUserWideRules([III)V
    .registers 7

    .line 852
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :try_start_9
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    const-string/jumbo p0, "updateInputFilterUserWideRules failed for vpn profile"

    .line 856
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "updateSourceRule"

    .line 2569
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2572
    :try_start_b
    iget-object p0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 2574
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
