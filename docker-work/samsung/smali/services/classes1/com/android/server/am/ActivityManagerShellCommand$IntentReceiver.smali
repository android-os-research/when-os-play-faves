.class public final Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentReceiver"
.end annotation


# instance fields
.field public mFinished:Z

.field public final mPw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    .line 826
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 827
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8

    .line 833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Broadcast completed: result="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2c

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data=\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2c
    if-eqz p4, :cond_42

    .line 835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extras: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    :cond_42
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 838
    monitor-enter p0

    const/4 p1, 0x1

    .line 839
    :try_start_4e
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 840
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 841
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 846
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_d
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 850
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_14

    :catch_d
    move-exception v0

    .line 848
    :try_start_e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_b

    :goto_14
    monitor-exit p0

    throw v0
.end method
