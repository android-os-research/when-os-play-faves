.class public Lcom/android/server/location/injector/SystemAppOpsHelper;
.super Lcom/android/server/location/injector/AppOpsHelper;
.source "SystemAppOpsHelper.java"


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$CLGSyfxutfULAy19enjkBJzZIqM(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->lambda$onSystemReady$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qQjoYrrPfn6mgnIOmXGjXLQeFjs(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper;->lambda$onSystemReady$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/server/location/injector/AppOpsHelper;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onSystemReady$0(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/AppOpsHelper;->notifyAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSystemReady$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 55
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkMockLocationAccess(Ljava/lang/String;I)Z
    .registers 8

    .line 155
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 159
    :try_start_10
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_20

    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 164
    :goto_1c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_20
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw p0
.end method

.method public checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 111
    :try_start_10
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 113
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 114
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_26

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    .line 116
    :goto_22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_26
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public finishOp(ILandroid/location/util/identity/CallerIdentity;)V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    :try_start_e
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 97
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    .line 98
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-virtual {p0, p1, v2, v3, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_23

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    throw p0
.end method

.method public noteOp(ILandroid/location/util/identity/CallerIdentity;)Z
    .registers 14

    .line 122
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 126
    :try_start_10
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 128
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 129
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 131
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v10

    move v6, p1

    .line 126
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2f

    if-nez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 133
    :goto_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2f
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw p0
.end method

.method public noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .registers 14

    .line 139
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 143
    :try_start_10
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 145
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 146
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 148
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v10

    move v6, p1

    .line 143
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2f

    if-nez p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 150
    :goto_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2f
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    throw p0
.end method

.method public onSystemReady()V
    .registers 6

    .line 44
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_5

    return-void

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    .line 49
    new-instance v2, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3a

    new-instance v2, Lcom/android/server/location/injector/SystemAppOpsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/injector/SystemAppOpsHelper$1;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public setSystemAlertWindowOpIfNeed(Ljava/lang/String;I)V
    .registers 8

    .line 172
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 176
    :try_start_f
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x18

    invoke-virtual {v0, v4, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 177
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v4, p2, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 183
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw p0
.end method

.method public startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z
    .registers 15

    .line 73
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 77
    :try_start_10
    iget-object v5, p0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 79
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v7

    .line 80
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v11

    move v6, p1

    .line 77
    invoke-virtual/range {v5 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_30

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    .line 85
    :goto_2c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_30
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0
.end method
