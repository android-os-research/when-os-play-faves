.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;
.super Landroid/os/Handler;
.source "SemTelephonyMessengerNSRI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    goto :goto_47

    :cond_7
    const-string v0, "SemTelephonyMessengerNSRI"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_Messenger] EVENT_MSG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    monitor-enter v0

    .line 77
    :try_start_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 79
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_34

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v1, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;[B)V

    goto :goto_3b

    :cond_34
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string v1, "[NSRI_Messenger] Encryp Fail!!"

    .line 82
    invoke-static {p1, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_3b
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;Z)V

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v0

    :goto_47
    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_22 .. :try_end_4a} :catchall_48

    throw p0
.end method
