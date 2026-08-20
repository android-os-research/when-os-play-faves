.class public Lcom/android/server/om/IdmapDaemon;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/IdmapDaemon$Connection;
    }
.end annotation


# static fields
.field public static final IDMAP_DAEMON:Ljava/lang/String; = "idmap2d"

.field public static final SERVICE_CONNECT_INTERVAL_SLEEP_MS:I = 0x5

.field public static final SERVICE_CONNECT_TIMEOUT_MS:I = 0x1388

.field public static final SERVICE_TIMEOUT_MS:I = 0x2710

.field public static sInstance:Lcom/android/server/om/IdmapDaemon;


# instance fields
.field public final mIdmapToken:Ljava/lang/Object;

.field public final mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile mService:Landroid/os/IIdmap2;


# direct methods
.method public static synthetic $r8$lambda$wyb_JoLINnN88MwZR5i08xkzqwc()V
    .registers 0

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->lambda$getIdmapService$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;
    .registers 1

    iget-object p0, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smstopIdmapService()V
    .registers 0

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->stopIdmapService()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mOpenedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/om/IdmapDaemon;
    .registers 1

    .line 121
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v0}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 124
    :cond_b
    sget-object v0, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    return-object v0
.end method

.method public static synthetic lambda$getIdmapService$0()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "idmap"

    aput-object v2, v0, v1

    const-string/jumbo v1, "service \'%s\' died"

    .line 286
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stopIdmapService()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "idmap2d"

    .line 313
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    const-string v1, "OverlayManager"

    const-string v2, "Failed to disable idmap2 daemon"

    .line 317
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method


# virtual methods
.method public final connect()Lcom/android/server/om/IdmapDaemon$Connection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/IdmapDaemon;->mIdmapToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 328
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v1

    .line 331
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getIdmapService()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_27

    .line 333
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-direct {v1, p0, v2, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v1

    .line 336
    :cond_27
    invoke-static {v1}, Landroid/os/IIdmap2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    .line 337
    new-instance v1, Lcom/android/server/om/IdmapDaemon$Connection;

    iget-object v3, p0, Lcom/android/server/om/IdmapDaemon;->mService:Landroid/os/IIdmap2;

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon$Connection-IA;)V

    monitor-exit v0

    return-object v1

    :catchall_36
    move-exception p0

    .line 338
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .registers 6

    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    .line 191
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_2b

    .line 192
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "idmap2d service is not ready for createFabricatedOverlay()"

    .line 194
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 199
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_2b

    return-object v1

    .line 198
    :cond_17
    :try_start_17
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 199
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_2b

    return-object v2

    :catchall_1f
    move-exception v2

    if-eqz p0, :cond_2a

    .line 191
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p0

    :try_start_27
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    throw v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to fabricate overlay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "\", \""

    .line 130
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 131
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_4f

    const-string v2, "OverlayManager"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idmap2d service is not ready for createIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_60

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return-object p1

    .line 139
    :cond_4f
    :try_start_4f
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/os/IIdmap2;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_60

    .line 141
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return-object p1

    :catchall_60
    move-exception p1

    if-eqz p0, :cond_6b

    .line 130
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    throw p1
.end method

