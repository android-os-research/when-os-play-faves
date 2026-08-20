.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;
.super Landroid/os/Handler;
.source "SemTelephonyCommendToRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_38

    :cond_6
    const-string v0, "SemTelephonyCommendToRIL"

    const-string v2, "EVENT_GET_RIL_INFO"

    .line 67
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    monitor-enter v0

    .line 70
    :try_start_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 71
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    .line 72
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;Ljava/lang/String;)V

    goto :goto_2d

    .line 75
    :cond_27
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;Ljava/lang/String;)V

    .line 77
    :goto_2d
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;Z)V

    .line 78
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyCommendToRIL;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    monitor-exit v0

    :goto_38
    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_39

    throw p0
.end method
