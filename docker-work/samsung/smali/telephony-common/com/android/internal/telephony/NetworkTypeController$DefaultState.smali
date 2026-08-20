.class final Lcom/android/internal/telephony/NetworkTypeController$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2

    .line 1323
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method

.method private blacklist handlePcoData(Landroid/os/AsyncResult;)V
    .registers 6

    .line 1557
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    .line 1558
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

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

    .line 1561
    :cond_1d
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    if-nez p1, :cond_24

    return-void

    .line 1566
    :cond_24
    iget v0, p1, Landroid/telephony/PcoData;->pcoId:I

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    if-eq v0, v1, :cond_35

    iget v0, p1, Landroid/telephony/PcoData;->pcoId:I

    const v1, 0xff03

    if-ne v0, v1, :cond_9c

    .line 1568
    :cond_35
    iget-object v0, p1, Landroid/telephony/PcoData;->contents:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_43

    .line 1569
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_43

    move v2, v3

    .line 1570
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PCO_DATA: isNrAdvancedAllowedByPco = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/telephony/PcoData;->contents:[B

    .line 1571
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1570
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1572
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-nez p1, :cond_7a

    .line 1573
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto :goto_9c

    .line 1574
    :cond_7a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-lez p1, :cond_9c

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eq p1, v2, :cond_9c

    .line 1576
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1577
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 1578
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleNrAdvancedNotAllowed(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_9c
    :goto_9c
    return-void
.end method

.method private blacklist isUwDisqualifiedAndHandled()Z
    .registers 11

    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1587
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUwDsqEvent = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v5}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_dd

    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-array v2, v3, [I

    const/4 v4, -0x1

    aput v4, v2, v1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurServingCellInfo(Lcom/android/internal/telephony/NetworkTypeController;[I)V

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1592
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;I)V

    return v1

    .line 1598
    :cond_62
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTelephonyFacade(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/TelephonyFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyFacade;->getElapsedSinceBootMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwDragStartTime(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I

    move-result-object v0

    aget v0, v0, v3

    int-to-long v6, v0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    int-to-long v8, v0

    sub-long/2addr v8, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_eb

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UWTimerDrag is updated from Remaining time("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v6}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") to Tpci_hys:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmTimers(Lcom/android/internal/telephony/NetworkTypeController;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmUwTimerDrag(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwTimerDragUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwTimerDragUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1606
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_eb

    .line 1610
    :cond_dd
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1611
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    .line 1613
    :cond_eb
    :goto_eb
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;I)V

    return v3
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1326
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1327
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-eq v0, v1, :cond_470

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4b4

    .line 1551
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1467
    :pswitch_42
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_4b2

    .line 1468
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleUwDsqChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto/16 :goto_4b2

    .line 1463
    :pswitch_5f
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->isUwDisqualifiedAndHandled()Z

    goto/16 :goto_4b2

    .line 1530
    :pswitch_64
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misInCall(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCallState(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Call Started"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1533
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_4b2

    .line 1534
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetIsInEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1535
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleVolteEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1538
    :cond_a7
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCallState(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1539
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v3, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Call Ended"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1540
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 1541
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "call_state_change"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstartUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 1543
    :cond_dc
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_4b2

    .line 1544
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    and-int/lit16 p1, p1, -0x181

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto/16 :goto_4b2

    .line 1486
    :pswitch_f1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_100

    .line 1487
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1490
    :cond_100
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1491
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrevNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1492
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5G UC: ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") update CellId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mIsRefreshTimerActive :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsRefreshTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRetainUC :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1501
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_163

    move v1, v2

    :cond_163
    if-eqz v1, :cond_1fe

    .line 1502
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvBandIndi(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-nez p1, :cond_1fe

    .line 1503
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1504
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhysicalChannelConfigList()Ljava/util/List;

    move-result-object p1

    .line 1505
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsQc(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_19f

    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 1506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_19f

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-nez p1, :cond_1cd

    :cond_19f
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1508
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_1cd

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1b8

    goto :goto_1cd

    .line 1512
    :cond_1b8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_1f3

    .line 1513
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "5G UC: NRCA(SA) idle + primary band same, retain icon"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1514
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto :goto_1f3

    .line 1509
    :cond_1cd
    :goto_1cd
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5G UC: SA connected OR idle + primary band change, update icon RRCstate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1510
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1511
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1516
    :cond_1f3
    :goto_1f3
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V

    goto/16 :goto_4b2

    .line 1518
    :cond_1fe
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_242

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1519
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    if-eq p1, v0, :cond_226

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    if-ne p1, v0, :cond_242

    :cond_226
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v3

    cmp-long p1, v0, v3

    if-eqz p1, :cond_242

    .line 1521
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "5G UC: NSA idle, reset icon based on ULI on LTE anchor change"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1522
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetRetainUC(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1524
    :cond_242
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNewCellId(Lcom/android/internal/telephony/NetworkTypeController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V

    .line 1525
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1481
    :pswitch_252
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1482
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    goto/16 :goto_4b2

    .line 1445
    :pswitch_261
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1448
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsDeviceIdleMode changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1450
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_2ac

    .line 1451
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since device is in idle mode."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1452
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1454
    :cond_2ac
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1358
    :pswitch_2b3
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1459
    :pswitch_2ba
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->handlePcoData(Landroid/os/AsyncResult;)V

    goto/16 :goto_4b2

    .line 1361
    :pswitch_2c3
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_2d4

    .line 1362
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1365
    :cond_2d4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1344
    :pswitch_2db
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1345
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1347
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetCidFromCellIdentity(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V

    goto/16 :goto_4b2

    .line 1427
    :pswitch_2f8
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since radio is off or unavailable."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1428
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1431
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1434
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1435
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1436
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1439
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1440
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRilNrIconType(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1442
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_4b2

    .line 1413
    :pswitch_32e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary timer expired for state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1414
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1415
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 1417
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_383

    .line 1418
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inter-RAT timer expired and moved to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1419
    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1418
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1420
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1423
    :cond_383
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1424
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1404
    :pswitch_38f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary timer expired for state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1406
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->isUwDisqualifiedAndHandled()Z

    move-result v0

    if-eqz v0, :cond_3b3

    goto/16 :goto_4b2

    .line 1410
    :cond_3b3
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_4b2

    .line 1395
    :pswitch_3be
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1396
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since carrier configurations changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1397
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1399
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1401
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1376
    :pswitch_3db
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1379
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPhysicalChannelConfigOn changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1381
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_429

    .line 1383
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since physical channel config indications are off."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1386
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_424

    .line 1387
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1390
    :cond_424
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1392
    :cond_429
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_4b2

    .line 1369
    :pswitch_430
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1370
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1372
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_4b2

    .line 1335
    :pswitch_447
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers on state machine quitting."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1336
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1337
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1338
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    goto :goto_4b2

    .line 1330
    :pswitch_45e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since preferred network mode changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1331
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1332
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_4b2

    .line 1472
    :cond_470
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmImsQci(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    if-eq v0, p1, :cond_4b2

    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImsQci: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmImsQci(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmImsQci(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1476
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleVolteCall(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_4b2
    :goto_4b2
    :pswitch_4b2
    return v2

    nop

    :pswitch_data_4b4
    .packed-switch 0x0
        :pswitch_45e
        :pswitch_447
        :pswitch_4b2
        :pswitch_4b2
        :pswitch_4b2
        :pswitch_430
        :pswitch_3db
        :pswitch_3be
        :pswitch_38f
        :pswitch_32e
        :pswitch_2f8
        :pswitch_45e
        :pswitch_2db
        :pswitch_2c3
        :pswitch_2ba
        :pswitch_2b3
        :pswitch_4b2
        :pswitch_261
        :pswitch_252
        :pswitch_f1
        :pswitch_64
        :pswitch_5f
        :pswitch_42
    .end packed-switch
.end method
