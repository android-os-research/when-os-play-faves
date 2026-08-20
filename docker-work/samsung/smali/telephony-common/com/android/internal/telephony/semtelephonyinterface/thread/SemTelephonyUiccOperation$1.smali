.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;
.super Landroid/os/Handler;
.source "SemTelephonyUiccOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Landroid/os/Looper;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_b

    goto :goto_57

    :cond_b
    const-string v1, "SemTelephonyUiccOperation"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UICC operation complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    monitor-enter p1

    .line 58
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Z)V

    .line 59
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_35

    .line 60
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Ljava/lang/Object;)V

    .line 61
    :cond_35
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_51

    const-string v1, "SemTelephonyUiccOperation"

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_51
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    monitor-exit p1

    :goto_57
    return-void

    :catchall_58
    move-exception p0

    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_26 .. :try_end_5a} :catchall_58

    throw p0
.end method
