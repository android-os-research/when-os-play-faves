.class public Lcom/android/commands/monkey/MonkeyThrottleEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyThrottleEvent.java"


# instance fields
.field private mThrottle:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "throttle"    # J

    .line 32
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 33
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    .line 34
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 9
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 39
    const/4 v0, 0x1

    if-le p3, v0, :cond_23

    .line 40
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 43
    :cond_23
    :try_start_23
    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyThrottleEvent;->mThrottle:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 47
    nop

    .line 49
    return v0

    .line 44
    :catch_2a
    move-exception v0

    .line 45
    .local v0, "e1":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v2, "** Monkey interrupted in sleep."

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    return v1
.end method
