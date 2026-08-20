.class public Lcom/android/internal/util/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private blacklist mDstState:Lcom/android/internal/util/IState;

.field private blacklist mInfo:Ljava/lang/String;

.field private blacklist mOrgState:Lcom/android/internal/util/IState;

.field private blacklist mSm:Lcom/android/internal/util/StateMachine;

.field private blacklist mState:Lcom/android/internal/util/IState;

.field private blacklist mTime:J

.field private blacklist mWhat:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 7
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 474
    return-void
.end method


# virtual methods
.method public blacklist getDestState()Lcom/android/internal/util/IState;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public blacklist getInfo()Ljava/lang/String;
    .registers 2

    .line 511
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalState()Lcom/android/internal/util/IState;
    .registers 2

    .line 532
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public blacklist getState()Lcom/android/internal/util/IState;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public blacklist getTime()J
    .registers 3

    .line 497
    iget-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    return-wide v0
.end method

.method public blacklist getWhat()J
    .registers 3

    .line 504
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 540
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 541
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v2, " processed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    const-string v3, "<null>"

    if-nez v2, :cond_3f

    move-object v2, v3

    goto :goto_43

    :cond_3f
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v2, " org="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    if-nez v2, :cond_51

    move-object v2, v3

    goto :goto_55

    :cond_51
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v2, " dest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    if-nez v2, :cond_62

    goto :goto_66

    :cond_62
    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v2, " what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v2, :cond_79

    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    :cond_79
    const-string v2, ""

    .line 550
    .local v2, "what":Ljava/lang/String;
    :goto_7b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 551
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const-string v3, "(0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d

    .line 556
    :cond_9a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_9d
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 559
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 9
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "dstState"    # Lcom/android/internal/util/IState;

    .line 484
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$LogRec;->mSm:Lcom/android/internal/util/StateMachine;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mTime:J

    .line 486
    if-eqz p2, :cond_d

    iget v0, p2, Landroid/os/Message;->what:I

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRec;->mWhat:I

    .line 487
    iput-object p3, p0, Lcom/android/internal/util/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 488
    iput-object p4, p0, Lcom/android/internal/util/StateMachine$LogRec;->mState:Lcom/android/internal/util/IState;

    .line 489
    iput-object p5, p0, Lcom/android/internal/util/StateMachine$LogRec;->mOrgState:Lcom/android/internal/util/IState;

    .line 490
    iput-object p6, p0, Lcom/android/internal/util/StateMachine$LogRec;->mDstState:Lcom/android/internal/util/IState;

    .line 491
    return-void
.end method
