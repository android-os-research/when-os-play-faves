.class public Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
.super Landroid/os/IProgressListener$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressWaiter"
.end annotation


# instance fields
.field public final mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 3

    .line 479
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 480
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public waitForFinish(J)Z
    .registers 4

    .line 495
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 497
    :catch_9
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Thread interrupted unexpectedly."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
