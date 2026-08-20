.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeController"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field public mController:Landroid/media/IVolumeController;

.field public mLongPressTimeout:I

.field public mNextLongPress:J

.field public mSafetyDialogVisible:Z

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 11363
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 11441
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 11446
    :cond_4
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method public displayVolumeLimiterToast()V
    .registers 3

    .line 11518
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11522
    :cond_5
    :try_start_5
    invoke-interface {p0}, Landroid/media/IVolumeController;->displayVolumeLimiterToast()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "VolumeController"

    const-string v1, "Error calling displayVolumeLimiterToast"

    .line 11524
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public isSafeVolumeDialogShowing()Z
    .registers 1

    .line 11549
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mSafetyDialogVisible:Z

    return p0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 3

    .line 11437
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 11531
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return p0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 6

    .line 11380
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    const/16 v2, 0x1f4

    const/4 v3, -0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    return-void
.end method

.method public postDismiss()V
    .registers 3

    .line 11497
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11500
    :cond_5
    :try_start_5
    invoke-interface {p0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "VolumeController"

    const-string v1, "Error calling dismiss"

    .line 11502
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 3

    .line 11456
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    :cond_5
    or-int/lit8 p1, p1, 0x1

    .line 11460
    :try_start_7
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p0

    const-string p1, "VolumeController"

    const-string v0, "Error calling displaySafeVolumeWarning"

    .line 11462
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 3

    .line 11477
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11480
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "VolumeController"

    const-string v0, "Error calling masterMuteChanged"

    .line 11482
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 3

    .line 11467
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11470
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "VolumeController"

    const-string p2, "Error calling volumeChanged"

    .line 11472
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public removeController(Landroid/media/IVolumeController;)V
    .registers 2

    return-void
.end method

.method public setA11yMode(I)V
    .registers 3

    .line 11507
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11510
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "VolumeController"

    const-string v0, "Error calling setA11Mode"

    .line 11512
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 2

    .line 11375
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    const/4 p1, 0x0

    .line 11376
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3

    .line 11487
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez p0, :cond_5

    return-void

    .line 11490
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "VolumeController"

    const-string v0, "Error calling setLayoutDirection"

    .line 11492
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public setSafetyDialogVisible(Z)V
    .registers 2

    .line 11545
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mSafetyDialogVisible:Z

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 11433
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    return v0

    :cond_4
    const/4 p3, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_46

    .line 11403
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v2, :cond_46

    if-ne p1, v1, :cond_1d

    .line 11405
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p1

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 11406
    invoke-virtual {p1, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    .line 11412
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_36

    .line 11413
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez p1, :cond_36

    .line 11415
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_45

    .line 11416
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_45

    .line 11419
    :cond_36
    iget-wide p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_46

    cmp-long p1, v1, p1

    if-lez p1, :cond_45

    .line 11422
    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_46

    :cond_45
    :goto_45
    move v0, p3

    :cond_46
    :goto_46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 11452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
