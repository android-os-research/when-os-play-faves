.class Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultimediaMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;
    }
.end annotation


# static fields
.field private static final MEDIA_STATUS_CHECK_INTERVAL_MS:J = 0x1f4L

.field private static final MSG_AUDIO_PLAYBACK_INFO_CHANGED:I = 0x5

.field private static final MSG_MEDIA_CODEC_INFO_CHANGED:I = 0x4

.field private static final MSG_MEDIA_RESOURCE_INFO_CHANGED:I = 0x3

.field private static final MSG_MEDIA_STATUS_CHECK:I = 0x6

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultimediaMonitor"


# instance fields
.field private isDecoderAdded:Z

.field private isMediaStatusChanged:Z

.field private isRunning:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private mAudioPlayingPIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCodecRunningPIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private mMediaResourceChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field private mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

.field final synthetic this$0:Lcom/samsung/android/gesture/AutoRotationHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultimediaHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAudioPlaybackUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->handleAudioPlaybackUpdated(Ljava/util/HashSet;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCodecStatusUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->handleCodecStatusUpdated(Ljava/util/HashSet;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDecoderStatusUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->handleDecoderStatusUpdated(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->handleStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->handleStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMediaRunning(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->updateMediaRunning()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 477
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    .line 384
    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 386
    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isDecoderAdded:Z

    .line 387
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    .line 388
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    .line 390
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    .line 393
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$1;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 430
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$2;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 454
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 455
    new-instance p1, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$3;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;)V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 478
    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioManager:Landroid/media/AudioManager;

    .line 479
    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 480
    new-instance p1, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    .line 481
    return-void
.end method

.method private checkPIDMatches()Z
    .registers 6

    .line 584
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 586
    return v1

    .line 589
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_13

    .line 591
    return v1

    .line 594
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Audio PID list :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 597
    .local v2, "audioPID":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .end local v2    # "audioPID":Ljava/lang/Integer;
    goto :goto_23

    .line 599
    :cond_39
    const-string v1, "Codec running PID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 601
    .local v2, "codecPID":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .end local v2    # "codecPID":Ljava/lang/Integer;
    goto :goto_44

    .line 605
    :cond_58
    const/4 v1, 0x0

    .line 606
    .local v1, "pidMatch":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 607
    .local v3, "audioPID":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 608
    const/4 v1, 0x1

    .line 609
    goto :goto_76

    .line 613
    .end local v3    # "audioPID":Ljava/lang/Integer;
    :cond_75
    goto :goto_5f

    .line 614
    :cond_76
    :goto_76
    return v1
.end method

.method private handleAudioPlaybackUpdated(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 561
    .local p1, "audioPlayingPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    if-nez v0, :cond_5

    .line 562
    return-void

    .line 566
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 567
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 569
    return-void
.end method

.method private handleCodecStatusUpdated(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 550
    .local p1, "codecRunningPIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    if-nez v0, :cond_5

    .line 551
    return-void

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 558
    return-void
.end method

.method private handleDecoderStatusUpdated(Z)V
    .registers 3
    .param p1, "decoderAdded"    # Z

    .line 541
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    if-nez v0, :cond_5

    .line 542
    return-void

    .line 545
    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isDecoderAdded:Z

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 547
    return-void
.end method

.method private handleStart()V
    .registers 5

    .line 488
    const-string v0, "MultimediaMonitor"

    iget-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    if-eqz v1, :cond_7

    return-void

    .line 490
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 491
    iput-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isDecoderAdded:Z

    .line 492
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 496
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_24} :catch_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_25

    goto :goto_5c

    .line 500
    :catch_25
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception while starting MultimediaMonitor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 498
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_41
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException while starting MultimediaMonitor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_5c
    nop

    .line 504
    :goto_5d
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    .line 509
    return-void
.end method

.method private handleStop()V
    .registers 6

    .line 516
    const-string v0, "MultimediaMonitor"

    iget-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    if-nez v1, :cond_7

    .line 517
    return-void

    .line 520
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isDecoderAdded:Z

    .line 521
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mCodecRunningPIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 522
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlayingPIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 525
    :try_start_14
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V

    .line 526
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_57

    .line 529
    :catch_20
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown exception while stopping MultimediaMonitor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 527
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v2

    .line 528
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException while stopping MultimediaMonitor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_57
    nop

    .line 533
    :goto_58
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mAudioPlaybackCallback:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->removeMessages(I)V

    .line 537
    iput-boolean v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isRunning:Z

    .line 538
    return-void
.end method

.method private updateMediaRunning()V
    .registers 3

    .line 572
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    if-eqz v0, :cond_25

    .line 573
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isDecoderAdded:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->checkPIDMatches()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 574
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_25

    .line 576
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 580
    :cond_25
    :goto_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->isMediaStatusChanged:Z

    .line 581
    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->sendEmptyMessage(I)Z

    .line 485
    return-void
.end method

.method public stop()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor;->mMultimediaHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MultimediaMonitor$MultimediaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 513
    return-void
.end method
