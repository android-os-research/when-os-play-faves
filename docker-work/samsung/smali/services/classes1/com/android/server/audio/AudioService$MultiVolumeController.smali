.class public Lcom/android/server/audio/AudioService$MultiVolumeController;
.super Lcom/android/server/audio/AudioService$VolumeController;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiVolumeController"
.end annotation


# instance fields
.field public mVolumeControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/IVolumeController;",
            ">;"
        }
    .end annotation
.end field

.field public mVolumeStarEnable:Z

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    .line 17250
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 17251
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 17252
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeStarEnable:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized displayVolumeLimiterToast()V
    .registers 3

    monitor-enter p0

    .line 17339
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17340
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17341
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17343
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 5

    monitor-enter p0

    .line 17267
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17268
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    if-eqz v1, :cond_7

    const/4 p1, 0x1

    .line 17269
    monitor-exit p0

    return p1

    :cond_24
    const/4 p1, 0x0

    .line 17272
    monitor-exit p0

    return p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postDismiss()V
    .registers 3

    monitor-enter p0

    .line 17319
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17320
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17321
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17323
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postDisplaySafeVolumeWarning(I)V
    .registers 4

    monitor-enter p0

    .line 17287
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17288
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17289
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17291
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postMasterMuteChanged(I)V
    .registers 4

    monitor-enter p0

    .line 17303
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17304
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17305
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17307
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postVolumeChanged(II)V
    .registers 5

    monitor-enter p0

    .line 17295
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17296
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17297
    invoke-super {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17299
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeController(Landroid/media/IVolumeController;)V
    .registers 5

    monitor-enter p0

    .line 17347
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 17348
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 17349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17350
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17351
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 17356
    :cond_24
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 17357
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    goto :goto_3d

    .line 17359
    :cond_31
    iget-object p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/IVolumeController;

    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 17361
    :goto_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setA11yMode(I)V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_9

    const/16 v1, 0x65

    if-ne p1, v1, :cond_10

    :cond_9
    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 17329
    :goto_e
    :try_start_e
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeStarEnable:Z

    .line 17331
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17332
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17333
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_2a

    goto :goto_16

    .line 17335
    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setController(Landroid/media/IVolumeController;)V
    .registers 3

    monitor-enter p0

    .line 17256
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    if-eqz p1, :cond_14

    .line 17258
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17259
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeStarEnable:Z

    if-eqz p1, :cond_14

    const/16 p1, 0x64

    .line 17260
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 17263
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLayoutDirection(I)V
    .registers 4

    monitor-enter p0

    .line 17311
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 17312
    iput-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17313
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 17315
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 17277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17278
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/IVolumeController;

    .line 17279
    iput-object v2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 17280
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 17282
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
