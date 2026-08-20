.class Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;
.super Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.source "SemDhcpPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 18

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p6

    move-object/from16 v4, p7

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    move v8, p3

    .line 1447
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    move-object v1, p4

    .line 1448
    iput-object v1, v0, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1470
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1471
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcast:Z

    if-eqz v9, :cond_d

    sget-object v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    :goto_f
    move-object v3, v1

    if-eqz v9, :cond_15

    .line 1472
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    :goto_17
    move-object v4, v1

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    .line 1474
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1476
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/4 v1, 0x2

    .line 1484
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1487
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addCommonServerTlvs(Ljava/nio/ByteBuffer;)V

    .line 1488
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1452
    invoke-super {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    const-string v2, ", DNS servers: "

    if-eqz v1, :cond_2f

    .line 1456
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 1461
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OFFER, ip "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mask "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", gateways "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " lease time "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", domain "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
