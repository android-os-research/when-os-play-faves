.class public abstract Lcom/android/server/wm/FreeformContainerServiceBinder;
.super Ljava/lang/Object;
.source "FreeformContainerServiceBinder.java"


# static fields
.field public static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mIsServiceRunning:Z

.field public final mService:Landroid/content/Intent;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mServiceHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsServiceRunning(Lcom/android/server/wm/FreeformContainerServiceBinder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 52
    new-instance v0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FreeformContainerServiceBinder$1;-><init>(Lcom/android/server/wm/FreeformContainerServiceBinder;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bindService()Z
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized bindServiceIfNeeded(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 79
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindService()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind service success, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 84
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind service failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_41
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Success="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_79

    .line 89
    :cond_77
    monitor-exit p0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "    * History"

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_55

    const/16 v1, 0x64

    goto :goto_56

    :cond_55
    const/4 v1, 0x5

    :goto_56
    if-lt v0, v1, :cond_5b

    sub-int v1, v0, v1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    if-ge v1, v0, :cond_86

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_5c

    :cond_86
    return-void
.end method

.method public final isDexModeStandalone()Z
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    .line 134
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_10
    move-exception v0

    .line 135
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isServiceRunning()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    iget-boolean p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    return p0
.end method

.method public okToBind()Z
    .registers 1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->isDexModeStandalone()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public okToUnbind()Z
    .registers 1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method public unbindService()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public declared-synchronized unbindServiceIfNeeded(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindService()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind service success, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mServiceHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnbindService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] | "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 104
    :cond_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method
