.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;
.super Ljava/lang/Object;
.source "SemWifiTcpMonitorInfo.java"


# instance fields
.field actionDuration:I

.field actionResult:I

.field chatRetrans:I

.field closing:I

.field date:Ljava/lang/String;

.field dnsBlockCount:I

.field establishAll:I

.field establishIPv4:I

.field establishIPv6:I

.field fin:I

.field laskAck:I

.field linkSpeed:I

.field loss:D

.field maxSynCount:I

.field packageName:Ljava/lang/String;

.field receivingQueue:I

.field receivingQueueCount:I

.field result:Ljava/lang/String;

.field retransCount:I

.field retransmission:I

.field rssi:I

.field rx:J

.field syn:I

.field synBlockCount:I

.field synBlockNoEstablish:I

.field tx:J

.field uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 62
    iput-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    .line 38
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    .line 41
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    .line 42
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    .line 43
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    .line 44
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    .line 45
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    .line 46
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->fin:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->fin:I

    .line 47
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->closing:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->closing:I

    .line 48
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    .line 49
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    .line 50
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    .line 51
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    .line 52
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    .line 53
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    .line 54
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 55
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 56
    iget v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    .line 57
    iget p1, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [UID]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [PN]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", [R]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->result:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", [E]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishAll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [E4]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [E6]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->establishIPv6:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [S]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->syn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransmission:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [F]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->fin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [C]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->closing:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [LA]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->laskAck:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [TX]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->tx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", [RX]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rx:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", [LO]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->loss:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [LI]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->linkSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [AD]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [AR]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [RQ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [CR]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->chatRetrans:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [RC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->retransCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [SBC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [MSC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->maxSynCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [SBNEC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->synBlockNoEstablish:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [RQC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->receivingQueueCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [DBC]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->dnsBlockCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
