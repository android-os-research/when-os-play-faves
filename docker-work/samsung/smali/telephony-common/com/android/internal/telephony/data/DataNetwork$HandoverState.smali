.class final Lcom/android/internal/telephony/data/DataNetwork$HandoverState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandoverState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$CZ3BN1LVU1spd2TKn6O-mGa49mk(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;Landroid/telephony/data/DataCallResponse;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->lambda$shouldDeferDataStateChangedEvent$1(Landroid/telephony/data/DataCallResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$O-8Ive-khuk6zPbss0WHLtn7UxU(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->lambda$processMessage$0(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1312
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork$HandoverState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$processMessage$0(JI)V
    .registers 11

    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmFailCause(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v3

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;->onHandoverFailed(Lcom/android/internal/telephony/data/DataNetwork;IJI)V

    return-void
.end method

.method private synthetic blacklist lambda$shouldDeferDataStateChangedEvent$1(Landroid/telephony/data/DataCallResponse;)Z
    .registers 3

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCid(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private blacklist shouldDeferDataStateChangedEvent(Landroid/os/Message;)Z
    .registers 5

    .line 1397
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1398
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1399
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1400
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 1401
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropped unrelated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " data call list changed event. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1407
    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1410
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferred the related data call list changed event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 1412
    :cond_62
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropped unrelated data call list changed event. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    :goto_78
    return v0
.end method


# virtual methods
.method public blacklist enter()V
    .registers 5

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v1

    .line 1316
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x14

    .line 1315
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    .line 1317
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mnotifyPreciseDataConnectionState(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 2

    .line 1322
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x14

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->access$300(Lcom/android/internal/telephony/data/DataNetwork;I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1328
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    const-string v2, "Defer message "

    if-eq v0, v1, :cond_d5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_af

    const/16 v1, 0xd

    if-eq v0, v1, :cond_d5

    const/16 v1, 0xf

    if-eq v0, v1, :cond_97

    const/16 v1, 0x11

    if-eq v0, v1, :cond_89

    packed-switch v0, :pswitch_data_f6

    const/4 p0, 0x0

    return p0

    .line 1361
    :pswitch_38
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data service did not respond the handover request within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v2

    .line 1363
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getNetworkHandoverTimeoutMs()I

    move-result v2

    int-to-long v2, v2

    .line 1362
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1afe68cb-8b41-4964-a737-4f34372429ea"

    .line 1361
    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mreportAnomaly(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    const/4 p1, 0x3

    .line 1371
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v3, 0xffff

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1372
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DataNetworkCallback;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$HandoverState;JI)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    .line 1376
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmConnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$ConnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_f4

    .line 1357
    :cond_89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1358
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V

    goto :goto_f4

    .line 1350
    :cond_97
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1352
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    .line 1353
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monHandoverResponse(Lcom/android/internal/telephony/data/DataNetwork;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    goto :goto_f4

    .line 1334
    :cond_af
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->shouldDeferDataStateChangedEvent(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1336
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_f4

    .line 1346
    :cond_d5
    :pswitch_d5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1347
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$HandoverState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    :cond_f4
    :goto_f4
    const/4 p0, 0x1

    return p0

    :pswitch_data_f6
    .packed-switch 0x14
        :pswitch_38
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
    .end packed-switch
.end method
