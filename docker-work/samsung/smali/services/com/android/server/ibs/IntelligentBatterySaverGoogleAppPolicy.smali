.class public Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGoogleAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;,
        Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_GOOGLE_NET_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_google_net_state"

.field public static final DEBUG:Z = true

.field public static final FREEZE_APP:I = 0x2

.field public static final MSG_DISABLE_GOOGLEAPPS_NETWORK:I = 0x1

.field public static final MSG_ENABLE_GOOGLEAPPS_NETWORK:I = 0x2

.field public static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field public static final RESTRICT_NETWORK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "IntelligentBatterySaverGoogleAppPolicy"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mGoogleAppsInfoArray:[[I

.field public final mGoogleAppsList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public final mLockGoogleAppsList:Ljava/lang/Object;

.field public mNetworkLimited:Z

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmNetworkLimited(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGoogleAppsNetworkAllow(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 43
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 45
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 46
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    return-void
.end method


# virtual methods
.method public addPackageNameGoogleAppsList(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7

    const-string v0, "IntelligentBatterySaverGoogleAppPolicy"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageNameGoogleAppsList pkg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_22
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_5e

    .line 75
    :try_start_28
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_36} :catch_37
    .catchall {:try_start_28 .. :try_end_36} :catchall_5e

    goto :goto_5c

    :catch_37
    move-exception p1

    :try_start_38
    const-string p2, "IntelligentBatterySaverGoogleAppPolicy"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_5c
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public clearAllGoogleAppsList()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p2, ""

    .line 174
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "IntelligentBatterySaverGoogleAppPolicy "

    .line 175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 176
    :goto_b
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_5b

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCPM GoogleApps uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCPM GoogleApps stats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_5b
    return-void
.end method

.method public forceApplyUpdatedSCPMPolicy()V
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceApplyUpdatedSCPMPolicy mNetworkLimited = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    :cond_21
    return-void
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 2

    const-string/jumbo v0, "network_management"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 58
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 60
    :cond_f
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public init()V
    .registers 3

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->addPackageNameGoogleAppsList(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    return-void
.end method

.method public setGoogAppNetworkForceReset()V
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGoogAppNetworkForceReset mNetworkLimited = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_23

    const-string p0, "failed to get NetworkManagementService instance"

    .line 95
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 101
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->clearAllGoogleAppsList()V

    return-void
.end method

.method public final setGoogleAppsNetworkAllow(Z)V
    .registers 8

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGoogleAppsNetworkAllowallow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->isGoogleAppPolicyDisabled()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 108
    :cond_20
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_2a

    const-string p0, "failed to get NetworkManagementService instance"

    .line 109
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_8a

    .line 116
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5c

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5c

    .line 119
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 120
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5c} :catch_75
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_5c} :catch_5f

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :catch_5f
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalStateException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :catch_75
    move-exception p0

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    return-void
.end method
