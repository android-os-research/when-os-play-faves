.class public Lcom/android/server/VpnManagerService;
.super Landroid/net/IVpnManager$Stub;
.source "VpnManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VpnManagerService$NetworkCallback;,
        Lcom/android/server/VpnManagerService$Dependencies;
    }
.end annotation


# static fields
.field public static final CHAINING_ENABLED:I = 0x1

.field public static final DBG:Z

.field public static final INT_PER_APP_VPN:I = 0x1

.field public static final INT_SYSTEM_VPN:I = 0x0

.field public static final NETID_UNSET:I = 0x0

.field public static final REMOVE:Z = false

.field public static final STRONSWAN_PROXY_PGK:Ljava/lang/String; = "com.samsung.sVpn"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final knoxVpnLock:Ljava/lang/Object;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

.field public final mDeps:Lcom/android/server/VpnManagerService$Dependencies;

.field public final mEnterpriseVpnStoreObj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/EnterpriseVpn;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mIsKnoxContainerV30:Z

.field public mLockdownEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation
.end field

.field public mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation
.end field

.field public final mNMS:Landroid/os/INetworkManagementService;

.field public final mNetd:Landroid/net/INetd;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mUserAllContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field public final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field public final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->ensureRunningOnHandlerThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/VpnManagerService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/VpnManagerService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->onUserAdded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->onUserRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarted(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStarted(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->onUserUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVpnLockdownReset(Lcom/android/server/VpnManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->onVpnLockdownReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 98
    const-class v0, Lcom/android/server/VpnManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    .line 1099
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VpnManagerService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V
    .registers 6

    .line 156
    invoke-direct {p0}, Landroid/net/IVpnManager$Stub;-><init>()V

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 773
    new-instance v0, Lcom/android/server/VpnManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$1;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 813
    new-instance v0, Lcom/android/server/VpnManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VpnManagerService$2;-><init>(Lcom/android/server/VpnManagerService;)V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 1091
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 1093
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1098
    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    .line 1100
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VpnManagerService;->mIsKnoxContainerV30:Z

    .line 1816
    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 157
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 159
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->makeHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getVpnProfileStore()Lcom/android/server/connectivity/VpnProfileStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 163
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    .line 164
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 165
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getINetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 166
    invoke-virtual {p2}, Lcom/android/server/VpnManagerService$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 167
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->registerReceivers()V

    const-string p0, "VpnManagerService starting up"

    .line 169
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;
    .registers 3

    .line 174
    new-instance v0, Lcom/android/server/VpnManagerService;

    new-instance v1, Lcom/android/server/VpnManagerService$Dependencies;

    invoke-direct {v1}, Lcom/android/server/VpnManagerService$Dependencies;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/VpnManagerService;-><init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V

    return-object v0
.end method

.method public static getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 1

    const-string/jumbo v0, "knox_vpn_policy"

    .line 1108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 1079
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2

    .line 1087
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .registers 2

    .line 1083
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 300
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 301
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1e
    move-exception p0

    .line 302
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public applyBlockingRulesToUidRange(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 7

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1320
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_26

    .line 1321
    iget-object p4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p4

    .line 1322
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_21

    .line 1324
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->applyBlockingRulesToUidRange(Z)V

    .line 1326
    :cond_21
    monitor-exit p4

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p4
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    const/4 p4, 0x0

    .line 1330
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 1332
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p4, p0

    check-cast p4, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_41
    if-eqz p4, :cond_46

    .line 1335
    invoke-virtual {p4, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->applyBlockingRulesToUidRange(Z)V

    .line 1337
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final checkIfKnoxVpnProfileExists(Ljava/lang/String;I)Z
    .registers 3

    .line 1868
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_12

    .line 1869
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public checkIfLocalProxyPortExists(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public checkIfUidIsExempted(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final checkKnoxVpnProfileType(Ljava/lang/String;II)I
    .registers 7

    const/4 v0, 0x0

    .line 1924
    :try_start_1
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result p2

    .line 1925
    sget-object p3, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKnoxVpnProfileType: profileCreatedByKnoxAdmin value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    if-eqz p2, :cond_25

    .line 1931
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v0

    :catch_25
    :cond_25
    return v0
.end method

.method public createEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15

    .line 1578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1584
    :cond_12
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_15
    invoke-virtual {p0, p2, p3}, Lcom/android/server/VpnManagerService;->checkIfKnoxVpnProfileExists(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1586
    new-instance v1, Lcom/android/server/connectivity/EnterpriseVpn;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    move-object v2, v1

    move v7, p3

    move-object v8, p1

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILjava/lang/String;I)V

    .line 1587
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_3f

    .line 1589
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1591
    :cond_3f
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    .line 1594
    :cond_48
    sget-object p0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createEnterpriseVpnInstance failed for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_15 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public deleteVpnProfile(Ljava/lang/String;)V
    .registers 4

    .line 356
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 358
    :try_start_d
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->deleteVpnProfile(Ljava/lang/String;)V

    .line 359
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public disconnectKnoxVpn(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 188
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 189
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "VPNs:"

    .line 190
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 192
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p2

    const/4 p3, 0x0

    .line 193
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_52

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    .line 196
    :cond_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 197
    monitor-exit p2

    return-void

    :catchall_57
    move-exception p0

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_1e .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final enforceControlAlwaysOnVpnPermission()V
    .registers 3

    .line 1051
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v1, "VpnManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceCrossUserPermission(I)V
    .registers 3

    .line 1063
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 1067
    :cond_7
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v0, "VpnManagerService"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSettingsPermission()V
    .registers 3

    .line 1073
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public final ensureRunningOnHandlerThread()V
    .registers 3

    .line 1043
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_11

    return-void

    .line 1044
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not running on VpnManagerService thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;I)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 1888
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setInitialTimeToTunnelEstablishment(Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    .line 1893
    :catch_d
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "establishEnterpriseVpn : user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "net.vpn.framework"

    .line 1895
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "establishEnterpriseVpn: getProperty value is \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1899
    :try_start_52
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_95

    .line 1900
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 1906
    iget-boolean p0, p0, Lcom/android/server/VpnManagerService;->mIsKnoxContainerV30:Z

    if-eqz p0, :cond_7f

    if-eqz p2, :cond_7f

    const-string p0, "2.0"

    .line 1908
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 1909
    iput-object v4, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 1910
    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1914
    :cond_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_52 .. :try_end_80} :catchall_ab

    .line 1915
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "establishEnterpriseVpn: knoxVpnFd value is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1902
    :cond_95
    :try_start_95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to find enterpriseVpn object in hashmap : user = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    monitor-exit v2

    return-object v4

    :catchall_ab
    move-exception p0

    .line 1914
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 286
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 287
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1e
    move-exception p0

    .line 288
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public factoryReset()V
    .registers 10

    .line 997
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 999
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_config_vpn"

    .line 1000
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_70

    .line 1005
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1007
    :try_start_21
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_30

    .line 1009
    invoke-virtual {p0, v0, v5, v4, v5}, Lcom/android/server/VpnManagerService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 1010
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 1014
    :cond_30
    iget-boolean v2, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-eqz v2, :cond_4f

    if-nez v0, :cond_4f

    .line 1015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_6d

    .line 1017
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v8, "LOCKDOWN_VPN"

    invoke-virtual {v2, v8}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 1018
    iput-boolean v4, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 1019
    invoke-virtual {p0, v5}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4a

    .line 1021
    :try_start_46
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4f

    :catchall_4a
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw p0

    .line 1026
    :cond_4f
    :goto_4f
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 1028
    iget-boolean v4, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v4, :cond_61

    const-string v2, "[Legacy VPN]"

    const-string v3, "[Legacy VPN]"

    .line 1029
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_6b

    .line 1033
    :cond_61
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    const-string v2, "[Legacy VPN]"

    .line 1036
    invoke-virtual {p0, v5, v2, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1039
    :cond_6b
    :goto_6b
    monitor-exit v1

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_46 .. :try_end_6f} :catchall_6d

    throw p0

    :cond_70
    :goto_70
    return-void
.end method

.method public getActiveDefaultInterface()Ljava/lang/String;
    .registers 2

    .line 1810
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$NetworkCallback;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1811
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService$NetworkCallback;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveDefaultNetwork()Landroid/net/Network;
    .registers 1

    .line 1798
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    if-eqz p0, :cond_9

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService$NetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .registers 4

    .line 672
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 675
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 676
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_2f

    .line 678
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 679
    monitor-exit v0

    return-object p0

    .line 681
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    .line 682
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getAppExclusionList(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 981
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 984
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 985
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_19

    .line 987
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 989
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 990
    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    .line 992
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final getAppUid(Ljava/lang/String;I)I
    .registers 5

    .line 364
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    :try_start_a
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_e} :catch_17
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    throw p0

    :catch_17
    const/4 p0, -0x1

    .line 371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public getChainingEnabledForProfile(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 1215
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1217
    :try_start_4
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 1218
    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_63

    aget-object v4, v1, v3

    .line 1219
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1220
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 1221
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    .line 1222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    .line 1223
    sget-boolean v1, Lcom/android/server/VpnManagerService;->DBG:Z

    if-eqz v1, :cond_58

    sget-object v1, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The knox vpn dns server being added for usb tethering use-case is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_58
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5f} :catch_63

    goto :goto_2e

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1232
    :catch_63
    :cond_63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1844
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    :try_start_5
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_d

    :catch_d
    return-object p0
.end method

.method public getLegacyKnoxVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 487
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 488
    :try_start_6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 489
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public getNetIdforActiveDefaultInterface()I
    .registers 1

    .line 1786
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    if-eqz p0, :cond_d

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService$NetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final getPackageNameFromUid(I)Ljava/lang/String;
    .registers 2

    .line 1877
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p1, 0x0

    .line 1879
    aget-object p0, p0, p1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 1

    .line 1951
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public final getPersonaUserIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public final getProfilesByDomain(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1854
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1857
    :try_start_9
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_1b
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 1861
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_19
    move-exception p0

    goto :goto_38

    :catch_1b
    move-exception p1

    .line 1859
    :try_start_1c
    sget-object v2, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_19

    goto :goto_15

    :goto_37
    return-object p0

    .line 1861
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1862
    throw p0
.end method

.method public getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .registers 4

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 432
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 433
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 435
    :try_start_e
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1c
    move-exception p0

    .line 436
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getProxyInfoForUid(I)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 3

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 504
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 505
    :try_start_6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_15

    .line 507
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 511
    :goto_16
    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;

    move-result-object p0

    return-object p0
.end method

.method public final getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 723
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 725
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return-object v0

    .line 729
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 730
    invoke-virtual {v1}, Landroid/net/UnderlyingNetworkInfo;->getOwnerUid()I

    move-result v1

    if-eq v1, p1, :cond_1d

    :cond_1c
    move-object p0, v0

    :cond_1d
    return-object p0
.end method

.method public getVpnLockdownAllowlist(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 705
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 706
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_2f

    .line 708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 709
    monitor-exit v0

    return-object p0

    .line 711
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdownAllowlist()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    .line 712
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final hasInterfaceAsUser(I)Z
    .registers 10

    .line 1820
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->getProfilesByDomain(I)Ljava/util/List;

    move-result-object p1

    .line 1822
    sget-boolean v0, Lcom/android/server/VpnManagerService;->DBG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasInterfaceAsUser > profiles.size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    move v1, v0

    .line 1823
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    move v2, v0

    .line 1824
    :goto_2c
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a0

    .line 1825
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1826
    sget-boolean v4, Lcom/android/server/VpnManagerService;->DBG:Z

    if-eqz v4, :cond_63

    sget-object v5, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasInterfaceAsUser > vpn key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", profileName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_63
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9d

    .line 1828
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    if-eqz v3, :cond_9d

    .line 1830
    invoke-virtual {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1831
    invoke-virtual {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9d

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v3, :cond_9d

    if-eqz v4, :cond_9b

    .line 1832
    sget-object p0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "hasInterfaceAsUser : return true"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    const/4 p0, 0x1

    return p0

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_a3
    return v0
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .registers 4

    .line 629
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 632
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 633
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_2f

    .line 635
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 636
    monitor-exit v0

    return p0

    .line 638
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_35
    move-exception p0

    .line 639
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .registers 2

    .line 869
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 870
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 871
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 872
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .registers 2

    .line 877
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 878
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 879
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 880
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final isLockdownVpnEnabled()Z
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v0, "LOCKDOWN_VPN"

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isProxyConfiguredForKnoxVpn(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isVpnLockdownEnabled(I)Z
    .registers 4

    .line 687
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 688
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 690
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 691
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_2f

    .line 693
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 694
    monitor-exit v0

    return p0

    .line 696
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_35
    move-exception p0

    .line 697
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public knoxVpnProfileType(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 6

    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    if-gez p2, :cond_9

    goto :goto_4e

    .line 930
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 931
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 932
    :try_start_10
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_1c

    .line 934
    monitor-exit v0

    return-void

    .line 937
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    if-nez p3, :cond_49

    .line 938
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing always-on VPN package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 940
    invoke-virtual {p0, p2, p1, p2}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 942
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_4b

    throw p0

    .line 926
    :cond_4e
    :goto_4e
    sget-object p0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package in onPackageRemoved: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPackageReplaced(Ljava/lang/String;I)V
    .registers 6

    .line 905
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    if-gez p2, :cond_9

    goto :goto_4a

    .line 909
    :cond_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 910
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 911
    :try_start_10
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_1c

    .line 913
    monitor-exit v0

    return-void

    .line 916
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting always-on VPN package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/VpnManagerService;->log(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 921
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_47

    throw p0

    .line 906
    :cond_4a
    :goto_4a
    sget-object p0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package in onPackageReplaced: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUserAdded(I)V
    .registers 6

    .line 885
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 886
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 888
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 889
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 891
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 6

    .line 895
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 896
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 898
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 899
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 901
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final onUserStarted(I)V
    .registers 11

    .line 827
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-eqz v1, :cond_14

    const-string p0, "Starting user already has a VPN"

    .line 830
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 831
    monitor-exit v0

    return-void

    .line 833
    :cond_14
    new-instance v8, Lcom/android/server/connectivity/Vpn;

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    new-instance v7, Lcom/android/server/connectivity/VpnProfileStore;

    invoke-direct {v7}, Lcom/android/server/connectivity/VpnProfileStore;-><init>()V

    move-object v1, v8

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILcom/android/server/connectivity/VpnProfileStore;)V

    .line 835
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 837
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 839
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final onUserStopped(I)V
    .registers 4

    .line 856
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_14

    const-string p0, "Stopped user has no VPN"

    .line 859
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 860
    monitor-exit v0

    return-void

    .line 862
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 863
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 864
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final onUserUnlocked(I)V
    .registers 4

    .line 946
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 949
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    goto :goto_1c

    .line 951
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    .line 953
    :goto_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final onVpnLockdownReset()V
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 958
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->reset()V

    .line 959
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 217
    invoke-virtual {p0, p3}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 219
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 220
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 221
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_1a

    const/4 p3, 0x1

    .line 223
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1a
    const/4 p0, 0x0

    .line 225
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 227
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 340
    :try_start_d
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/connectivity/Vpn;->provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1b
    move-exception p0

    .line 341
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final registerReceivers()V
    .registers 12

    .line 737
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_STARTED"

    .line 738
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 740
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 741
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 742
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 749
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 756
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 757
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 758
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 759
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 767
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.server.action.LOCKDOWN_RESET"

    .line 768
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mUserAllContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    const-string v8, "android.permission.NETWORK_STACK"

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public registerSystemDefaultNetworkCallback()V
    .registers 8

    .line 1750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1751
    new-instance v2, Lcom/android/server/VpnManagerService$NetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VpnManagerService$NetworkCallback;-><init>(Lcom/android/server/VpnManagerService;Lcom/android/server/VpnManagerService$NetworkCallback-IA;)V

    iput-object v2, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 1753
    :try_start_c
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v5}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_13} :catch_19
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 1758
    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_17
    move-exception p0

    goto :goto_38

    :catch_19
    move-exception v2

    .line 1755
    :try_start_1a
    sget-object v4, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register system default network callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iput-object v3, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_17

    goto :goto_13

    :goto_37
    return-void

    .line 1758
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1759
    throw p0
.end method

.method public removeEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 1609
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p1

    .line 1610
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_21

    .line 1612
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupObjects()V

    .line 1614
    :cond_21
    monitor-exit p1

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p0

    .line 1617
    :cond_26
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1618
    :try_start_29
    invoke-virtual {p0, p2, p3}, Lcom/android/server/VpnManagerService;->checkIfKnoxVpnProfileExists(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1620
    sget-object v0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEnterpriseVpnInstance: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1623
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/EnterpriseVpn;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Ljava/lang/String;Z)V

    .line 1624
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupObjects()V

    .line 1625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1627
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_88
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_9e

    .line 1630
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 1631
    :cond_9e
    sget-object p2, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeEnterpriseVpnInstance all profiles in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->delete(I)V

    .line 1634
    :cond_bf
    monitor-exit p1

    return-void

    :catchall_c1
    move-exception p0

    monitor-exit p1
    :try_end_c3
    .catchall {:try_start_29 .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 309
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 310
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1e
    move-exception p0

    .line 311
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public resetUidListInNetworkCapabilities(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1262
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_26

    .line 1263
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p3

    .line 1264
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_21

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetUidListInNetworkCapabilities()V

    .line 1268
    :cond_21
    monitor-exit p3

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p3
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    const/4 p3, 0x0

    .line 1272
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 1274
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_41
    if-eqz p3, :cond_46

    .line 1277
    invoke-virtual {p3}, Lcom/android/server/connectivity/EnterpriseVpn;->resetUidListInNetworkCapabilities()V

    .line 1279
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceControlAlwaysOnVpnPermission()V

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 648
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 650
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 651
    monitor-exit v0

    return v2

    .line 654
    :cond_12
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    if-nez v1, :cond_37

    .line 656
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 657
    monitor-exit v0

    return v2

    .line 659
    :cond_37
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 660
    monitor-exit v0

    return v2

    .line 662
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 p0, 0x0

    .line 663
    invoke-virtual {v1, p0, v2, p0}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;)Z

    .line 664
    monitor-exit v0

    return v2

    .line 666
    :cond_4b
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 964
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 965
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 967
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 968
    :try_start_9
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_19

    .line 970
    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/Vpn;->setAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 972
    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has no Vpn configuration"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 973
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VPN for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not ready yet. Skipping setting the list"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4e
    move-exception p0

    .line 976
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v1, 0x0

    .line 581
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v0, :cond_a

    .line 583
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    :cond_a
    if-eqz p1, :cond_11

    .line 587
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 588
    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    :cond_11
    return-void
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 319
    :try_start_d
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result p0

    .line 320
    monitor-exit v1

    return p0

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;II)V
    .registers 5

    .line 246
    invoke-virtual {p0, p2}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 248
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 249
    :try_start_6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_13

    .line 251
    invoke-virtual {p0, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    .line 253
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final startAlwaysOnVpn(I)Z
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 615
    :try_start_3
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-nez p0, :cond_2b

    .line 619
    sget-object p0, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no Vpn configuration"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 620
    monitor-exit v0

    return p0

    .line 623
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_31
    move-exception p0

    .line 624
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public startLegacyKnoxVpn(ILcom/android/internal/net/KnoxVpnProfile;)V
    .registers 3

    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 5

    .line 450
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_17

    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 451
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 452
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Legacy VPN is deprecated"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 458
    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/VpnManagerService;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 459
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    invoke-virtual {v1}, Lcom/android/server/VpnManagerService$NetworkCallback;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    goto :goto_3b

    .line 465
    :cond_31
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    :goto_3b
    if-eqz v1, :cond_54

    .line 472
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 473
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 474
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 475
    monitor-exit v2

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_40 .. :try_end_53} :catchall_51

    throw p0

    .line 470
    :cond_54
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing active network connection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 395
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 396
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 398
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 399
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1f
    move-exception p0

    .line 400
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public stopLegacyKnoxVpn(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public stopVpnProfile(Ljava/lang/String;)V
    .registers 4

    .line 413
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 414
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(Ljava/lang/String;I)V

    .line 415
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 417
    :try_start_e
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->stopVpnProfile(Ljava/lang/String;)V

    .line 418
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public systemReady()V
    .registers 1

    .line 181
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    return-void
.end method

.method public final throwIfLockdownEnabled()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVpns"
        }
    .end annotation

    .line 601
    iget-boolean p0, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    if-nez p0, :cond_5

    return-void

    .line 602
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unavailable in lockdown mode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSystemDefaultNetworkCallback()V
    .registers 6

    .line 1768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1770
    :try_start_4
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    if-eqz v2, :cond_d

    .line 1771
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_d
    const/4 v2, 0x0

    .line 1772
    iput-object v2, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1776
    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_32

    :catchall_14
    move-exception p0

    goto :goto_33

    :catch_16
    move-exception p0

    .line 1774
    :try_start_17
    sget-object v2, Lcom/android/server/VpnManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unregister system default network callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_14

    goto :goto_10

    :goto_32
    return-void

    .line 1776
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1777
    throw p0
.end method

.method public updateEnterpriseVpn(Ljava/lang/String;IZ)V
    .registers 4

    return-void
.end method

.method public updateLocalProxyInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/ProxyInfo;)V
    .registers 7

    .line 1288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1291
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_26

    .line 1292
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p3

    .line 1293
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_21

    .line 1295
    invoke-virtual {p0, p4}, Lcom/android/server/connectivity/Vpn;->updateLocalProxyInfo(Landroid/net/ProxyInfo;)V

    .line 1297
    :cond_21
    monitor-exit p3

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p3
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    const/4 p3, 0x0

    .line 1301
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 1303
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_41
    if-eqz p3, :cond_46

    .line 1306
    invoke-virtual {p3, p4}, Lcom/android/server/connectivity/EnterpriseVpn;->updateLocalProxyInfo(Landroid/net/ProxyInfo;)V

    .line 1308
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public updateLockdownVpn()Z
    .registers 9

    .line 531
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    .line 532
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v0, v2, :cond_1b

    const-string p0, "Lockdown VPN only available to system process or AID_SYSTEM"

    .line 533
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    return v1

    .line 537
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 539
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2d

    .line 541
    invoke-virtual {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 542
    monitor-exit v0

    return v4

    .line 545
    :cond_2d
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3e

    const-string p0, "Lockdown VPN configured but cannot be read from keystore"

    .line 547
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 548
    monitor-exit v0

    return v1

    .line 550
    :cond_3e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 551
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 552
    invoke-virtual {v2, v6}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 551
    invoke-static {v5, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    if-nez v2, :cond_79

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockdown VPN configured invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VpnManagerService;->loge(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, v3}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 556
    monitor-exit v0

    return v4

    .line 558
    :cond_79
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    invoke-virtual {v3}, Lcom/android/server/VpnManagerService$Dependencies;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 559
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Vpn;

    if-nez v5, :cond_a8

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN for user "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not ready yet. Skipping lockdown"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 562
    monitor-exit v0

    return v1

    .line 564
    :cond_a8
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual {p0, v1}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 566
    monitor-exit v0

    return v4

    :catchall_b6
    move-exception p0

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_1e .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public updateUidRangesToPerAppVpn(Ljava/lang/String;IZ[ILjava/lang/String;)V
    .registers 9

    .line 1643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1646
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_3b

    .line 1647
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p5

    .line 1648
    :try_start_15
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_36

    .line 1651
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1652
    array-length p2, p4

    :goto_25
    if-ge v0, p2, :cond_33

    aget v1, p4, v0

    .line 1653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1655
    :cond_33
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToPerAppVpn(ZLjava/util/Set;)V

    .line 1657
    :cond_36
    monitor-exit p5

    return-void

    :catchall_38
    move-exception p0

    monitor-exit p5
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw p0

    .line 1660
    :cond_3b
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter p5

    const/4 v1, 0x0

    .line 1662
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1663
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_56
    if-eqz v1, :cond_6f

    .line 1667
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1668
    array-length p1, p4

    :goto_5e
    if-ge v0, p1, :cond_6c

    aget p2, p4, v0

    .line 1669
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 1671
    :cond_6c
    invoke-virtual {v1, p3, p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToPerAppVpn(ZLjava/util/Set;)V

    .line 1673
    :cond_6f
    monitor-exit p5

    return-void

    :catchall_71
    move-exception p0

    monitor-exit p5
    :try_end_73
    .catchall {:try_start_3f .. :try_end_73} :catchall_71

    throw p0
.end method

.method public updateUidRangesToUserVpn(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 8

    .line 1682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1685
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_26

    .line 1686
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p5

    .line 1687
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_21

    .line 1689
    invoke-virtual {p0, p3, p4}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToUserVpn(ZI)V

    .line 1691
    :cond_21
    monitor-exit p5

    return-void

    :catchall_23
    move-exception p0

    monitor-exit p5
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw p0

    .line 1694
    :cond_26
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter p5

    const/4 v0, 0x0

    .line 1696
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 1697
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_41
    if-eqz v0, :cond_46

    .line 1700
    invoke-virtual {v0, p3, p4}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToUserVpn(ZI)V

    .line 1702
    :cond_46
    monitor-exit p5

    return-void

    :catchall_48
    move-exception p0

    monitor-exit p5
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public updateUidRangesToUserVpnWithBlackList(Ljava/lang/String;II[ILjava/lang/String;)V
    .registers 9

    .line 1711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "com.samsung.sVpn"

    .line 1714
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_3b

    .line 1715
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    monitor-enter p5

    .line 1716
    :try_start_15
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/Vpn;

    if-eqz p0, :cond_36

    .line 1719
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1720
    array-length p2, p4

    :goto_25
    if-ge v0, p2, :cond_33

    aget v1, p4, v0

    .line 1721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1723
    :cond_33
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V

    .line 1725
    :cond_36
    monitor-exit p5

    return-void

    :catchall_38
    move-exception p0

    monitor-exit p5
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw p0

    .line 1728
    :cond_3b
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    monitor-enter p5

    const/4 v1, 0x0

    .line 1730
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1731
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    :cond_56
    if-eqz v1, :cond_6f

    .line 1735
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1736
    array-length p1, p4

    :goto_5e
    if-ge v0, p1, :cond_6c

    aget p2, p4, v0

    .line 1737
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 1739
    :cond_6c
    invoke-virtual {v1, p3, p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V

    .line 1741
    :cond_6f
    monitor-exit p5

    return-void

    :catchall_71
    move-exception p0

    monitor-exit p5
    :try_end_73
    .catchall {:try_start_3f .. :try_end_73} :catchall_71

    throw p0
.end method

.method public final verifyCallingUidAndPackage(Ljava/lang/String;I)V
    .registers 4

    .line 376
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 377
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VpnManagerService;->getAppUid(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p2, :cond_b

    return-void

    .line 378
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
