.class public Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;
.super Lcom/android/internal/util/AsyncChannel;
.source "SemWifiAsyncChannel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemWifiAsyncChannel"


# instance fields
.field private mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiAsyncChannel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mTag:Ljava/lang/String;

    return-void
.end method

.method private getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    if-nez v0, :cond_10

    .line 45
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 47
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    return-object p0
.end method


# virtual methods
.method public replyToMessage(Landroid/os/Message;Landroid/os/Message;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    const-string v1, "replyToMessage recvdMessage=% sendingUid=% sentMessage=%"

    .line 72
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 73
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    int-to-long v1, v1

    .line 74
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 75
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    const-string v1, "sendMessage message=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 58
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;
    .registers 5

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    const-string v1, "sendMessageSynchronously.send message=%"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    int-to-long v1, v1

    .line 89
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object p0

    const-string v0, "sendMessageSynchronously.recv message=% sendingUid=%"

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    int-to-long v0, v0

    .line 94
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->sendingUid:I

    int-to-long v0, v0

    .line 95
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    :cond_35
    return-object p1
.end method

.method public setSemWifiLog(Lcom/samsung/android/server/wifi/util/SemWifiLog;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiAsyncChannel;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    return-void
.end method
