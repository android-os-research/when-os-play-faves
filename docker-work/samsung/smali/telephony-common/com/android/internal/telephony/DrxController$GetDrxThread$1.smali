.class Lcom/android/internal/telephony/DrxController$GetDrxThread$1;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DrxController$GetDrxThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DrxController$GetDrxThread;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 320
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_b

    goto :goto_65

    .line 323
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object p1, p1, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v1, "GET_DRX_CN_COMPLETE"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    monitor-enter p1

    .line 325
    :try_start_17
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    goto :goto_27

    :cond_25
    sget v2, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I

    :goto_27
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;I)V

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object v1, v1, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_DRX_CN_COMPLETE - mResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4d

    const-string v0, "(Success)"

    goto :goto_4f

    :cond_4d
    const-string v0, "(Fail)"

    :goto_4f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$GetDrxThread;Z)V

    .line 328
    iget-object p0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 329
    monitor-exit p1

    :goto_65
    return-void

    :catchall_66
    move-exception p0

    monitor-exit p1
    :try_end_68
    .catchall {:try_start_17 .. :try_end_68} :catchall_66

    throw p0
.end method
