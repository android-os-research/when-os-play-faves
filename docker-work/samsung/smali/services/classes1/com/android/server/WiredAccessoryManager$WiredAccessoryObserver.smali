.class public Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field public final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 388
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 11

    .line 392
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x400

    :try_start_9
    new-array v2, v1, [C

    const/4 v3, 0x0

    move v4, v3

    .line 396
    :goto_d
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_85

    .line 397
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_b2

    .line 400
    :try_start_1d
    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v6, v2, v3, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 402
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 403
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_82

    .line 406
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_47} :catch_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_48
    .catchall {:try_start_1d .. :try_end_47} :catchall_b2

    goto :goto_82

    :catch_48
    move-exception v6

    .line 412
    :try_start_49
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while attempting to determine initial switch state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-static {v7, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82

    .line 409
    :catch_66
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found while attempting to determine initial switch state"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 416
    :cond_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_49 .. :try_end_86} :catchall_b2

    .line 421
    :goto_86
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b1

    .line 422
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVPATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_b1
    return-void

    :catchall_b2
    move-exception p0

    .line 416
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public final makeObservedUEventList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 433
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0x20

    const-string/jumbo v4, "h2w"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 434
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 435
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 437
    :cond_25
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2e
    :goto_2e
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string/jumbo v5, "usb_audio"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 443
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 446
    :cond_46
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_4f
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "ch_hdmi_audio"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 458
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 459
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 461
    :cond_66
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "hdmi_audio"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 462
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 463
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 465
    :cond_7e
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v5, "hdmi"

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    .line 466
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result p0

    if-eqz p0, :cond_96

    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 469
    :cond_96
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "This kernel does not have HDMI audio support"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9f
    return-object v0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6

    :try_start_0
    const-string v0, "DEVPATH"

    .line 482
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SWITCH_NAME"

    .line 483
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    .line 484
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 485
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1d} :catch_25

    .line 486
    :try_start_1d
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    monitor-exit v3

    goto :goto_3d

    :catchall_22
    move-exception p0

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw p0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_25} :catch_25

    .line 489
    :catch_25
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse switch state from event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method

.method public final updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 494
    :goto_2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 495
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 496
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 497
    invoke-virtual {v2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ch_hdmi_audio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    and-int/lit16 p1, p3, 0xff

    if-nez p1, :cond_36

    .line 499
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "This is for DVI and No-Speaker HDMI Device"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 502
    :cond_36
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p1, -0x1

    if-ne p3, p1, :cond_3f

    move p3, v0

    goto :goto_41

    :cond_3f
    const/4 p1, 0x1

    move p3, p1

    .line 504
    :goto_41
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDMI config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_61
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I

    move-result p1

    invoke-virtual {v2, p1, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    return-void

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_72
    return-void
.end method
