.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;
.super Landroid/os/Handler;
.source "SemTelephonySmsNSRI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_bf

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    goto/16 :goto_ed

    :cond_10
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_NSRI_SUSIM_STATE_NOTI]"

    .line 131
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 133
    :try_start_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const-string v2, "SemTelephonySmsNSRI"

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NSRI_SMS] ar.result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_44

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_4b

    :cond_44
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Encryp Fail!!"

    .line 139
    invoke-static {p1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_4b
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v0

    goto/16 :goto_ed

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1a .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_DECRYPT_SMS_INTXSIDE]"

    .line 114
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 116
    :try_start_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 119
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_77

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_7e

    :cond_77
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] DecryptTx Fail!!"

    .line 122
    invoke-static {p1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_7e
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v0

    goto :goto_ed

    :catchall_8a
    move-exception p0

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_8a

    throw p0

    :cond_8d
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_DECRYPT_SMS]"

    .line 96
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 99
    :try_start_97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 102
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a9

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_b0

    :cond_a9
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Decrypt Fail!!"

    .line 105
    invoke-static {p1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_b0
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    monitor-exit v0

    goto :goto_ed

    :catchall_bc
    move-exception p0

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_97 .. :try_end_be} :catchall_bc

    throw p0

    :cond_bf
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_ENCRYPT_SMS]"

    .line 76
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 79
    :try_start_c9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 84
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_db

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_e2

    :cond_db
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Encryp Fail!!"

    .line 87
    invoke-static {p1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_e2
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v0

    :goto_ed
    return-void

    :catchall_ee
    move-exception p0

    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_c9 .. :try_end_f0} :catchall_ee

    throw p0
.end method
