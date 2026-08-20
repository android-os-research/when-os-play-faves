.class final Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;
.super Landroid/os/Handler;
.source "SemMobileWipsDnsRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a6

    .line 122
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dnsReq"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    return-void

    .line 127
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    return-void

    .line 131
    :cond_1c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;

    .line 133
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 135
    :cond_3e
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide v3, 0x3ff3333333333333L    # 1.2

    .line 138
    :try_start_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeoutOneQuery"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 139
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;

    .line 141
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->getResponse()[B

    move-result-object v3

    if-nez v3, :cond_83

    .line 142
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    .line 145
    :cond_83
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->getResponse()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_8e} :catch_9f

    goto :goto_6d

    .line 158
    :cond_8f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$ServiceHandler;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dnsMac"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;->sendDnsResponse(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_a6

    .line 154
    :catch_9f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_a6
    :goto_a6
    return-void
.end method
