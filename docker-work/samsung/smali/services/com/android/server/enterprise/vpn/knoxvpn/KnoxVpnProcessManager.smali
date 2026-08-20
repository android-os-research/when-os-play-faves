.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.super Ljava/lang/Object;
.source "KnoxVpnProcessManager.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "KnoxVpnProcessManager"

.field public static volatile instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

.field public static mActivityManagerNative:Landroid/app/IActivityManager;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mObserverStatus:Z

.field public mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field public mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static bridge synthetic -$$Nest$monApplicationStart(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStart(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monApplicationStop(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStop(II)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 38
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mObserverStatus:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 34
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 40
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mObserverStatus:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 34
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 40
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 66
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 69
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 70
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    monitor-enter v0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    .line 75
    monitor-exit v0

    return-object p0

    .line 77
    :cond_8
    :try_start_8
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    if-nez v1, :cond_13

    .line 78
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 80
    :cond_13
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getNativeActivityManagerService()Landroid/app/IActivityManager;
    .registers 1

    .line 88
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-nez p0, :cond_a

    .line 89
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 91
    :cond_a
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    return-object p0
.end method

.method public final getProcessObserver()Landroid/app/IProcessObserver$Stub;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    return-object p0
.end method

.method public isProcessObserverRegistered()Z
    .registers 1

    .line 121
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mObserverStatus:Z

    return p0
.end method

.method public final declared-synchronized onApplicationStart(II)V
    .registers 13

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz p1, :cond_c2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    if-nez v0, :cond_f

    goto/16 :goto_c2

    .line 130
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidFromCache(I)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_c4

    if-nez p1, :cond_17

    .line 131
    monitor-exit p0

    return-void

    .line 133
    :cond_17
    :try_start_17
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_c4

    if-nez v1, :cond_25

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_c4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2e

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_c4

    if-nez v2, :cond_36

    .line 146
    monitor-exit p0

    return-void

    .line 149
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_c4

    if-nez v2, :cond_40

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_40
    :try_start_40
    invoke-interface {v2, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_62

    const/4 v4, 0x5

    if-eq v2, v4, :cond_62

    const-string p1, "KnoxVpnProcessManager"

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "on-demand profile is not going to be restarted due to current state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_60} :catch_c0
    .catchall {:try_start_40 .. :try_end_60} :catchall_c4

    .line 157
    monitor-exit p0

    return-void

    .line 163
    :cond_62
    :try_start_62
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 164
    array-length v4, v2

    const/4 v5, 0x0

    :goto_6e
    if-ge v5, v4, :cond_be

    aget-object v6, v2, v5

    .line 165
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    move-result-object v7

    if-nez v7, :cond_7f

    goto :goto_bb

    .line 169
    :cond_7f
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v7, :cond_aa

    const-string v7, "KnoxVpnProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onApplicationStart : profileName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/uid: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_aa
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v7, p1, v6, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPerApplication(Ljava/lang/String;Ljava/util/List;Z)I
    :try_end_bb
    .catchall {:try_start_62 .. :try_end_bb} :catchall_c4

    :goto_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 174
    :cond_be
    monitor-exit p0

    return-void

    .line 160
    :catch_c0
    monitor-exit p0

    return-void

    .line 127
    :cond_c2
    :goto_c2
    monitor-exit p0

    return-void

    :catchall_c4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onApplicationStop(II)V
    .registers 12

    monitor-enter p0

    .line 178
    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz p1, :cond_124

    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz p1, :cond_124

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    if-nez v0, :cond_f

    goto/16 :goto_124

    .line 182
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidFromCache(I)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_126

    if-nez p1, :cond_17

    .line 183
    monitor-exit p0

    return-void

    .line 185
    :cond_17
    :try_start_17
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 187
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p2
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_126

    if-nez p2, :cond_24

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_24
    :try_start_24
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_126

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    .line 193
    monitor-exit p0

    return-void

    .line 196
    :cond_2d
    :try_start_2d
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_126

    if-nez v0, :cond_35

    .line 197
    monitor-exit p0

    return-void

    .line 201
    :cond_35
    :try_start_35
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v0

    const-string v2, "KnoxVpnProcessManager"

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onApplicationStop : isExistRunningApps : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_126

    if-nez v0, :cond_122

    .line 205
    :try_start_52
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    move-result-object v0

    if-nez v0, :cond_68

    .line 207
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v0, :cond_66

    const-string v0, "KnoxVpnProcessManager"

    const-string/jumbo v1, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_66} :catch_e5
    .catchall {:try_start_52 .. :try_end_66} :catchall_126

    .line 208
    :cond_66
    monitor-exit p0

    return-void

    .line 210
    :cond_68
    :try_start_68
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v2

    .line 211
    sget-boolean v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v3, :cond_86

    const-string v3, "KnoxVpnProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The current state of the vpn profile before calling stop connection for application on on-demand mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    if-eq v2, v1, :cond_96

    const/4 v1, 0x2

    if-eq v2, v1, :cond_96

    const/4 v1, 0x3

    if-eq v2, v1, :cond_96

    const/4 v1, 0x4

    if-eq v2, v1, :cond_9b

    const/4 v1, 0x5

    if-eq v2, v1, :cond_96

    goto/16 :goto_122

    .line 217
    :cond_96
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateBlockingRules(Ljava/lang/String;)V

    .line 219
    :cond_9b
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c3

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "KnoxVpnProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred trying to stop vpn connection from profile "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    .line 221
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_122

    :cond_c3
    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 227
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "KnoxVpnProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection with vpn vendor service stopped for profile "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    .line 226
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_e4} :catch_e5
    .catchall {:try_start_68 .. :try_end_e4} :catchall_126

    goto :goto_122

    :catch_e5
    move-exception v0

    :try_start_e6
    const-string v1, "KnoxVpnProcessManager"

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopping vpn connection : Failure at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 238
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "KnoxVpnProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception stopping connection for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v8

    .line 237
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_122
    .catchall {:try_start_e6 .. :try_end_122} :catchall_126

    .line 243
    :cond_122
    :goto_122
    monitor-exit p0

    return-void

    .line 179
    :cond_124
    :goto_124
    monitor-exit p0

    return-void

    :catchall_126
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z
    .registers 11

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 250
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 251
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 252
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 253
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_a7
    .catchall {:try_start_5 .. :try_end_1d} :catchall_a2

    const-string v5, "KnoxVpnProcessManager"

    if-eqz p0, :cond_5b

    move v6, v2

    .line 256
    :goto_22
    :try_start_22
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5b

    .line 257
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v7, :cond_49

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "runningApplicationProcess uid being added is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_49
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 262
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_63
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runningApplicationProcess VpnPackageInfo uid being added is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 267
    :cond_94
    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 269
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_9b} :catch_a7
    .catchall {:try_start_22 .. :try_end_9b} :catchall_a2

    if-lez p0, :cond_a7

    .line 275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_a2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw p0

    .line 275
    :catch_a7
    :cond_a7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public registerProcessObserver()V
    .registers 6

    const-string v0, "KnoxVpnProcessManager"

    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_6
    const-string/jumbo v3, "registerProcessObserver"

    .line 97
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getNativeActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getProcessObserver()Landroid/app/IProcessObserver$Stub;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v3, 0x1

    .line 99
    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mObserverStatus:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_20
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1e

    .line 103
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36

    :catchall_1e
    move-exception p0

    goto :goto_37

    :catch_20
    move-exception p0

    .line 101
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured while trying to register a process observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_1e

    goto :goto_1a

    :goto_36
    return-void

    .line 103
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0
.end method

.method public unregisterProcessObserver()V
    .registers 6

    const-string v0, "KnoxVpnProcessManager"

    .line 108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_6
    const-string/jumbo v3, "unregisterProcessObserver"

    .line 110
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getNativeActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getProcessObserver()Landroid/app/IProcessObserver$Stub;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v3, 0x0

    .line 112
    iput-boolean v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mObserverStatus:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_20
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1e

    .line 116
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_1e
    move-exception p0

    goto :goto_38

    :catch_20
    move-exception p0

    .line 114
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregistering a process observer which is not registered yet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_1e

    goto :goto_1a

    :goto_37
    return-void

    .line 116
    :goto_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method
