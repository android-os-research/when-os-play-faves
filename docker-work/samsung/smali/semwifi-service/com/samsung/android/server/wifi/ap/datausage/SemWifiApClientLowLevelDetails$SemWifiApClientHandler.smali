.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails$SemWifiApClientHandler;
.super Landroid/os/Handler;
.source "SemWifiApClientLowLevelDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemWifiApClientHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 287
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 292
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 293
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    goto :goto_4c

    .line 295
    :cond_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;

    .line 296
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->setClientIsDataPauseByTimeLimit(Z)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getSemWifiApEbf()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbf;->pauseInternet(Ljava/lang/String;J)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->stopTheTiming()V

    .line 299
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time Limit timer is reached and internet is pause for device MAC :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->getClientMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " client details = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientLowLevelDetails;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void
.end method
