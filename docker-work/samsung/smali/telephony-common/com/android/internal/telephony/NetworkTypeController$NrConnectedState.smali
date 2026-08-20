.class final Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NrConnectedState"
.end annotation


# instance fields
.field private blacklist mIsNrSA:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 2080
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    const/4 p1, 0x0

    .line 2083
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method

.method private blacklist handlePcoData(Landroid/os/AsyncResult;)V
    .registers 6

    .line 2346
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    .line 2347
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCO_DATA exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    return-void

    .line 2350
    :cond_1d
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    if-nez p1, :cond_24

    return-void

    .line 2373
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    if-lez v0, :cond_8a

    iget v0, p1, Landroid/telephony/PcoData;->pcoId:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    if-ne v0, v1, :cond_8a

    .line 2374
    iget-object v0, p1, Landroid/telephony/PcoData;->contents:[B

    array-length v1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_43

    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    .line 2376
    :goto_44
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PCO_DATA_CHANGED: isNrAdvancedAllowedByPco = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/telephony/PcoData;->contents:[B

    .line 2377
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2376
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2378
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eq p1, v2, :cond_8a

    .line 2379
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2380
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->updateNrAdvancedState()V

    .line 2381
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 2382
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleNrAdvancedNotAllowed(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_8a
    return-void
.end method

.method private blacklist updateNrAdvancedState()V
    .registers 3

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2329
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_20

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "NR state changed. Sending EVENT_NR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2332
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 2335
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2336
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "updateNrAdvancedState: CONNECTED_NR_ADVANCED -> CONNECTED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2337
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_49

    .line 2339
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "updateNrAdvancedState: CONNECTED -> CONNECTED_NR_ADVANCED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2340
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 2342
    :goto_49
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 6

    .line 2088
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering NrConnectedState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_restricted_rrc_idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2095
    :cond_38
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsQc(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v2, "5G UC: Skip updating mRetainUC until EVENT_PHYSICAL_CHANNEL_CONFIG_CHANGED is received"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 2098
    :cond_58
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2102
    :goto_5d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ne v0, v2, :cond_6a

    move v0, v3

    goto :goto_6b

    :cond_6a
    move v0, v1

    :goto_6b
    iput-boolean v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsNrSA = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsQc(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misTmo5GUCSupported(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "legacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "restricted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2108
    :cond_b1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2110
    :cond_ba
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2112
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_12d

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_12d

    .line 2113
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2116
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    if-ne v2, v3, :cond_ef

    move v2, v3

    goto :goto_f0

    :cond_ef
    move v2, v1

    :goto_f0
    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPrevNrCband(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;Z)[I

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;[I)V

    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "connected_mmwave"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2123
    :cond_11f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2127
    :cond_124
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_12d
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 2320
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "connected_mmwave"

    goto :goto_d

    :cond_b
    const-string p0, "connected"

    :goto_d
    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 12

    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NrConnectedState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "5G UC: Skip updating mRetainUC until EVENT_PHYSICAL_CHANNEL_CONFIG_CHANGED is received"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    goto :goto_47

    .line 2138
    :cond_42
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2141
    :goto_47
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    .line 2143
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const-string v4, "from SA, no timer"

    const-string v5, "CHN"

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_2df

    const/4 v9, 0x3

    if-eq v1, v9, :cond_21d

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1a3

    if-eq v1, v2, :cond_7f

    packed-switch v1, :pswitch_data_464

    return v7

    .line 2236
    :pswitch_6c
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->updateNrAdvancedState()V

    goto/16 :goto_449

    .line 2307
    :pswitch_71
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->updateNrAdvancedState()V

    goto/16 :goto_449

    .line 2233
    :pswitch_76
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->handlePcoData(Landroid/os/AsyncResult;)V

    goto/16 :goto_449

    .line 2256
    :cond_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 2257
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2259
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2262
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v8, :cond_188

    .line 2264
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNone(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_bc

    .line 2265
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v8, :cond_18d

    .line 2266
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v8}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto/16 :goto_18d

    .line 2270
    :cond_bc
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmSaUCBandList(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_117

    .line 2272
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetNrAdvBandInd(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2273
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_182

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v8, :cond_182

    .line 2274
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v8}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2275
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA Update icon from nonUC->UC mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2276
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2277
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_182

    .line 2280
    :cond_117
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v8, :cond_153

    .line 2281
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_182

    .line 2282
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v8}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2283
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NRCA primary nonUC, sec UC->idle mIsUpdateToUCIconInIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2284
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2285
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_182

    .line 2288
    :cond_153
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    if-eq p1, v0, :cond_182

    .line 2289
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_182

    .line 2290
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "SA nonUC->idle OR  NRCA primary nonUC, sec nonUC->idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2291
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2292
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2295
    :cond_182
    :goto_182
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_18d

    .line 2298
    :cond_188
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v7}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2301
    :cond_18d
    :goto_18d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_449

    .line 2302
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "NR state changed. Sending EVENT_NR_STATE_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2303
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v9}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    goto/16 :goto_449

    .line 2241
    :cond_1a3
    :pswitch_1a3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_202

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_202

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_202

    .line 2242
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2243
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-eq p1, v3, :cond_1d3

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetUWBitValue(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v8, :cond_1d8

    .line 2244
    :cond_1d3
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2246
    :cond_1d8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: mRetainUC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRetainCtr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainCtr(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2248
    :cond_202
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2250
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_218

    .line 2251
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2253
    :cond_218
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->updateNrAdvancedState()V

    goto/16 :goto_449

    .line 2209
    :cond_21d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nrState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2210
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_2a2

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_2a2

    .line 2212
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_288

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    if-eqz p1, :cond_288

    .line 2213
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2214
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 2215
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_283

    :cond_27d
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 2214
    :goto_283
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_449

    .line 2218
    :cond_288
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_29d

    :cond_297
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 2218
    :goto_29d
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_449

    :cond_2a2
    if-eq v0, v6, :cond_449

    .line 2221
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_449

    .line 2223
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d4

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    if-eqz p1, :cond_2d4

    .line 2224
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2225
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_449

    .line 2228
    :cond_2d4
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_449

    .line 2145
    :cond_2df
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rat = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    const/16 p1, 0x12

    if-ne v0, p1, :cond_30b

    .line 2149
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_306

    .line 2150
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v7}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2152
    :cond_306
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2156
    :cond_30b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_38e

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v2, :cond_38e

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2158
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_38e

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-ne p1, v6, :cond_32d

    move p1, v8

    goto :goto_32e

    :cond_32d
    move p1, v7

    :goto_32e
    if-ne v0, v6, :cond_332

    move v1, v8

    goto :goto_333

    :cond_332
    move v1, v7

    :goto_333
    if-eq p1, v1, :cond_38e

    .line 2161
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transition with Inter-RAT Timer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s) from isNrSA("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), prevRAT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". curState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 2163
    invoke-virtual {v2}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2161
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2164
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v8}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 2165
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2166
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithInterRatTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_449

    :cond_38e
    if-eq v0, v6, :cond_432

    .line 2170
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_3a2

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_3a2

    goto/16 :goto_432

    .line 2183
    :cond_3a2
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_401

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_401

    .line 2185
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e8

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    if-eqz p1, :cond_3e8

    .line 2186
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2187
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    if-eqz v1, :cond_3de

    .line 2188
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v1

    goto :goto_3e4

    :cond_3de
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v1

    .line 2187
    :goto_3e4
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_444

    .line 2191
    :cond_3e8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    if-eqz v1, :cond_3f7

    .line 2192
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v1

    goto :goto_3fd

    :cond_3f7
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v1

    .line 2191
    :goto_3fd
    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_444

    .line 2196
    :cond_401
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_428

    iget-boolean p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    if-eqz p1, :cond_428

    .line 2197
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 2198
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_444

    .line 2201
    :cond_428
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_444

    :cond_432
    :goto_432
    if-ne v0, v6, :cond_435

    move v7, v8

    .line 2173
    :cond_435
    iput-boolean v7, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->mIsNrSA:Z

    .line 2179
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-eq v0, p1, :cond_444

    .line 2180
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 2205
    :cond_444
    :goto_444
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevRat(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 2312
    :cond_449
    :goto_449
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_462

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_462

    .line 2313
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_462
    return v8

    nop

    :pswitch_data_464
    .packed-switch 0xd
        :pswitch_1a3
        :pswitch_76
        :pswitch_71
        :pswitch_6c
    .end packed-switch
.end method
