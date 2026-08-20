.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetectionState"
.end annotation


# instance fields
.field private final DETECTION_INTERVAL_MS:I

.field private activeDetectionTrial:I

.field private cmdRetryCnt:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/16 p1, 0x1388

    .line 307
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->DETECTION_INTERVAL_MS:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    const/4 v0, 0x5

    .line 313
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0xd

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    :cond_31
    return-void
.end method

.method public exit()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0xd

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$200(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 327
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiLeakyApDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8d

    const-wide/16 v2, 0x1388

    const/4 v0, 0x0

    const/16 v4, 0xd

    if-eq p1, v4, :cond_53

    packed-switch p1, :pswitch_data_98

    return v0

    .line 361
    :pswitch_3c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmActiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fputmActiveDetectionCnt(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    goto :goto_96

    .line 354
    :pswitch_47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$300(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    goto :goto_96

    .line 358
    :pswitch_4d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_96

    .line 330
    :cond_53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mdoActiveDetection(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    if-ltz p1, :cond_74

    .line 332
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 333
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->activeDetectionTrial:I

    if-lez p1, :cond_6a

    .line 335
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_96

    .line 337
    :cond_6a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmPassiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$PassiveDetectionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_96

    .line 341
    :cond_74
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_85

    add-int/2addr p1, v1

    .line 342
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->cmdRetryCnt:I

    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_96

    .line 345
    :cond_85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-string p1, "Stop ActiveDetection due to burst cmd failure"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    goto :goto_96

    .line 350
    :cond_8d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmNotDeterminedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x4
        :pswitch_4d
        :pswitch_47
        :pswitch_47
        :pswitch_4d
        :pswitch_3c
    .end packed-switch
.end method
