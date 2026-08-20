.class Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DefaultState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 523
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_a6

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage: unhandled message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 544
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getWhatToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 545
    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 546
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_a0

    .line 547
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "---- Dumping InboundSmsHandler ----"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getLogRecCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->getLogRecSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x14

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_6a
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getLogRecSize()I

    move-result v0

    if-ge p1, v0, :cond_98

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rec[%d]: %s\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/StateMachine;->getLogRec(I)Lcom/android/internal/telephony/StateMachine$LogRec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6a

    .line 554
    :cond_98
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string p1, "---- Dumped InboundSmsHandler ----"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_d6

    .line 560
    :cond_a0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_d6

    .line 526
    :cond_a6
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    goto :goto_d6

    .line 530
    :cond_b0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 531
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    const-string v1, "InboundSmsHandler"

    if-nez p1, :cond_c8

    const-string p1, "Successfully wrote SMS-PP message to UICC"

    .line 532
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_d6

    :cond_c8
    const-string v4, "Failed to write SMS-PP message to UICC"

    .line 535
    invoke-static {v1, v4, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0xff

    invoke-interface {p0, v3, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    :goto_d6
    return v2
.end method
