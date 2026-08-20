.class Lcom/android/internal/telephony/NetworkScanRequestTracker$1;
.super Landroid/os/Handler;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Event :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRequestTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    goto/16 :goto_8f

    .line 109
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdeleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_8f

    .line 103
    :pswitch_32
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$minterruptScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    goto :goto_8f

    .line 99
    :pswitch_40
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoInterruptScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    goto :goto_8f

    .line 95
    :pswitch_4c
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mstopScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    goto :goto_8f

    .line 91
    :pswitch_5a
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoStopScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    goto :goto_8f

    .line 87
    :pswitch_66
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mreceiveResult(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    goto :goto_8f

    .line 83
    :pswitch_74
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mstartScanDone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    goto :goto_8f

    .line 79
    :pswitch_82
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$fgetmScheduler(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->-$$Nest$mdoStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    :goto_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_82
        :pswitch_74
        :pswitch_66
        :pswitch_5a
        :pswitch_4c
        :pswitch_40
        :pswitch_32
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
