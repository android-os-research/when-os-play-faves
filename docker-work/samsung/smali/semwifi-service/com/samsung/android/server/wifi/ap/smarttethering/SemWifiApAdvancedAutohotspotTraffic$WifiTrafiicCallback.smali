.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;
.super Ljava/lang/Object;
.source "SemWifiApAdvancedAutohotspotTraffic.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiTrafiicCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)V

    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 8

    .line 103
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    add-long/2addr v0, v2

    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetmlock(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 105
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetcircularBufferIndex(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)I

    move-result v2

    if-nez v2, :cond_2b

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2b

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_2b

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fputmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;J)V

    .line 107
    monitor-exit p1

    return-void

    .line 109
    :cond_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_72

    .line 110
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetmCountPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fputmCountPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;I)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatedTrafficStats actualCurrentBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mPacketCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fgetmCountPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$mupdateCircularBuffer(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;J)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->-$$Nest$fputmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;J)V

    return-void

    :catchall_72
    move-exception p0

    .line 109
    :try_start_73
    monitor-exit p1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method
