.class public final Lcom/android/server/tv/TvRemoteServiceInput;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteServiceInput.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_KEYS:Z = false

.field public static final TAG:Ljava/lang/String; = "TvRemoteServiceInput"


# instance fields
.field public final mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mProvider:Landroid/media/tv/ITvRemoteProvider;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/media/tv/ITvRemoteProvider;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 162
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0

    return-void

    .line 166
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 168
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 170
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw p0

    :catchall_31
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 140
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-exit v0

    return-void

    .line 144
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 146
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 148
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 148
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0

    :catchall_31
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_25

    .line 102
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_64

    .line 104
    :try_start_10
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/server/tv/UinputBridge;->openGamepad(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/tv/UinputBridge;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v3, Lcom/android/server/tv/TvRemoteServiceInput$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput$2;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_36
    .catchall {:try_start_10 .. :try_end_22} :catchall_34

    .line 119
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_64

    .line 125
    :try_start_26
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {p0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_33

    :catch_2c
    const-string p0, "TvRemoteServiceInput"

    const-string p1, "Failed remote call to onInputBridgeConnected"

    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void

    :catchall_34
    move-exception p0

    goto :goto_60

    :catch_36
    :try_start_36
    const-string p2, "TvRemoteServiceInput"

    const-string v3, "Token is already dead"

    .line 115
    invoke-static {p2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_34

    .line 119
    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_64

    return-void

    :catch_45
    :try_start_45
    const-string p0, "TvRemoteServiceInput"

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create device for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_34

    .line 119
    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0

    :catchall_64
    move-exception p0

    .line 122
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    throw p0
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 19

    move-object v0, p0

    move-object v7, p1

    .line 54
    iget-object v8, v0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 55
    :try_start_5
    iget-object v1, v0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_31

    .line 60
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_71

    .line 62
    :try_start_12
    iget-object v11, v0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    new-instance v12, Lcom/android/server/tv/UinputBridge;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    invoke-interface {v11, p1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/android/server/tv/TvRemoteServiceInput$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput$1;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2e} :catch_42
    .catchall {:try_start_12 .. :try_end_2e} :catchall_40

    .line 78
    :try_start_2e
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    :goto_31
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_71

    .line 84
    :try_start_32
    iget-object v0, v0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_3f

    :catch_38
    const-string v0, "TvRemoteServiceInput"

    const-string v1, "Failed remote call to onInputBridgeConnected"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void

    :catchall_40
    move-exception v0

    goto :goto_6d

    :catch_42
    :try_start_42
    const-string v1, "TvRemoteServiceInput"

    const-string v2, "Token is already dead"

    .line 74
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_40

    .line 78
    :try_start_4c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_71

    return-void

    :catch_51
    :try_start_51
    const-string v0, "TvRemoteServiceInput"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_40

    .line 78
    :try_start_68
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8

    return-void

    :goto_6d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw v0

    :catchall_71
    move-exception v0

    .line 81
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .registers 7

    .line 340
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    .line 343
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    return-void

    .line 347
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 349
    :try_start_24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 351
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 351
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0

    :catchall_31
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendGamepadKeyDown(Landroid/os/IBinder;I)V
    .registers 7

    .line 319
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    const/4 v1, 0x1

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 322
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    .line 326
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 328
    :try_start_24
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 330
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw p0

    :catchall_31
    move-exception p0

    .line 332
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendGamepadKeyUp(Landroid/os/IBinder;I)V
    .registers 7

    .line 298
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    const/4 v1, 0x0

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 301
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v0

    return-void

    .line 305
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 307
    :try_start_24
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 309
    :try_start_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 309
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p0

    :catchall_31
    move-exception p0

    .line 311
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 191
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    .line 195
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 197
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 199
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 199
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p0

    :catchall_31
    move-exception p0

    .line 201
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 213
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v0

    return-void

    .line 217
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 219
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 221
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 221
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw p0

    :catchall_31
    move-exception p0

    .line 223
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .registers 8

    .line 233
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 236
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v0

    return-void

    .line 240
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 242
    :try_start_24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 244
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 244
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw p0

    :catchall_31
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .registers 6

    .line 277
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 280
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v0

    return-void

    .line 284
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 286
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 288
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 288
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    throw p0

    :catchall_31
    move-exception p0

    .line 290
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_20

    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 258
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return-void

    .line 262
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_31

    .line 264
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 266
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    .line 266
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw p0

    :catchall_31
    move-exception p0

    .line 268
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .registers 4

    return-void
.end method
