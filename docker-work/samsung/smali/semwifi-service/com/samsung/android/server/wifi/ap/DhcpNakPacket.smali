.class Lcom/samsung/android/server/wifi/ap/DhcpNakPacket;
.super Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
.source "SemDhcpPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZ)V
    .registers 15

    .line 1647
    sget-object v5, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v5

    move-object v4, v5

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1660
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1662
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 1665
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move-object v3, v4

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1666
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/4 v1, 0x6

    .line 1674
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMessage:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 1677
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1652
    invoke-super {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NAK, reason "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mMessage:Ljava/lang/String;

    if-nez p0, :cond_17

    const-string p0, "(none)"

    :cond_17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
