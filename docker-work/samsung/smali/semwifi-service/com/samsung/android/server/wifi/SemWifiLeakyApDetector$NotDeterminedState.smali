.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;
.super Lcom/android/internal/util/State;
.source "SemWifiLeakyApDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotDeterminedState"
.end annotation


# instance fields
.field private final QUIET_TIME_AFTER_CONNECTION_MS:I

.field private cmdRetryCnt:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const p1, 0xea60

    .line 254
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->QUIET_TIME_AFTER_CONNECTION_MS:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 258
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->cmdRetryCnt:I

    .line 262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0x10

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const/16 v0, 0x10

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$000(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 273
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiLeakyApDetector"

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$meventToString(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2b
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eq p1, v0, :cond_89

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7f

    if-eq p1, v4, :cond_3a

    return v3

    .line 284
    :cond_3a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$msetGracePeriod(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)I

    move-result p1

    if-ltz p1, :cond_4c

    .line 286
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmActiveDetectionState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$ActiveDetectionState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_98

    .line 288
    :cond_4c
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GracePeriod request failed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_66
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->cmdRetryCnt:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_77

    add-int/2addr p1, v2

    .line 290
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->cmdRetryCnt:I

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    goto :goto_98

    .line 293
    :cond_77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-string p1, "Stop setting GracePeriod due to burst cmd failure"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$mlogControlHistory(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;Ljava/lang/String;)V

    goto :goto_98

    .line 276
    :cond_7f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_98

    .line 279
    :cond_89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->removeMessages(I)V
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->access$100(Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;I)V

    .line 280
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->cmdRetryCnt:I

    .line 281
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$NotDeterminedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->sendMessageDelayed(IJ)V

    :goto_98
    return v2
.end method
