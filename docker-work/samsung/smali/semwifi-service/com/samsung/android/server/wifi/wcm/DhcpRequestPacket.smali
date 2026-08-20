.class Lcom/samsung/android/server/wifi/wcm/DhcpRequestPacket;
.super Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.source "SemDhcpPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .registers 16

    .line 1498
    sget-object v5, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v5

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1512
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1514
    sget-object v3, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    sget-object v4, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcast:Z

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1516
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 5

    const/16 v0, 0x35

    const/4 v1, 0x3

    .line 1524
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1525
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1526
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v1, 0x32

    .line 1527
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1529
    :cond_20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/16 v0, 0x36

    .line 1530
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1532
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x37

    .line 1533
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1534
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1502
    invoke-super {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " REQUEST, desired IP "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from host \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', param list length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    if-nez p0, :cond_2b

    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    array-length p0, p0

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
