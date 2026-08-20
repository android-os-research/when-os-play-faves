.class Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;
.super Ljava/lang/Thread;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallReaderThread"
.end annotation


# instance fields
.field private final blacklist mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    const-string v0, "ImsRttTextHandler"

    :cond_2
    :goto_2
    const/16 v1, 0x270f

    .line 82
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v2}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_a} :catch_76
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_66

    if-nez v2, :cond_1b

    const-string v2, "RttReaderThread - Stream closed unexpectedly. Attempt to reinitialize."

    .line 93
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7b

    .line 98
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_2

    .line 102
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallReaderThread - FdFromInCall: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v3}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", FdToInCall: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 103
    invoke-virtual {v3}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->-$$Nest$fgetmReadNotifier(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->-$$Nest$fgetmReadNotifier(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :catch_66
    move-exception v2

    const-string v3, "RttReaderThread - IOException encountered reading from in-call: "

    .line 87
    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7b

    :catch_76
    const-string p0, "RttReaderThread - Thread interrupted. Finishing."

    .line 84
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-void
.end method
