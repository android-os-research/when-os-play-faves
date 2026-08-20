.class Lcom/android/internal/telephony/Am$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field private blacklist mFinished:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/Am;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$IntentReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;)V

    return-void
.end method


# virtual methods
.method public blacklist performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Broadcast completed: result="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2c

    .line 275
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

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extras: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    :cond_42
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    monitor-enter p0

    const/4 p1, 0x1

    .line 279
    :try_start_49
    iput-boolean p1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 281
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public declared-synchronized blacklist waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 286
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_d
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 290
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    goto :goto_14

    :catch_d
    move-exception v0

    .line 288
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
