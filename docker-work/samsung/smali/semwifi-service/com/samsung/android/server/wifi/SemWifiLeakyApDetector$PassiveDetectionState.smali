.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassiveDetectionState"
.end annotation


# instance fields
.field private final PASSIVE_DETECTION_TIMEOUT:J

.field private cmdRetryCnt:I

.field private elapsedTime:J

.field private endTime:J

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 4

    .line 370
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 373
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->PASSIVE_DETECTION_TIMEOUT:J

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    .line 380
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->endTime:J

    .line 381
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    .line 383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 384
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0xe

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    :cond_36
    return-void
.end method

.method public exit()V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v1, 0xe

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$400(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0xf

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$500(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 12

    .line 397
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiLeakyApDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_2b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e7

    const-string v0, "Stop PassiveDetection due to burst cmd failure"

    const-wide/32 v2, 0x927c0

    const/16 v4, 0xa

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/16 v9, 0xf

    if-eq p1, v8, :cond_b4

    if-eq p1, v9, :cond_6b

    packed-switch p1, :pswitch_data_f2

    return v7

    .line 450
    :pswitch_47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmPassiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmPassiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    goto/16 :goto_f0

    .line 441
    :pswitch_53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p1, v8}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$600(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 442
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p1, v9}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$700(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 443
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v9}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessage(I)V

    goto/16 :goto_f0

    .line 447
    :pswitch_64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v8, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto/16 :goto_f0

    .line 417
    :cond_6b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mendPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    if-ltz p1, :cond_98

    .line 419
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-string v0, "PassiveDetection stopped"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 420
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->endTime:J

    .line 422
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    sub-long/2addr v4, v8

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_f0

    .line 424
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f0

    .line 427
    :cond_98
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    if-ge p1, v4, :cond_a5

    add-int/2addr p1, v1

    .line 428
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v9, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_f0

    .line 431
    :cond_a5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_f0

    .line 400
    :cond_b4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mstartPassiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    if-ltz p1, :cond_d4

    .line 402
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-string v0, "PassiveDetection Started"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 403
    iput v7, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->startTime:J

    .line 405
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->elapsedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v9, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_f0

    .line 408
    :cond_d4
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    if-ge p1, v4, :cond_e1

    add-int/2addr p1, v1

    .line 409
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->cmdRetryCnt:I

    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v8, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_f0

    .line 412
    :cond_e1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    goto :goto_f0

    .line 437
    :cond_e7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_f0
    :goto_f0
    return v1

    nop

    :pswitch_data_f2
    .packed-switch 0x4
        :pswitch_64
        :pswitch_53
        :pswitch_53
        :pswitch_64
        :pswitch_47
    .end packed-switch
.end method
