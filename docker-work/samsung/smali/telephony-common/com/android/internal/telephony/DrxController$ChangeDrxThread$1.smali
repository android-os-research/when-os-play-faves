.class Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 203
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_b

    goto :goto_5e

    .line 205
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    iget-object p1, p1, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v1, "CHANGE_DRX_COMPLETE"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    monitor-enter p1

    .line 207
    :try_start_17
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    iget-object v1, v1, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGE_DRX_COMPLETE - mResult: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-static {v4}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_47

    const-string v0, "(Success)"

    goto :goto_49

    :cond_47
    const-string v0, "(Fail)"

    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->-$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 211
    monitor-exit p1

    :goto_5e
    return-void

    :catchall_5f
    move-exception p0

    monitor-exit p1
    :try_end_61
    .catchall {:try_start_17 .. :try_end_61} :catchall_5f

    throw p0
.end method
