.class abstract Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;
.super Ljava/lang/Object;
.source "SemSarManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSarManager"
.end annotation


# instance fields
.field protected mBackoffEnabled:Z

.field protected mPrevBackoffEnabled:Z

.field protected mWifiEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public static synthetic $r8$lambda$g991UWnPXEItk42AnMVnV0neelQ(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IIZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->lambda$setPowerBackoffMode$1(IIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kNHy_Sjsdy8MqthPP5Kml181ysg(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->lambda$setPowerBackoffEnabled$2(IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m6gaejzpusCxNdgUDduYbssp1S0(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->lambda$setPowerBackoffMode$0(IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 333
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    .line 334
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    .line 335
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    .line 338
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;->registObserver(Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;)V

    return-void
.end method

.method private synthetic lambda$setPowerBackoffEnabled$2(IZLjava/lang/String;)V
    .registers 5

    .line 397
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    const/4 p1, 0x1

    .line 398
    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    return-void
.end method

.method private synthetic lambda$setPowerBackoffMode$0(IZLjava/lang/String;)V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    const/4 p1, 0x2

    .line 374
    invoke-direct {p0, p3, p2, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    return-void
.end method

.method private synthetic lambda$setPowerBackoffMode$1(IIZLjava/lang/String;)V
    .registers 6

    .line 385
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;II)Z

    const/4 p1, 0x2

    .line 386
    invoke-direct {p0, p4, p3, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    return-void
.end method

.method private notifyToClients(Ljava/lang/String;ZI)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_15

    .line 407
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStarted(Ljava/lang/String;I)V

    goto :goto_1e

    .line 409
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    move-result-object p0

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStopped(Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method private reportBackOffState(ZI)V
    .registers 3

    if-eqz p1, :cond_c

    .line 415
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmCurrentBackOffMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->add(I)I

    goto :goto_15

    .line 417
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmCurrentBackOffMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->remove(I)I

    :goto_15
    return-void
.end method


# virtual methods
.method public abstract checkAndSetBackoff(Z)V
.end method

.method public abstract checkAndSetListener(Z)V
.end method

.method public checkAndTriggerBackoffRoutine(Z)V
    .registers 4

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndTriggerBackoffRoutine mBackoffEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    if-eq v0, p1, :cond_2d

    .line 347
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndSetBackoff(Z)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    :cond_2d
    return-void
.end method

.method protected getBackOffState()Z
    .registers 3

    .line 359
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : getBackOffState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_25
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    return p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected setBackoffState(Z)V
    .registers 4

    .line 354
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : setBackoffState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_23
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    return-void
.end method

.method protected setPowerBackoffEnabled(Z)V
    .registers 6

    const-string v0, "SemWifiBackOff.Sar"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerBackoff(head) enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    .line 395
    :goto_1b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 396
    :try_start_22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmActiveInterfaces(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IZ)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 400
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_36

    const/4 v0, 0x1

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->reportBackOffState(ZI)V

    return-void

    :catchall_36
    move-exception p0

    .line 400
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method protected setPowerBackoffMode(I)V
    .registers 6

    const-string v0, "SemWifiBackOff.Sar"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerBackoff(3 ant) mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 371
    :goto_1c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 372
    :try_start_23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmActiveInterfaces(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IZ)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 376
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_37

    const/4 p1, 0x2

    .line 377
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->reportBackOffState(ZI)V

    return-void

    :catchall_37
    move-exception p0

    .line 376
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method protected setPowerBackoffMode(II)V
    .registers 8

    const-string v0, "SemWifiBackOff.Sar"

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerBackoff(body) mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 383
    :goto_24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 384
    :try_start_2b
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmActiveInterfaces(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;IIZ)V

    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 388
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3e

    .line 389
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->reportBackOffState(ZI)V

    return-void

    :catchall_3e
    move-exception p0

    .line 388
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method protected setPrevBackoffState(Z)V
    .registers 4

    .line 364
    invoke-static {}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : setPrevBackoffState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_23
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    return-void
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .registers 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    .line 423
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-eqz v1, :cond_14

    .line 424
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    .line 425
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmCurrentBackOffMode(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->reset()V

    goto :goto_2a

    :cond_14
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2a

    .line 426
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-nez p2, :cond_2a

    .line 427
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    .line 428
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mBackoffEnabled:Z

    if-eqz p2, :cond_2a

    .line 429
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->checkAndSetBackoff(Z)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    :cond_2a
    :goto_2a
    return-void
.end method
