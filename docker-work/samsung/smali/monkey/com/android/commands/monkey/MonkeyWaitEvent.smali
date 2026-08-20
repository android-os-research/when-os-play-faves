.class public Lcom/android/commands/monkey/MonkeyWaitEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyWaitEvent.java"


# instance fields
.field private mWaitTime:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "waitTime"    # J

    .line 30
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 31
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyWaitEvent;->mWaitTime:J

    .line 32
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 9
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 36
    const/4 v0, 0x1

    if-le p3, v0, :cond_23

    .line 37
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait Event for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeyWaitEvent;->mWaitTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 40
    :cond_23
    :try_start_23
    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyWaitEvent;->mWaitTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 44
    nop

    .line 46
    return v0

    .line 41
    :catch_2a
    move-exception v0

    .line 42
    .local v0, "e1":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Monkey interrupted in sleep."

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    return v1
.end method
