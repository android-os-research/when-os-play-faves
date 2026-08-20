.class public Lcom/samsung/android/server/wifi/util/SemWifiHandler;
.super Landroid/os/Handler;
.source "SemWifiHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SemWifiHandler"


# instance fields
.field private mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 4

    .line 36
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemWifiHandler."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mTag:Ljava/lang/String;

    return-void
.end method

.method private getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    if-nez v0, :cond_10

    .line 44
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->makeLog(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    .line 46
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->getOrInitLog()Lcom/samsung/android/server/wifi/util/SemWifiLog;

    move-result-object p0

    const-string v0, "Received message=% sendingUid=%"

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    int-to-long v0, v0

    .line 52
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->sendingUid:I

    int-to-long v0, p1

    .line 53
    invoke-interface {p0, v0, v1}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->c(J)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;->flush()V

    return-void
.end method

.method public setSemWifiLog(Lcom/samsung/android/server/wifi/util/SemWifiLog;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemWifiHandler;->mLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    return-void
.end method
