.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private greylist-max-o mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private greylist-max-o mFlushAll:I

.field private greylist-max-o mFlushedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mendFlushingSpeechItems(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 490
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 491
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 487
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    .line 488
    const/4 p1, 0x0

    iput p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    .line 492
    return-void
.end method

.method private greylist-max-o endFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 505
    if-nez p1, :cond_c

    .line 506
    :try_start_5
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_11

    .line 508
    :cond_c
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 510
    :goto_11
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private declared-synchronized greylist-max-o getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 2

    monitor-enter p0

    .line 519
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 519
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 5
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 513
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 514
    :try_start_3
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    if-gtz v1, :cond_16

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    return v1

    .line 515
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private declared-synchronized greylist-max-o maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    monitor-enter p0

    .line 547
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 548
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 549
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 550
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    .line 551
    monitor-exit p0

    return-object v0

    .line 554
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_12
    monitor-exit p0

    return-object v1

    .line 546
    .end local p1    # "callerIdentity":Ljava/lang/Object;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 3

    monitor-enter p0

    .line 541
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 542
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 543
    monitor-exit p0

    return-object v0

    .line 540
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized greylist-max-o setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 3
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    monitor-enter p0

    .line 533
    if-eqz p1, :cond_c

    :try_start_3
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_11

    if-eqz v0, :cond_c

    .line 534
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 536
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_c
    :try_start_c
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_11

    .line 537
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 532
    .end local p1    # "speechItem":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o startFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 496
    if-nez p1, :cond_c

    .line 497
    :try_start_5
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_11

    .line 499
    :cond_c
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_11
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public greylist-max-o enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .registers 10
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v1, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v1, :cond_8

    .line 580
    move-object v0, p2

    check-cast v0, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 583
    :cond_8
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_16

    .line 584
    if-eqz v0, :cond_15

    .line 585
    const/4 v1, -0x8

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 588
    :cond_15
    return v2

    .line 591
    :cond_16
    if-nez p1, :cond_20

    .line 592
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    goto :goto_26

    .line 593
    :cond_20
    const/4 v1, 0x2

    if-ne p1, v1, :cond_26

    .line 594
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    .line 596
    :cond_26
    :goto_26
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 608
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 614
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    const-string v5, "TextToSpeechService"

    if-eqz v4, :cond_81

    .line 621
    :try_start_3d
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerUid()I

    move-result v2

    .line 622
    .local v2, "uid":I
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmTTSList(Landroid/speech/tts/TextToSpeechService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 623
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmTTSList(Landroid/speech/tts/TextToSpeechService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v4, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmIActivityManager(Landroid/speech/tts/TextToSpeechService;)Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->setTTSPkgInfo(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_67} :catch_68

    .line 628
    .end local v2    # "uid":I
    :cond_67
    goto :goto_7f

    .line 626
    :catch_68
    move-exception v2

    .line 627
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueSpeech"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7f
    const/4 v2, 0x0

    return v2

    .line 632
    :cond_81
    const-string v4, "SynthThread has quit"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz v0, :cond_8c

    .line 634
    const/4 v4, -0x4

    invoke-interface {v0, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 636
    :cond_8c
    return v2
.end method

.method public greylist-max-o isSpeaking()Z
    .registers 2

    .line 558
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o quit()V
    .registers 2

    .line 563
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 565
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 566
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    .line 567
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 570
    :cond_10
    return-void
.end method

.method public greylist-max-o stopAll()I
    .registers 4

    .line 683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 686
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 687
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_d

    .line 688
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 691
    :cond_d
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 694
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    .line 700
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    const/4 v2, 0x0

    return v2
.end method

.method public greylist-max-o stopForApp(Ljava/lang/Object;)I
    .registers 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 647
    if-nez p1, :cond_4

    .line 648
    const/4 v0, -0x1

    return v0

    .line 653
    :cond_4
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 663
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    .line 664
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 668
    :cond_10
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 671
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 677
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    const/4 v2, 0x0

    return v2
.end method
