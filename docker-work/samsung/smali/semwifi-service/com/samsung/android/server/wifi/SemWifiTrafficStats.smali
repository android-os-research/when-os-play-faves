.class public Lcom/samsung/android/server/wifi/SemWifiTrafficStats;
.super Ljava/lang/Object;
.source "SemWifiTrafficStats.java"


# instance fields
.field public rxBytes:J

.field public rxBytesTopActivity:J

.field public rxPackets:J

.field public rxPacketsTopActivity:J

.field public txBytes:J

.field public txBytesTopActivity:J

.field public txPackets:J

.field public txPacketsTopActivity:J

.field public uidTopActivity:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 75
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 76
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 77
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 78
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 79
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 80
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 81
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_29

    .line 87
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 88
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 89
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 90
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 91
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPacketsTopActivity:J

    .line 92
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPacketsTopActivity:J

    .line 93
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 94
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 95
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->uidTopActivity:I

    :cond_29
    return-void
.end method
