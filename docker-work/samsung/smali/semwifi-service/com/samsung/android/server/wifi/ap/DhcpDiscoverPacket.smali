.class Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;
.super Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
.source "SemDhcpPacket.java"


# instance fields
.field final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[BZLjava/net/Inet4Address;)V
    .registers 16

    .line 1403
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

    .line 1404
    iput-object p6, p0, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;->mSrcIp:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1417
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1418
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/DhcpDiscoverPacket;->mSrcIp:Ljava/net/Inet4Address;

    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1420
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/4 v1, 0x1

    .line 1428
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1430
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 1431
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mRequestedParams:[B

    const/16 v0, 0x37

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1432
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1408
    invoke-super {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " DISCOVER "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    if-eqz p0, :cond_18

    const-string p0, "broadcast "

    goto :goto_1a

    :cond_18
    const-string p0, "unicast "

    :goto_1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
