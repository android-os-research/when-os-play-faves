.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.super Lcom/android/internal/telephony/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$qvbWBc2VL_iCz15Oj3CLLziY1zM(Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->lambda$processMessage$0()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 2

    .line 3230
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$processMessage$0()V
    .registers 2

    .line 3290
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v0, 0x0

    .line 3291
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 10

    .line 3233
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v0

    .line 3234
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3236
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmId(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v5

    int-to-long v6, v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mcanHandleDefault(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v8

    const/16 v2, 0x4b

    const/4 v3, 0x2

    .line 3234
    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIJZ)V

    .line 3237
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setHandoverState(I)V

    .line 3245
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mshouldRestrictNetwork(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmRestrictedNetworkOverride(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 3247
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 3249
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3250
    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x4001f

    const/4 v4, 0x0

    .line 3249
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->registerCarrierPrivilegesListener(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3252
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mnotifyDataConnectionState(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 3253
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCall(I)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 14

    .line 3261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$smmsgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3262
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_314

    .line 3424
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState not handled msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 3425
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RefCount="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnContexts(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3424
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_312

    .line 3417
    :sswitch_53
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcActivatingState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_STOP_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3418
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    goto :goto_80

    .line 3405
    :sswitch_61
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_80

    .line 3409
    :sswitch_6b
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 3412
    :sswitch_74
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v0, "DcActivatingState T3346 EVENT_DATA_CONNECTION_T3346 T3346_TIMER_START_V01"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3413
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmStatusT3346(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    :goto_80
    move v1, v2

    goto/16 :goto_312

    .line 3398
    :sswitch_83
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 3399
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 3400
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/dataconnection/DataConnection;[I)V

    goto :goto_80

    .line 3271
    :sswitch_96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 3274
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data_call_response"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/telephony/data/DataCallResponse;

    .line 3275
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, p1, v5, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$monSetupConnectionCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object p1

    .line 3276
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq p1, v3, :cond_df

    .line 3277
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    if-eq v3, v0, :cond_df

    .line 3278
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmConnectionParams(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " != cp:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3283
    :cond_df
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3286
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetupConnectionCompleted result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 3289
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq p1, v3, :cond_123

    .line 3290
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v4, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V

    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mreleasePduSessionId(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Runnable;)V

    .line 3293
    :cond_123
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataConnection$3;->$SwitchMap$com$android$internal$telephony$dataconnection$DataConnection$SetupResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/16 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    const/4 v4, -0x1

    packed-switch v3, :pswitch_data_336

    .line 3388
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown SetupResult, should not happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3384
    :pswitch_13e
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != mTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_2e8

    .line 3343
    :pswitch_164
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetSuggestedRetryDelay(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/telephony/data/DataCallResponse;)J

    move-result-wide v10

    cmp-long v1, v10, v8

    if-nez v1, :cond_170

    move-wide v6, v8

    goto :goto_1be

    :cond_170
    const-wide/16 v8, 0x0

    cmp-long v1, v10, v8

    if-ltz v1, :cond_1be

    .line 3348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v10

    .line 3350
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_1be

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1be

    .line 3351
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    .line 3352
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3353
    invoke-virtual {v1, v6, v7}, Landroid/telephony/TelephonyManager;->setNextRetryTime(J)V

    .line 3354
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNextRetryTime("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3358
    :cond_1be
    :goto_1be
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmHandoverFailureMode(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v8

    invoke-static {v1, v3, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->calculateNewRetryRequestType(III)I

    move-result v1

    .line 3360
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataThrottler()Lcom/android/internal/telephony/dataconnection/DataThrottler;

    move-result-object v3

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v8

    invoke-virtual {v3, v8, v6, v7, v1}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTime(IJI)V

    .line 3363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: ERROR_DATA_SERVICE_SPECIFIC_ERROR  delay="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " result.isRadioRestartFailure="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 3367
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 3368
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    .line 3367
    invoke-static {v3, v6, v7}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isPermanentFailure="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    iget v6, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 3370
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3371
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3372
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 3377
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    if-eqz v5, :cond_24a

    .line 3379
    invoke-virtual {v5}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v4

    .line 3377
    :cond_24a
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 3381
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_2e8

    .line 3330
    :pswitch_258
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcActivatingState: NO_DEFAULT_DATA"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3333
    :pswitch_25f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mtearDownData(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 3334
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDisconnectingErrorCreatingConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_2e8

    .line 3311
    :pswitch_26f
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_287

    .line 3313
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDct(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataThrottler()Lcom/android/internal/telephony/dataconnection/DataThrottler;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3314
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v3

    .line 3313
    invoke-virtual {v1, v3, v8, v9, v2}, Lcom/android/internal/telephony/dataconnection/DataThrottler;->setRetryTime(IJI)V

    move-wide v6, v8

    .line 3317
    :cond_287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 3318
    invoke-static {v3}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " retry="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3320
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3321
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;)V

    .line 3322
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 3324
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_2e8

    .line 3303
    :pswitch_2c5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;II)V

    .line 3305
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmInactiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_2e8

    .line 3296
    :pswitch_2da
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmDcFailCause(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 3297
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmActiveState(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 3391
    :goto_2e8
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v4

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 3393
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 3394
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$mgetApnTypeBitmask(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v7

    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fgetmApnSetting(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v8

    iget v9, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    .line 3392
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onSetupDataCallResponse(Landroid/telephony/data/DataCallResponse;IIII)V

    goto/16 :goto_80

    .line 3266
    :sswitch_30b
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_80

    :goto_312
    return v1

    nop

    :sswitch_data_314
    .sparse-switch
        0x40000 -> :sswitch_30b
        0x40001 -> :sswitch_96
        0x4000b -> :sswitch_30b
        0x4001f -> :sswitch_83
        0x40023 -> :sswitch_6b
        0x40024 -> :sswitch_61
        0x40028 -> :sswitch_74
        0x40029 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_336
    .packed-switch 0x1
        :pswitch_2da
        :pswitch_2c5
        :pswitch_26f
        :pswitch_258
        :pswitch_25f
        :pswitch_164
        :pswitch_13e
    .end packed-switch
.end method
