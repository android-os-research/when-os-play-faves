.class public Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$SystemEvents;,
        Lcom/android/server/sepunion/cover/GenericCoverServiceController$ListenerTypes;
    }
.end annotation


# static fields
.field public static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x1

.field public static final MSG_SEND_POWER_KEY_TO_COVER:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

.field public mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerManager:Landroid/os/PowerManager;

.field public mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/GenericCoverServiceController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->handleSendPowerKeyToCover(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 83
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 86
    new-instance p2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    invoke-direct {p2, p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 87
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string/jumbo v0, "send power key"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "disable LCD Off"

    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 5

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-nez p0, :cond_16

    .line 167
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    .line 170
    sget-object p1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_16
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current Generic Cover Callback state:"

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 288
    :try_start_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live callbacks ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz p3, :cond_2d

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    :cond_75
    const-string p0, "  "

    .line 295
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    monitor-exit p1

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_8 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public final handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .registers 7

    .line 146
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 148
    iget v3, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 149
    invoke-virtual {v2, v4, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 152
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    .line 153
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :catchall_25
    move-exception p0

    .line 152
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final handleSendPowerKeyToCover(Landroid/os/Bundle;)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 135
    iget v3, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    .line 136
    invoke-virtual {v2, v3, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 139
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    .line 140
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :catchall_27
    move-exception p0

    .line 139
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-eq p1, v1, :cond_53

    const/4 v1, 0x4

    if-eq p1, v1, :cond_53

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported touch listener type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_53
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 206
    :try_start_56
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v2, :cond_5c

    .line 208
    iget-object v2, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 209
    sget-object p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerNfcTouchListenerCallback : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return-void

    .line 216
    :cond_7c
    new-instance v8, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 p1, 0x0

    .line 218
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 219
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v0

    return-void

    :catchall_99
    move-exception p0

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_56 .. :try_end_9b} :catchall_99

    throw p0
.end method

.method public final releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 5

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 185
    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 186
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    .line 189
    sget-object p1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_16
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 3

    .line 114
    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPowerKeyToCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLcdOffDisabledByCover(Z)V
    .registers 5

    .line 121
    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLcdOffDisabledByCover disabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lcd_off_disabled_by_cover"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 126
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8

    .line 224
    sget-object v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 228
    :try_start_32
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    if-eqz v2, :cond_38

    .line 230
    iget-object v4, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 231
    sget-object v1, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 234
    monitor-exit v0

    return p0

    .line 238
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_32 .. :try_end_74} :catchall_7c

    .line 239
    sget-object p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_7c
    move-exception p0

    .line 238
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method
