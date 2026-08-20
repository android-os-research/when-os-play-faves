.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;
.super Landroid/telephony/PhoneStateListener;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 14

    .line 479
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "swlan0"

    goto :goto_13

    :cond_11
    const-string v0, "wlan0"

    .line 484
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", networktype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SemWifiApBroadcastReceiver"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_65

    .line 486
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 487
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 488
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 489
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 490
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    goto :goto_db

    :cond_65
    if-nez p1, :cond_db

    .line 492
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 493
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide p1

    .line 494
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v1

    .line 495
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v3

    .line 496
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 497
    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmTempMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 498
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    add-long/2addr v1, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileTxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    add-long/2addr v3, v7

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountMobileRxBytes(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 501
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmStartTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 502
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    add-long/2addr p1, v0

    invoke-static {v2, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputmAmountTimeOfMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;J)V

    .line 503
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbUseMobileData(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    .line 504
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fputbIsFirstCall(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Z)V

    :cond_db
    :goto_db
    return-void
.end method
