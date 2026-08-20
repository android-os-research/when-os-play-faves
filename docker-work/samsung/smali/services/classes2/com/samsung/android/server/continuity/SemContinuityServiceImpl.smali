.class public Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
.super Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;
.source "SemContinuityServiceImpl.java"


# instance fields
.field public final mBrReceiver:Landroid/content/BroadcastReceiver;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentUserHandle(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 65
    new-instance p2, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;-><init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V

    iput-object p2, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
    .registers 4

    .line 36
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    .line 39
    new-instance v0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    return-object v0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;I)V
    .registers 3

    .line 115
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public clearLocalClip(I)V
    .registers 2

    .line 95
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public onUserUnlocking(Landroid/os/UserHandle;)V
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserUnlocking - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    if-ne v0, v2, :cond_3a

    if-nez v1, :cond_3a

    .line 53
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    :cond_3a
    return-void
.end method

.method public registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .registers 3

    .line 100
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 8

    .line 60
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 61
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .registers 4

    .line 110
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setCurrentUserHandle(Landroid/os/UserHandle;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public setLocalClip(Landroid/os/Bundle;I)V
    .registers 3

    .line 90
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public unregisterContinuityCopyListener(I)V
    .registers 2

    .line 105
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