.method public deleteFabricatedOverlay(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    .line 206
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_3f

    .line 207
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_33

    .line 215
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_3f

    return v1

    .line 214
    :cond_2b
    :try_start_2b
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_33

    .line 215
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_3f

    return v2

    :catchall_33
    move-exception v2

    if-eqz p0, :cond_3e

    .line 206
    :try_start_36
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p0

    :try_start_3b
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception p0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete fabricated overlay \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "idmap2d service is not ready for dumpIdmap()"

    const-string v1, "OverlayManager"

    .line 254
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_2e

    .line 255
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_16

    .line 258
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_22

    .line 263
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_2e

    return-object v0

    .line 261
    :cond_16
    :try_start_16
    invoke-interface {v2, p1}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 263
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2e

    return-object p1

    :catchall_22
    move-exception p1

    if-eqz p0, :cond_2d

    .line 254
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p0

    :try_start_2a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    throw p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p0

    const-string p1, "failed to dump idmap"

    .line 264
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFabricatedOverlayInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 222
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7f

    const/4 v1, 0x0

    .line 225
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_2f

    const-string v2, "OverlayManager"

    const-string/jumbo v3, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    .line 228
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_54
    .catchall {:try_start_7 .. :try_end_1d} :catchall_52

    .line 242
    :try_start_1d
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 243
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_7f

    .line 248
    :catch_2a
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_7f

    .line 229
    monitor-exit p0

    return-object v0

    .line 232
    :cond_2f
    :try_start_2f
    invoke-interface {v2}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()V

    .line 234
    :goto_32
    invoke-interface {v2}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    .line 235
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_54
    .catchall {:try_start_2f .. :try_end_3f} :catchall_52

    goto :goto_32

    .line 242
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 243
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4d} :catch_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_7f

    .line 248
    :catch_4d
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_7f

    .line 237
    monitor-exit p0

    return-object v0

    :catchall_52
    move-exception v0

    goto :goto_6e

    :catch_54
    move-exception v2

    :try_start_55
    const-string v3, "OverlayManager"

    const-string v4, "failed to get all fabricated overlays"

    .line 239
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    .line 242
    :try_start_5c
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 243
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_69} :catch_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_7f

    .line 248
    :catch_69
    :cond_69
    :try_start_69
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7f

    .line 250
    monitor-exit p0

    return-object v0

    .line 242
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 243
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator()V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7b} :catch_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_7f

    .line 248
    :catch_7b
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 249
    throw v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getIdmapService()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "idmap2d"

    .line 272
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_1d

    :catch_7
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to set system property"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string p0, "OverlayManager"

    const-string v1, "Failed to enable idmap2 daemon"

    .line 275
    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getUpTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    .line 282
    :catch_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getUpTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    const-string/jumbo v3, "idmap"

    const/4 v4, 0x0

    if-gtz v2, :cond_45

    .line 283
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 285
    new-instance p0, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/om/IdmapDaemon$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-object v2

    :cond_3f
    const-wide/16 v2, 0x5

    .line 291
    :try_start_41
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_24

    goto :goto_24

    .line 296
    :cond_45
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const/4 v1, 0x1

    const/16 v2, 0x1388

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Failed to connect to \'%s\' in %d milliseconds"

    .line 297
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUpTime()J
    .registers 3

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public idmapExists(Ljava/lang/String;I)Z
    .registers 7

    const-string v0, "OverlayManager"

    const/4 v1, 0x0

    .line 175
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_50

    .line 176
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_33

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "idmap2d service is not ready for idmapExists(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_44

    .line 184
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_50

    return v1

    .line 183
    :cond_33
    :try_start_33
    new-instance v3, Ljava/io/File;

    invoke-interface {v2, p1, p2}, Landroid/os/IIdmap2;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p2
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_44

    .line 184
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_50

    return p2

    :catchall_44
    move-exception p2

    if-eqz p0, :cond_4f

    .line 175
    :try_start_47
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p0

    :try_start_4c
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception p0

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to check if idmap exists for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removeIdmap(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 146
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v0, "OverlayManager"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "idmap2d service is not ready for removeIdmap(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_3b

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    .line 153
    :cond_33
    :try_start_33
    invoke-interface {v0, p1, p2}, Landroid/os/IIdmap2;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    .line 154
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    :catchall_3b
    move-exception p1

    if-eqz p0, :cond_46

    .line 145
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw p1
.end method

.method public verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ", "

    const-string v1, "\", \""

    .line 160
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object p0

    .line 161
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->getIdmap2()Landroid/os/IIdmap2;

    move-result-object v2

    if-nez v2, :cond_4f

    const-string v2, "OverlayManager"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "idmap2d service is not ready for verifyIdmap(\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_60

    const/4 p1, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    .line 169
    :cond_4f
    :try_start_4f
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/os/IIdmap2;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z

    move-result p1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_60

    .line 171
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    return p1

    :catchall_60
    move-exception p1

    if-eqz p0, :cond_6b

    .line 160
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    throw p1
.end method
