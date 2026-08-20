.class public Lcom/android/internal/telephony/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private blacklist mDstState:Lcom/android/internal/telephony/IState;

.field private blacklist mInfo:Ljava/lang/String;

.field private blacklist mOrgState:Lcom/android/internal/telephony/IState;

.field private blacklist mSm:Lcom/android/internal/telephony/StateMachine;

.field private blacklist mState:Lcom/android/internal/telephony/IState;

.field private blacklist mTime:J

.field private blacklist mWhat:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V
    .registers 7

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/StateMachine$LogRec;->update(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V

    return-void
.end method


# virtual methods
.method public blacklist getDestState()Lcom/android/internal/telephony/IState;
    .registers 1

    .line 525
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mDstState:Lcom/android/internal/telephony/IState;

    return-object p0
.end method

.method public blacklist getInfo()Ljava/lang/String;
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOriginalState()Lcom/android/internal/telephony/IState;
    .registers 1

    .line 532
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mOrgState:Lcom/android/internal/telephony/IState;

    return-object p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/IState;
    .registers 1

    .line 518
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mState:Lcom/android/internal/telephony/IState;

    return-object p0
.end method

.method public blacklist getTime()J
    .registers 3

    .line 497
    iget-wide v0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mTime:J

    return-wide v0
.end method

.method public blacklist getWhat()J
    .registers 3

    .line 504
    iget p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mWhat:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time="

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 540
    iget-wide v2, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

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

    const-string v1, "%tm-%td %tH:%tM:%tS.%tL"

    .line 541
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processed="

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mState:Lcom/android/internal/telephony/IState;

    const-string v2, "<null>"

    if-nez v1, :cond_3e

    move-object v1, v2

    goto :goto_42

    :cond_3e
    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " org="

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mOrgState:Lcom/android/internal/telephony/IState;

    if-nez v1, :cond_50

    move-object v1, v2

    goto :goto_54

    :cond_50
    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dest="

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mDstState:Lcom/android/internal/telephony/IState;

    if-nez v1, :cond_61

    goto :goto_65

    :cond_61
    invoke-interface {v1}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " what="

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mSm:Lcom/android/internal/telephony/StateMachine;

    if-eqz v1, :cond_78

    iget v2, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    :cond_78
    const-string v1, ""

    .line 550
    :goto_7a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 551
    iget v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mWhat:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 556
    :cond_99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_9c
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ae

    const-string v1, " "

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V
    .registers 9

    .line 484
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mSm:Lcom/android/internal/telephony/StateMachine;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mTime:J

    if-eqz p2, :cond_d

    .line 486
    iget p1, p2, Landroid/os/Message;->what:I

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput p1, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mWhat:I

    .line 487
    iput-object p3, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 488
    iput-object p4, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mState:Lcom/android/internal/telephony/IState;

    .line 489
    iput-object p5, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mOrgState:Lcom/android/internal/telephony/IState;

    .line 490
    iput-object p6, p0, Lcom/android/internal/telephony/StateMachine$LogRec;->mDstState:Lcom/android/internal/telephony/IState;

    return-void
.end method
