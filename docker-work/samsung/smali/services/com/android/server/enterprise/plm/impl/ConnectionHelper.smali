.class public Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
.super Landroid/os/Handler;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;,
        Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;
    }
.end annotation


# static fields
.field public static final BIND_COUNTER_MAX:I = 0x4

.field public static final BIND_SERVICE_FAILURE:Ljava/lang/String; = "Failed to bind to service!"

.field public static final BIND_TIMEOUT:J = 0x7530L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBindCounter:I

.field public final mBindRetryRunnable:Ljava/lang/Runnable;

.field public mBinder:Landroid/os/IBinder;

.field public final mClassName:Ljava/lang/String;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

.field public final mContext:Landroid/content/Context;

.field public final mPackageName:Ljava/lang/String;

.field public mPendingRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

.field public mProcessId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBindCounter(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionStateListener(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPendingRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBinder(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPendingRunnable(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPendingRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProcessId(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPidFromPackageName(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->getPidFromPackageName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetBindTimer(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;)V
    .registers 6

    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 187
    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnectionStateListener:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectionStateListener;

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    const/4 p2, -0x1

    .line 80
    iput p2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    .line 81
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPendingRunnable:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$ConnectRunnable;

    const/4 p1, 0x4

    .line 82
    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    return-void
.end method


# virtual methods
.method public declared-synchronized bindService()Z
    .registers 6

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 109
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "bindService already in progress..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_4c

    .line 110
    monitor-exit p0

    return v1

    .line 113
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1f

    .line 114
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string v2, "bindService already succeeded!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 116
    :cond_1f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 122
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "bindService failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_4c

    const/4 v0, 0x0

    .line 123
    monitor-exit p0

    return v0

    .line 126
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->scheduleBindTimer()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    .line 129
    :goto_4a
    monitor-exit p0

    return v1

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 3

    .line 86
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_15

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    :cond_15
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getPidFromPackageName(Ljava/lang/String;)I
    .registers 4

    .line 150
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 151
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 154
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 155
    sget-object p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return p0

    :cond_46
    const/4 p0, -0x1

    return p0
.end method

.method public getProcessId()I
    .registers 2

    .line 100
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mProcessId:I

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public isConnected()Z
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final declared-synchronized resetBindTimer(Z)V
    .registers 5

    monitor-enter p0

    .line 133
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetBindTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3c

    .line 136
    :try_start_9
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_16
    if-eqz p1, :cond_3a

    const/4 p1, 0x4

    .line 141
    iput p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c
    .catchall {:try_start_9 .. :try_end_1b} :catchall_3c

    goto :goto_3a

    :catch_1c
    move-exception p1

    .line 144
    :try_start_1d
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resetBindTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3c

    .line 147
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized scheduleBindTimer()V
    .registers 5

    monitor-enter p0

    .line 164
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "scheduleBindTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_37

    .line 167
    :try_start_9
    iget v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    .line 168
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17
    .catchall {:try_start_9 .. :try_end_16} :catchall_37

    goto :goto_35

    :catch_17
    move-exception v0

    .line 170
    :try_start_18
    sget-object v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in scheduleBindTimer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_37

    .line 173
    :goto_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method
