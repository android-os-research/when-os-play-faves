.class Lcom/android/commands/bmgr/Bmgr$1;
.super Landroid/app/backup/ISelectBackupTransportCallback$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/bmgr/Bmgr;->doTransportByComponent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/bmgr/Bmgr;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/commands/bmgr/Bmgr;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/bmgr/Bmgr;

    .line 581
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$1;->this$0:Lcom/android/commands/bmgr/Bmgr;

    iput-object p2, p0, Lcom/android/commands/bmgr/Bmgr$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 590
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 592
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "transportName"    # Ljava/lang/String;

    .line 584
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success. Selected transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 586
    return-void
.end method
